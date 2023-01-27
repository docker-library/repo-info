#!/usr/bin/env perl
use Mojo::Base -strict, -signatures;

use Bashbrew::RemoteImageRef;
use Bashbrew::RegistryUserAgent;

my $ua = Bashbrew::RegistryUserAgent->new;
$ua->hubProxy($ENV{DOCKERHUB_PUBLIC_PROXY} || die 'missing DOCKERHUB_PUBLIC_PROXY env (https://github.com/tianon/dockerhub-public-proxy)');

# this isn't correct for Windows images, but ours usually use "SHELL" anyhow
my @defaultShell = ('/bin/sh', '-c');

sub get_blob_headers_p ($ref) {
	die "blob missing digest: $ref" unless $ref->digest;

	state %headers;
	return Mojo::Promise->resolve($headers{$ref->digest}) if $headers{$ref->digest};

	return $ua->retry_simple_req_p(head => $ua->ref_url($ref, 'blobs'))->then(sub ($headersTx) {
		if (my $error = $headersTx->error) {
			die "failed to get blob headers for $ref" . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
		}
		return ($headers{$ref->digest} = $headersTx->res->headers);
	});
}

sub get_foreign_headers_p ($urls) {
	my $url = $urls->[0];
	state %headers;
	return Mojo::Promise->resolve($headers{$url}) if $headers{$url};

	return $ua->retry_simple_req_p(head => $url)->then(sub ($headersTx) {
		if (my $error = $headersTx->error) {
			die "failed to get headers for $url: " . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
		}
		return ($headers{$url} = $headersTx->res->headers);
	});
}

