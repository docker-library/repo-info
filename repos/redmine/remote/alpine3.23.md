## `redmine:alpine3.23`

```console
$ docker pull redmine@sha256:c4e11df4903841d49dde3c06a7c712126fade0ed5ce77e8e0991d78cef124b67
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `redmine:alpine3.23` - linux; amd64

```console
$ docker pull redmine@sha256:1982ad95f193afd5f3f8cb44cdc6c9d8ae52d10606bd2612b443461741e45ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201197783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df3493aa7790bfe907b723d3c3c6cabfc400d66ac5d1b7f21f1b0427c0ba9e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:01:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:03:40 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:03:40 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:03:40 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:03:40 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:03:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:03:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:40 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:03:40 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:03:40 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:15:38 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:15:42 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:15:45 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:15:45 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:15:45 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:15:45 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:15:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:15:45 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:15:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:15:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:15:45 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:15:47 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:16:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:16:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:16:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:16:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:16:31 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:16:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b63f7f4903a9b3b0615bb9f58ba2ee92718c3f2ba7d24734582b099eeb50dc`  
		Last Modified: Wed, 01 Jul 2026 00:03:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0117f858734292c647497daf49f3e7133c3d295f0a7fdae12ed9111beb906b`  
		Last Modified: Wed, 01 Jul 2026 00:03:50 GMT  
		Size: 39.2 MB (39209142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201e4df75aec85928bf3dc8a65aa5cc43374871028119c2592fe28c1fd0cf06d`  
		Last Modified: Wed, 01 Jul 2026 00:03:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1a01e73cab8a4ddbc61d59d727a918d3916005193f552d6f6a494b8f8f1b7b`  
		Last Modified: Wed, 01 Jul 2026 00:16:42 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4fea5d9a55c2c04183c354cca751b5b66e2d5a8b43e9728f99e62aca1232d0`  
		Last Modified: Wed, 01 Jul 2026 00:16:45 GMT  
		Size: 79.0 MB (78973185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b2a5634b834ba9f6d21add1c8dbbc60e98e53d807de73037531d6b6822a32c`  
		Last Modified: Wed, 01 Jul 2026 00:16:42 GMT  
		Size: 973.8 KB (973848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6603bbcd724bd5f827cf8a0375e683becd50af3534e7e2b01991830a39fb4ec1`  
		Last Modified: Wed, 01 Jul 2026 00:16:42 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65169be5e4197754e22323fdd63395114f0c13d01ac10ee99357fae4382a0b84`  
		Last Modified: Wed, 01 Jul 2026 00:16:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54923e9a261878f6a0aacf00f2754a1ac49896258d8cf8b8e20dd0e5df397de1`  
		Last Modified: Wed, 01 Jul 2026 00:16:44 GMT  
		Size: 4.2 MB (4155809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58c38340b50e7a10226d4883a5b1eab884c60bfdba9467b6c1b586f45611b32`  
		Last Modified: Wed, 01 Jul 2026 00:16:46 GMT  
		Size: 74.0 MB (74037467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954bcae60eac398f8c34f999a4b33824194a7658829a56033df4a5dea9a2cbd4`  
		Last Modified: Wed, 01 Jul 2026 00:16:45 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:9bf1a9c9e08fc5f0b1f40a451efce1d404f65186a29b6e0980ea2f1c8b748728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 KB (37049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5ba1a151b395977ee50a0fc316642153db88ca716898fd683bb771536726cf`

```dockerfile
```

-	Layers:
	-	`sha256:385116e97ac0f3329e24c1e8a5e9c4c73becf94a98b09989cd0a4cacec1d952a`  
		Last Modified: Wed, 01 Jul 2026 00:16:42 GMT  
		Size: 37.0 KB (37049 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; arm variant v7

```console
$ docker pull redmine@sha256:fba917b3ee4540460992669a8fce520eae1ac745fe5cb647f4f3df5b3625a20d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204598181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a09653e185cdd1eb2bcdb45beeb23c4d285513f8470a7862aa606155897a398`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:03:34 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:06:07 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:06:07 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:06:07 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:06:07 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:06:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:06:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:06:07 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:06:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:06:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:06:07 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:08:37 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:08:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:08:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:08:53 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:08:53 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:08:53 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:08:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:08:53 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:08:53 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:08:53 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:08:53 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:08:55 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:10:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:10:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:10:38 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:10:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:10:38 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:10:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee57fbd478ec3f3653cf6c86af5b6ed3dac6d5262ec1985e8a546729dcb26a0`  
		Last Modified: Wed, 01 Jul 2026 00:06:14 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07562c0cd2e1ea54eaf326b504d0f7fe13f397ec7e40162f53f48f7579c8b519`  
		Last Modified: Wed, 01 Jul 2026 00:06:15 GMT  
		Size: 34.7 MB (34699867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f067eedd02fcc9c550b5f97e23fd421350db8164298324508f14d68fe3c36c73`  
		Last Modified: Wed, 01 Jul 2026 00:06:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22317a2af8fd6cc686418a700ec52910ba278acd189dd1c5710ccb29b704fb41`  
		Last Modified: Wed, 01 Jul 2026 00:10:48 GMT  
		Size: 908.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0dca767e0ae3b4a4adf6f8c1e4d03a7f63cae9e6b511e614abdaff143a56ce`  
		Last Modified: Wed, 01 Jul 2026 00:10:50 GMT  
		Size: 71.9 MB (71915758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7943cce0b2c0126b9570b534a7acac0ef2aea211925b0a1e82af65cd5889e93a`  
		Last Modified: Wed, 01 Jul 2026 00:10:48 GMT  
		Size: 941.3 KB (941324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64331162e3b37cc59dff00445c2a591627de377de3ad1f27ebfe99709553c16f`  
		Last Modified: Wed, 01 Jul 2026 00:10:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f688304744d6b76660814c1938a5dd5c0832b890c0c4869f4b9d821bcdd1a0f5`  
		Last Modified: Wed, 01 Jul 2026 00:10:50 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f767e212bbeaf40280af365bd4d1bc2711cbc6a6a5ca089451b56aab6285896`  
		Last Modified: Wed, 01 Jul 2026 00:10:50 GMT  
		Size: 4.2 MB (4155811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a57f0c7a02233038d411030b487e9288dd587979f5da238d95b57a1f080ba5`  
		Last Modified: Wed, 01 Jul 2026 00:10:52 GMT  
		Size: 89.6 MB (89619659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4141d2d3ad2f89c4d40ff1dd0b2368bdcc8b0bebcd5e6ddde59c468a6b9a2909`  
		Last Modified: Wed, 01 Jul 2026 00:10:30 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:e52910a3eeae03bb3849430c0e8d5118560f75fd91efff91746765b62d569205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb218a3622502af6e43600d7bfa872e87ff0e6e788e2f55bc0aa3b7a4f7b23d9`

```dockerfile
```

-	Layers:
	-	`sha256:03f7fb9448990ae2bf5d979651d7dd0915accc1de8947e0e3630dda8bef6416f`  
		Last Modified: Wed, 01 Jul 2026 00:10:48 GMT  
		Size: 37.2 KB (37194 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:aacb0f11d31ab822a54e8af87eee3f676a643b34ff4037baf886f007faa76f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 MB (200858855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3030282eda6b2f0aa8a9622e089f11b13b5f9ce8c259325298746af24041f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:01:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:04:08 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:04:08 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:04:08 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:04:08 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:04:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:04:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:04:08 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:04:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:04:08 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:04:08 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:08:41 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:08:48 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:08:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:08:48 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:08:48 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:08:48 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:08:48 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:08:48 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:08:48 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:08:48 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:08:48 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:08:51 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:10:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:10:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:10:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:10:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:10:04 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:10:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33eda3d9d7845256c12270133ed87f31a074a006e48d7eb5bdba977d11cf70e1`  
		Last Modified: Wed, 01 Jul 2026 00:04:16 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc2321eab52933b2b62b8eca13eb9597fa3eab83c1ec3896a0ae2610e7c7959`  
		Last Modified: Wed, 01 Jul 2026 00:04:17 GMT  
		Size: 39.3 MB (39275393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fc1ff57bece5d2272cdf48e9369e5f8fd9827646c9ea995d8556abd2bc5bbf`  
		Last Modified: Wed, 01 Jul 2026 00:04:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0269d44ac23c3983f81da8e5e3335409a5f6caf4a4bab5db751a31fdc497792a`  
		Last Modified: Wed, 01 Jul 2026 00:10:15 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1a4604c8d6445e66391c36a30ca77541e5a7553d7a6763cb1e908d2a15833e`  
		Last Modified: Wed, 01 Jul 2026 00:10:17 GMT  
		Size: 78.5 MB (78483495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b61da4d7178cd63167e80f374144787b1ec6adacd37629279c6f9407be0cfb`  
		Last Modified: Wed, 01 Jul 2026 00:10:15 GMT  
		Size: 928.2 KB (928155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00dca37673f58a931eeb5a96aa8f4ac5041f621c357eb63923b30b5a64e6345`  
		Last Modified: Wed, 01 Jul 2026 00:10:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c165226d2f2d4221df84875a0362680920c57ae30c22d634e2ecce0bd265f49`  
		Last Modified: Wed, 01 Jul 2026 00:10:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b412039bc54e7b4d603cf775c7c161e463d634ba82481e7e2993ade6b828cbc`  
		Last Modified: Wed, 01 Jul 2026 00:10:16 GMT  
		Size: 4.2 MB (4155786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad215a2741db1e3922ae7555bba06461f8cf999ca906555d904b2966e8fb654c`  
		Last Modified: Wed, 01 Jul 2026 00:10:18 GMT  
		Size: 73.8 MB (73830256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2abe39b2e6854f078070b0d9e6ce1d15680b52f7cac163aef43ecc2e09414f4`  
		Last Modified: Wed, 01 Jul 2026 00:10:17 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:25c3fb4891db4d3541492697f2999f0b5054d1f50d258e8105628b22c6ef2032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6e7d1970ff481fa2a879eb4f5f58afa781f8d8a6ec75b703063e0a37bea3b8`

```dockerfile
```

-	Layers:
	-	`sha256:22684b9d3ed437938dccd8decbc2198434aa4edd9df28f3880e48add37c15bf8`  
		Last Modified: Wed, 01 Jul 2026 00:10:15 GMT  
		Size: 37.2 KB (37228 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; 386

```console
$ docker pull redmine@sha256:4be51241623fc1f4fc78ea337b7a1818232b24b2fb23ebba458fab8c37981356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219157955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b744e01e8ac4958c2118f9c3217afd67ce7eb057f7f34b524eea62579c210bb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:01:39 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:03:43 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:03:43 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:03:43 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:03:43 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:03:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:03:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:43 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:03:44 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:03:44 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:08:41 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:08:51 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:08:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:08:54 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:08:54 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:08:54 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:08:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:08:54 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:08:54 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:08:54 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:08:54 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:08:57 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:11:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:11:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:11:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:11:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:11:17 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:11:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f8aa344f1c67e30763dd3d00e3bd84d1045597dbada8d597085e0d919966c4`  
		Last Modified: Wed, 01 Jul 2026 00:03:50 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb19cfcd7187ff31d9c4466c8d77132a4e5ac78b41db2bb70e019e2a7a0b60c5`  
		Last Modified: Wed, 01 Jul 2026 00:03:52 GMT  
		Size: 34.7 MB (34683955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a067eab4138243cb9c312ae639e0b988fe3de3b5a889bcb3718ed2bc1df97f`  
		Last Modified: Wed, 01 Jul 2026 00:03:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1435e6a3da0ae7b1415a74850165db56669560f96b4e3a62b3ba797796ec062`  
		Last Modified: Wed, 01 Jul 2026 00:11:28 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611c2b1c5188b7e553ab2922fae58e8c8616682e72dc33e624f99b0b6f53d217`  
		Last Modified: Wed, 01 Jul 2026 00:11:31 GMT  
		Size: 80.0 MB (80014824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5cc99b846d0486e024a091b88ef133df91fb2b5a970892cdcb936d77828805`  
		Last Modified: Wed, 01 Jul 2026 00:11:28 GMT  
		Size: 945.4 KB (945397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83779fb5a66e5b613ec6f38d57565b63779f5dbf28c3f0aabb1c6c791aa3ea0b`  
		Last Modified: Wed, 01 Jul 2026 00:11:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89736f4d4ad0f403ebdd5bccea745ac7d0a0090b6724fd7b05c4c767051f59d1`  
		Last Modified: Wed, 01 Jul 2026 00:11:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf0a8bc335358e7fc93b86a77b90712ea60adb3ce8dcbcda2c11be2e8cc6eaf`  
		Last Modified: Wed, 01 Jul 2026 00:11:30 GMT  
		Size: 4.2 MB (4155788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac536f535a2565beb84a34801c26ca5b0b9e035058dccc6e8b14dff41d8d89ea`  
		Last Modified: Wed, 01 Jul 2026 00:11:32 GMT  
		Size: 95.7 MB (95686091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2abe39b2e6854f078070b0d9e6ce1d15680b52f7cac163aef43ecc2e09414f4`  
		Last Modified: Wed, 01 Jul 2026 00:10:17 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:50c1e716d9afe4c4f105f3465092ed2582c268de7b66da0d0f3cbec21d8e291c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 KB (37007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e578137b66765aa6c4dd07f7c3f3eceb1ffd5ddd55b8dcd852f40b8fdd8d4bcb`

```dockerfile
```

-	Layers:
	-	`sha256:f2de36fa13fb35dd63409690f4932efe6eac0475b9ce020eccbe75869c9f911a`  
		Last Modified: Wed, 01 Jul 2026 00:11:28 GMT  
		Size: 37.0 KB (37007 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; ppc64le

```console
$ docker pull redmine@sha256:ea84c65c2e6adb8226df7bfd3458590bbe31707b693f8f9675e1504b0a0ce353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238402782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36157b85cb1eb7ddb309c1c6a64dd6be44cc1fb4f7570bddb5ca80b0cb45d99d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:55:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:59:15 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:59:15 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:59:15 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:59:15 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:59:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:59:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:59:15 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:59:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:59:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:59:16 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 01:25:09 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 01:25:27 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 01:25:31 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 01:25:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 01:25:31 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 01:25:32 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 01:25:32 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 01:25:32 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 01:25:32 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 01:25:32 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 01:25:32 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 01:25:32 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 01:25:36 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 01:30:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 01:30:15 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 01:30:15 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 01:30:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 01:30:15 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 01:30:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd9a956df4526b49cd9ad67606328f0d5f032dde818fd3c0bef956266b10f79`  
		Last Modified: Wed, 01 Jul 2026 00:59:29 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3fdd9246a8ad3707be68516a80ac88852bc11333e9a5002e6c47d1e80b2847f`  
		Last Modified: Wed, 01 Jul 2026 00:59:30 GMT  
		Size: 36.6 MB (36592667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40a8f1c872abb8dabef241ec9ecab366c7071c5b6e4542d1b7e30481f283323`  
		Last Modified: Wed, 01 Jul 2026 00:59:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41034fc33003302773333cfb4f4737df74dd80da6c41771475ba42cd203c63e6`  
		Last Modified: Wed, 01 Jul 2026 01:30:40 GMT  
		Size: 908.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0511a8e69b7e9c98e7f8658c50995570d9f9a9523277b0646eb08a2382f3cd52`  
		Last Modified: Wed, 01 Jul 2026 01:30:43 GMT  
		Size: 81.6 MB (81591426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43a0a9937fb988251384b842400a95e7d4e6548508d0f222f096db2f688aa14`  
		Last Modified: Wed, 01 Jul 2026 01:30:40 GMT  
		Size: 933.4 KB (933403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbaf8f2f85f735d513397086c5157d727b1f383f0e44c50e4f71bd06a2ddbb3`  
		Last Modified: Wed, 01 Jul 2026 01:30:40 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff323f26ca7d656610f6bb77882b5b917530ce40ac574ded04fe57024d4535`  
		Last Modified: Wed, 01 Jul 2026 01:30:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76baeae6781710d41e769a19e5edf5e8454c457f1593a3638c8cf08d71f01d9`  
		Last Modified: Wed, 01 Jul 2026 01:30:42 GMT  
		Size: 4.2 MB (4155792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74dbc2b24ad91395a14baf14641705c18b04b5aa7cff581afd2437bc9f0b0f02`  
		Last Modified: Wed, 01 Jul 2026 01:30:45 GMT  
		Size: 111.3 MB (111313284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf318346cc2e5054e3e31486b7e149e643d3e1d8e414e9b49f38b9eecc8db2c`  
		Last Modified: Wed, 01 Jul 2026 01:30:43 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:b2e3c4c5696894a343336731373547d262a370fa45ca08794ce130f699e82518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 KB (37105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fdcda4266dcb6b69f85acbadc9b78b75a86f33506c6fa9efca298f7876ae9f`

```dockerfile
```

-	Layers:
	-	`sha256:4e1c01589edd8981e7d93cf556b98ddc303ad800541e4d9dfe03319787572447`  
		Last Modified: Wed, 01 Jul 2026 01:30:40 GMT  
		Size: 37.1 KB (37105 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; riscv64

```console
$ docker pull redmine@sha256:b4399f1922e0b335fc5193cbb3285a0da26d45c74065ece474fd50986940a2df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235658256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a05ce38d29dce5a6eba199ce16c49ecdfcb12b6cc5d97f65a58cfc463f4d78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 20:41:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 24 Jun 2026 01:32:28 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:32:28 GMT
ENV RUBY_VERSION=3.4.9
# Wed, 24 Jun 2026 01:32:28 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.9.tar.xz
# Wed, 24 Jun 2026 01:32:28 GMT
ENV RUBY_DOWNLOAD_SHA256=4231c54072601a171faed1699f105985e9971c94cd382b78feb4eb44eec2dd1a
# Wed, 24 Jun 2026 01:32:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 24 Jun 2026 01:32:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jun 2026 01:32:28 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jun 2026 01:32:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 01:32:29 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 24 Jun 2026 01:32:29 GMT
CMD ["irb"]
# Wed, 24 Jun 2026 13:13:21 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 24 Jun 2026 13:13:53 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 24 Jun 2026 13:14:01 GMT
ENV GOSU_VERSION=1.19
# Wed, 24 Jun 2026 13:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 24 Jun 2026 13:14:01 GMT
ENV RAILS_ENV=production
# Wed, 24 Jun 2026 13:14:02 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jun 2026 13:14:02 GMT
ENV HOME=/home/redmine
# Wed, 24 Jun 2026 13:14:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 24 Jun 2026 13:14:02 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 24 Jun 2026 13:14:02 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 24 Jun 2026 13:14:02 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 24 Jun 2026 13:14:02 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 24 Jun 2026 13:14:08 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 24 Jun 2026 14:36:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 24 Jun 2026 14:36:21 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jun 2026 14:36:22 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 24 Jun 2026 14:36:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 14:36:22 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 24 Jun 2026 14:36:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13226a4f6d8986714dd8ba856419810a0b6e5e8bd1b191a3d23679e9e0664a5`  
		Last Modified: Tue, 23 Jun 2026 23:00:21 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afba3d2194189a7e6deec2331c724749be2068045aa5aea3a33dddd4a69fe562`  
		Last Modified: Wed, 24 Jun 2026 01:33:45 GMT  
		Size: 38.1 MB (38134720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0660d60d6d0f7a8ab36b3f5f0b8f49ca7b30af730625cf90a05c7e12f0205`  
		Last Modified: Wed, 24 Jun 2026 01:33:38 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8873fbe7bfd24d7dbec8c7783d51162dd9637ee38c1edd480e110a66f4d296`  
		Last Modified: Wed, 24 Jun 2026 14:38:52 GMT  
		Size: 908.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ac96644c17733dd507d070c6091fdd35bb1be6cc4f13bd7a588483c97cadb7`  
		Last Modified: Wed, 24 Jun 2026 14:39:13 GMT  
		Size: 77.2 MB (77176451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb74390ecbcfd381db17953bee3ac53f1a294fab32c35a9e8ba6fd4f8f23bf78`  
		Last Modified: Wed, 24 Jun 2026 14:38:52 GMT  
		Size: 921.0 KB (921046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a40436a7f7c8f047b8f9af15b6214092a12b25cae8045557655552dff430990`  
		Last Modified: Wed, 24 Jun 2026 14:38:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe7f492739627e893d3135541a877113b540384dca3e8ac0e8998830b6103b6`  
		Last Modified: Wed, 24 Jun 2026 14:38:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a1233af92ab25ac7a285ece5e4c979d3c065e875171438a9427531a9baf1`  
		Last Modified: Wed, 24 Jun 2026 14:38:55 GMT  
		Size: 4.2 MB (4155861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dcc9eedbccda84670cc2c991ff7ef49ef4eef4737dd018095faa1202c957a5f`  
		Last Modified: Wed, 24 Jun 2026 14:39:20 GMT  
		Size: 111.7 MB (111693026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0bd4527ba2b370001c84484768cde6e82654211e89a0e681f0fe109fdd0cce`  
		Last Modified: Wed, 24 Jun 2026 14:38:56 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:54b2f277890a31285775f17150d2a63bac82cff7603f8ad68f47d31d08121147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 KB (37093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82e3506990d477edd8cba914154e81b27790af4638115c484c95ee0f0538788`

```dockerfile
```

-	Layers:
	-	`sha256:0869650be5e827a6b53f7ae983dd2e7eb9ca939416b29359121c6071e83676bc`  
		Last Modified: Wed, 24 Jun 2026 14:38:52 GMT  
		Size: 37.1 KB (37093 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; s390x

```console
$ docker pull redmine@sha256:72ce89b4cc072b1b3d9e28c0b3096eef5a87e0a97d887bd79527d0fbb95b4b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234253360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e46f650d042ff949ca680935feec3acf7608bdcefe988c08ccf74d33dd14a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:07:41 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:10:08 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:10:08 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:10:08 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:10:08 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:10:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:10:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:10:08 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:10:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:10:08 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:10:08 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:19:38 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:19:48 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:19:52 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:19:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:19:52 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:19:52 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:19:52 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:19:52 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:19:52 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:19:52 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:19:52 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:19:52 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:19:54 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:23:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:23:50 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:23:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:23:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:23:50 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:23:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc3463036a052e3730a9615b2515cc324812a0abd4128a11870eed3784520e5`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2034db0aedb71492f4d653d2c6bf295f22c607d3a0890170618807b99d98ef8f`  
		Last Modified: Wed, 01 Jul 2026 00:10:21 GMT  
		Size: 36.1 MB (36084921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b6c6506e5274d2c0d94c7cb08dc464648c9fe512244c421137c6624261e7f0`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea5f7359ff306e3f96f8354598d73596a3cb19f50910b8088359fb8e6cf306a`  
		Last Modified: Wed, 01 Jul 2026 00:24:07 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d39d3fbec465d9efd772662d9ef373a8302f6df04c92aca214c45d36ff26fb9`  
		Last Modified: Wed, 01 Jul 2026 00:24:09 GMT  
		Size: 79.3 MB (79304971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbd9a0571fdf7398f9d98c3d42e2b194729f7404567de166e53e956e3409d7`  
		Last Modified: Wed, 01 Jul 2026 00:24:07 GMT  
		Size: 949.3 KB (949274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28eb89d145e30f8655c6c1baffe236984c4c0bf649c281e376971c06c452eb8`  
		Last Modified: Wed, 01 Jul 2026 00:24:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18941fda023492561fff901bc5760eec7f997c31b0297739ffab6a44c70d428`  
		Last Modified: Wed, 01 Jul 2026 00:24:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4880a8810987c5e25b07ed22c48ab8564344394e48a9a8f79147c1203b0209`  
		Last Modified: Wed, 01 Jul 2026 00:24:09 GMT  
		Size: 4.2 MB (4155828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210b158b5af394069bf5a98368db4d8759ce6cb85da497e50f61b911d588b1e1`  
		Last Modified: Wed, 01 Jul 2026 00:24:11 GMT  
		Size: 110.0 MB (110047206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ae1ca021ef4ab784376946400abd43d31b6adc95ac2d1d739a4eb2c40bbcd1`  
		Last Modified: Wed, 01 Jul 2026 00:24:10 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:7f51188c0eb5931fb98149af2961f05f3d6831ea1220ab139749acb96032a1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 KB (37051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5db9bf67b5b25f493a14e125cdbd5bade338e72b684f3fb5d1b5269cb7f214`

```dockerfile
```

-	Layers:
	-	`sha256:0fbb621d0f01a2ef669bac1374618e228d670e2dfb43304e5e465402feb4310b`  
		Last Modified: Wed, 01 Jul 2026 00:24:07 GMT  
		Size: 37.1 KB (37051 bytes)  
		MIME: application/vnd.in-toto+json