sub parse_manifest_v1_data_p ($ref, $manifest) {
	my $data = {
		manifestVersion => Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_V1,
		manifest => $manifest,
		imageId => undef,
		platform => {},
		dockerVersion => undef,
		entrypoint => undef,
		defaultCommand => undef,
		layers => [],
		commands => [],
	};

	my %seenBlob;
	for my $fsLayer (@{ $manifest->{fsLayers} // [] }) {
		my $blob = $fsLayer->{blobSum};
		next unless $blob;

		next if $seenBlob{$blob};
		$seenBlob{$blob} = 1;

		push @{ $data->{layers} }, {
			digest => $blob,
		};
	}

	for my $history (@{ $manifest->{history} // [] }) {
		next unless $history->{v1Compatibility};

		my $v1 = Mojo::Util::encode('UTF-8', $history->{v1Compatibility});

		my $json = Mojo::JSON::decode_json($v1);

		$data->{dockerVersion} //= $json->{docker_version};
		$data->{platform}{os} //= $json->{os};
		$data->{platform}{architecture} //= $json->{architecture};
		$data->{entrypoint} //= $json->{config}{Entrypoint};
		$data->{defaultCommand} //= $json->{config}{Cmd};
		$data->{imageId} //= $json->{id};

		# "history" in v1 is in reverse order (hence "unshift" instead of "push")
		unshift @{ $data->{commands} }, {
			created => $json->{created},
			command => $json->{container_config}{Cmd},
		};
	}

	return Mojo::Promise->resolve($data);
}

sub parse_manifest_v2_data_p ($ref, $manifest) {
	my $configDigest = $manifest->{config}{digest};

	return $ua->get_blob_p($ref->clone->digest($configDigest))->then(sub ($config) {
		return {
			manifestVersion => Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_V2,
			manifest => $manifest,
			imageId => $configDigest,
			config => $config,
			platform => {
				os => $config->{os},
				architecture => $config->{architecture},
			},
			dockerVersion => $config->{docker_version},
			entrypoint => $config->{config}{Entrypoint},
			defaultCommand => $config->{config}{Cmd},
			shell => $config->{config}{Shell},
			layers => $manifest->{layers} // [],
			commands => $config->{history} // [],
		};
	});
}

sub get_image_data_p ($ref) {
	return $ua->get_manifest_p($ref)->then(sub ($manifestData = undef) {
		return undef unless $manifestData;

		my $data = {
			repo => $ref->docker_name,
			tag => $ref->tag,
			ref => $ref,
			digest => $manifestData->{digest},
			images => [],
		};

		my @imageDataPromises;

		# https://docs.docker.com/registry/spec/manifest-v2-1/
		if ($manifestData->{mediaType} eq Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_V1) {
			push @imageDataPromises, sub { parse_manifest_v1_data_p($ref, $manifestData->{manifest}) };
		}
		# https://docs.docker.com/registry/spec/manifest-v2-2/
		elsif ($manifestData->{mediaType} eq Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_V2) {
			push @imageDataPromises, sub { parse_manifest_v2_data_p($ref, $manifestData->{manifest}) };
		}
		elsif ($manifestData->{mediaType} eq Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_LIST) {
			$data->{manifest} = $manifestData->{manifest};
			$data->{manifestVersion} = $manifestData->{mediaType};

			for my $sub (@{ $manifestData->{manifest}{manifests} // [] }) {
				my $digest = $sub->{digest};
				die "sub-manifest missing digest!" unless $digest;

				my $subRef = $ref->clone->digest($digest);
				push @imageDataPromises, sub { $ua->get_manifest_p($subRef)->then(sub ($subManifest) {
					die "sub-manifest $digest does not exist!" unless $subManifest;
					die "bad sub-manifest digest! ('$digest' vs '$subManifest->{digest}')" unless $digest eq $subManifest->{digest};

					my $subDataHandler = sub ($subData) {
						$subData->{ref} = $subRef;
						$subData->{digest} = $digest;
						$subData->{platform} = $sub->{platform};
						return $subData;
					};
					if ($sub->{mediaType} eq Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_V1) {
						return parse_manifest_v1_data_p($subRef, $subManifest->{manifest})->then($subDataHandler);
					}
					elsif ($sub->{mediaType} eq Bashbrew::RegistryUserAgent::MEDIA_MANIFEST_V2) {
						return parse_manifest_v2_data_p($subRef, $subManifest->{manifest})->then($subDataHandler);
					}
					else {
						die "unknown sub-manifest mediaType $manifestData->{mediaType} for $digest";
					}
				}) };
			}
		}
		else {
			die "unknown mediaType $manifestData->{mediaType}";
		}

		# Mojo::Promise->map can't handle empty promises
		push @imageDataPromises, sub { Mojo::Promise->resolve } unless @imageDataPromises;

		return Mojo::Promise->map({ concurrency => 1 }, sub { $_->() }, @imageDataPromises)->then(sub (@images) {
			@images = map { @$_ } @images;
			my @layerDataPromises;
			for my $image (@images) {
				$image->{layers} //= [];
				for my $layer (@{ $image->{layers} }) {
					if (defined $layer->{mediaType} && $layer->{mediaType} eq Bashbrew::RegistryUserAgent::MEDIA_FOREIGN_LAYER) {
						if (defined $layer->{urls} && @{ $layer->{urls} }) {
							push @layerDataPromises, sub { get_foreign_headers_p($layer->{urls})->then(sub ($headers) {
								$layer->{size} //= $headers->content_length;
								$layer->{lastModified} //= $headers->last_modified;
								return $layer;
							}) };
						}
					}
					else {
						push @layerDataPromises, sub { get_blob_headers_p($ref->clone->digest($layer->{digest}))->then(sub ($headers) {
							$layer->{size} //= $headers->content_length;
							$layer->{mediaType} //= $headers->content_type;
							$layer->{lastModified} //= $headers->last_modified;
							return $layer;
						}) };
					}
				}
			}
			return @images unless @layerDataPromises;
			return Mojo::Promise->map({ concurrency => 1 }, sub { $_->() }, @layerDataPromises)->then(sub (@) {
				return @images;
			});
		})->then(sub (@images) {
			for my $image (@images) {
				$image->{platform} //= {};

				$image->{size} = 0;
				for my $layer (@{ $image->{layers} }) {
					$image->{size} += $layer->{size} if defined $layer->{size};
				}

				$image->{commands} //= [];
				for my $command (@{ $image->{commands} }) {
					$command->{command} //= [ $command->{created_by} ];
					$command->{dockerfile} //= cmd_to_dockerfile($command->{command}, $image->{shell});
				}

				push @{ $data->{images} }, $image;
			}
			return $data;
		});
	});
}

sub platform_string ($platform) {
	return (
		($platform->{os} // 'linux')
		. (defined $platform->{'os.version'} ? ' version ' . $platform->{'os.version'} : '')
		. (defined $platform->{'os.features'} ? ' ft. ' . join(', ', @{ $platform->{'os.features'} }) : '')
		. '; '
		. ($platform->{architecture} // 'amd64')
		. (defined $platform->{variant} ? ' variant ' . $platform->{variant} : '')
		. (defined $platform->{features} ? ' ft. ' . join(', ', @{ $platform->{features} }) : '')
	);
	# TODO use https://github.com/microsoft/hcsshim/blob/559a1cf5a26cfd2b1c467c446ad83b91745c4a06/osversion/windowsbuilds.go to provide more color to os.version (RS1, etc)
}

sub cmd_to_dockerfile ($cmd, $shell) {
	if (@$cmd == 1) {
		# likely 1.10+ squashed string :(
		# https://github.com/docker/docker/issues/22436
		# let's strip and "parse" to get as close to readable as we can

		my @shells = (join ' ', @defaultShell);
		push @shells, join ' ', @$shell if $shell;
		@shells = map { "\Q$_ \E" } @shells;
		my $shellRegex = '(?:' . join('|', @shells) . ')';
		my $nopRegex = "\Q#(nop)\E +";

		my $str = $cmd->[0];
		$str =~ s!^RUN !!; # strip off "RUN" prefix from buildkit (added back later)
		my @prefix = ();
		if ($str =~ s!^[|]\d+ (.*?) ($shellRegex)!$2!) {
			push @prefix, '# ARGS: ' . $1;
		}
		if (substr($str, 0, 1) eq '|' && !@prefix) {
			# must be something like:
			#   |6 a=1 b=2 c=3 d=4 e=a b c f=a b " c echo $a
			# (and thus impossible to parse as-is)
			return '# unable to parse image command string further:' . "\n" . $str;
		}
		$str =~ s!^$shellRegex!!;
		unless ($str =~ s!^$nopRegex!! || $str =~ m!^[A-Z]+ !) {
			# if we don't have "#(nop)" or something that looks like an all-caps Dockerfile instruction, RUN is implied
			$str = 'RUN ' . $str;
		}
		return join "\n", @prefix, $str;
	}

	my @buildArgs;
	if (substr($cmd->[0], 0, 1) eq '|') {
		# must have some build args for this RUN line
		# https://github.com/docker/docker/blob/a7742e437943bb0c59cc9e01fd9f5e68259ad3ec/builder/dockerfile/dispatchers.go#L353-L365
		my $n = int(substr(shift(@$cmd), 1)); # number of build args
		while ($n > 0) {
			my $arg = shift @$cmd;
			$arg =~ s/(["\\])/\\$1/g;
			my ($var, $val) = split /=/, $arg, 2;
			push @buildArgs, '"' . $var . '" => "' . $val .'"';
			--$n;
		}
	}
	my $args = join('', map { "# ARG: $_\n" } @buildArgs);
	if (scalar(@$cmd) == 3 && $cmd->[0] eq '/bin/sh' && $cmd->[1] eq '-c') {
		$cmd = $cmd->[2];
		if ($cmd =~ s{^(#[(]nop[)] )}{}) {
			return $args . $cmd;
		}
		# prefix tabs and 4-space-indents with \ and a newline (for readability), but only if we don't already have any newlines
		$cmd =~ s/ ( (?:\t|[ ]{4})+ ) /\\\n$1/xg unless $cmd =~ m!\n!;
		return $args . 'RUN ' . $cmd;
	}
	return $args . 'RUN ' . Mojo::JSON::encode_json($cmd);
}

my @humanSizeUnits = qw( B KB MB GB TB );
my $humanSizeScale = 1000;
sub human_size ($bytes) {
	my $unit = 0;
	my $unitBytes = $bytes;
	while (($unitBytes = int($bytes / ($humanSizeScale ** $unit))) > $humanSizeScale) {
		last unless $humanSizeUnits[$unit + 1];
		++$unit;
	}
	return sprintf '%.1f %s', $bytes / ($humanSizeScale ** $unit), $humanSizeUnits[$unit];
}

sub size {
	my $text = human_size(@_);
	$text .= " ($_[0] bytes)" unless $text =~ m! \s+ B $ !x;
	return $text;
}

sub date {
	my $date = Mojo::Date->new(@_);
	return $date->to_string;
}

sub image_to_markdown_p ($image) {
	my $ref = Bashbrew::RemoteImageRef->new($image);

	my $ret = '## `' . $ref . '`' . "\n";

	return get_image_data_p($ref)->then(sub ($data) {
		unless ($data) {
			# tag must not exist yet!
			$ret .= "\n" . '**does not exist** (yet?)' . "\n";
			return $ret;
		}

		my $repo = $data->{repo};

		$ret .= "\n";
		$ret .= '```console' . "\n";
		$ret .= '$ docker pull ' . $repo . '@' . $data->{digest} . "\n";
		$ret .= '```' . "\n";

		$ret .= "\n";
		$ret .= "-\t" . 'Manifest MIME: `' . $data->{manifestVersion} . '`' . "\n" if $data->{manifestVersion};
		$ret .= "-\t" . 'Platforms: ' . (scalar @{ $data->{images} }) . "\n";
		for my $imageData (@{ $data->{images} }) {
			$ret .= "\t-\t" . platform_string($imageData->{platform}) . "\n";
		}

		for my $imageData (@{ $data->{images} }) {
			$ret .= "\n";
			$ret .= '### `' . $ref . '` - ' . platform_string($imageData->{platform}) . "\n";

			if ($imageData->{digest}) {
				$ret .= "\n";
				$ret .= '```console' . "\n";
				$ret .= '$ docker pull ' . $repo . '@' . $imageData->{digest} . "\n";
				$ret .= '```' . "\n";
			}

			$ret .= "\n";
			$ret .= "-\t" . 'Docker Version: ' . $imageData->{dockerVersion} . "\n" if $imageData->{dockerVersion};
			$ret .= "-\t" . 'Manifest MIME: `' . $imageData->{manifestVersion} . '`' . "\n" if $imageData->{manifestVersion};
			$ret .= "-\t" . 'Total Size: **' . size($imageData->{size}) . '**  ' . "\n";
			$ret .= "\t" . '(compressed transfer size, not on-disk size)' . "\n";
			$ret .= "-\t" . 'Image ID: `' . $imageData->{imageId} . '`' . "\n" if $imageData->{imageId};
			$ret .= "-\t" . 'Entrypoint: `' . Mojo::JSON::encode_json($imageData->{entrypoint}) . '`' . "\n" if $imageData->{entrypoint} && @{ $imageData->{entrypoint} };
			$ret .= "-\t" . 'Default Command: `' . Mojo::JSON::encode_json($imageData->{defaultCommand}) . '`' . "\n" if $imageData->{defaultCommand};
			$ret .= "-\t" . '`SHELL`: `' . Mojo::JSON::encode_json($imageData->{shell}) . '`' . "\n" if $imageData->{shell};

			$ret .= "\n";
			$ret .= '```dockerfile' . "\n";
			for my $command (@{ $imageData->{commands} }) {
				$ret .= '# ' . date($command->{created}) . "\n";
				$ret .= $command->{dockerfile} . "\n";
			}
			$ret .= '```' . "\n";

			$ret .= "\n";
			$ret .= "-\t" . 'Layers:' . "\n";
			for my $layer (@{ $imageData->{layers} }) {
				$ret .= "\t-\t" . '`' . $layer->{digest} . '`  ' . "\n";
				$ret .= "\t\t" . 'Last Modified: ' . date($layer->{lastModified}) . '  ' . "\n" if defined $layer->{lastModified};
				$ret .= "\t\t" . 'Size: ' . size($layer->{size}) . '  ' . "\n" if defined $layer->{size};
				$ret .= "\t\t" . 'MIME: ' . $layer->{mediaType} . "\n";
			}
		}

		return $ret;
	});
}

if (@ARGV && $ARGV[0] eq '--') {
	# if the first argument is "--", we want to just generate markdown for images directly (no server)

	shift;
	die 'no images specified' unless @ARGV;

	Mojo::Promise->map(sub ($img) { image_to_markdown_p($img) }, @ARGV)->then(sub (@markdowns) {
		print join "\n", map { @$_ } @markdowns;
	})->catch(sub (@err) {
		say {*STDERR} 'error: ' . $_ for @err;
		exit scalar @err;
	})->wait;

	exit;
}

use Mojolicious::Lite -signatures;

get '/markdown/*image' => sub ($c) {
	my $image = $c->param('image');

	$c->render_later;

	return image_to_markdown_p($image)->then(sub ($markdown) {
		$c->res->headers->content_type('text/plain');
		$c->render(text => $markdown);
	})->catch(sub (@err) {
		$c->reply->exception(@err);
	});
};

app->start;
