## `redmine:6-bookworm`

```console
$ docker pull redmine@sha256:5610a5bbf8918844e8b8e2a8e1e6806bf9c6066e362e648fb1325811a01e5006
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `redmine:6-bookworm` - linux; amd64

```console
$ docker pull redmine@sha256:d688720a62ac642b1033b223e435a18a53eb77c419481f7f5d3a47b4f892da41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274721199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d382b500b3c4805f645829993b9c2494e7d1eb392ab3a344ec8eeb6dade0c0c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 00:28:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:28:42 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:30 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:36:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:36:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:36:04 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:36:04 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:36:04 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:36:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:36:04 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 19 Nov 2026 00:36:04 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 19 Nov 2026 00:36:04 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 19 Nov 2026 00:36:04 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:36:06 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:44 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b127bbf6c2fe50c37a25c3fd84f53795b414ac1dfea50dfadc515f0e99460b2`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 3.3 MB (3330141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3680cd2ee50d97846a508b903c7f4c61fb29dba7cc013e0df8f4e765febd58d1`  
		Last Modified: Thu, 19 Nov 2026 00:31:13 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea9189c21366e69f1ceb16165683dd526e6c8e84d5a04e9dcdb5384c01a2bfe`  
		Last Modified: Thu, 19 Nov 2026 00:31:21 GMT  
		Size: 41.6 MB (41566630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed68a2d80049cde96b4fc149b49257e58dcc4191efff6836f54c080e487e559`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5cbc19f74032c2a13ee090e27ab49e1daca8b549081f2115c7de32f2323522`  
		Last Modified: Thu, 19 Nov 2026 00:36:59 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da74fac4ee40a0530bc5101f2fd81fad0bc39310a139e2163f849e3f5755d08`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 123.2 MB (123184295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658e437d2a46d933e93a1988660945eccfea1c3535471002642ed61005b2f7e1`  
		Last Modified: Thu, 19 Nov 2026 00:37:00 GMT  
		Size: 947.0 KB (947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfb15c8292001226fc582b9dfdbf61ee78b11448f968b4ccfbcff35b5ab523c`  
		Last Modified: Thu, 19 Nov 2026 00:37:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f463cbeef92d311a9cca2847304b55de4a57ead29a4ad855a5339a9946e935`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d4e392b64fa8bbc96140da872244a6ba256f97ef33150fc88f61923f2e08fc`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 4.2 MB (4168343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22157211cf7b03ea16dd7372f7b47f174660191e44c2ffd5f716e2465db6b293`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 73.3 MB (73272640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bf3f4f78b76893cfdc3829d06c574904dab81a37f997c1257e409e51c8d1f4`  
		Last Modified: Thu, 19 Nov 2026 00:36:51 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:9201a3f00a30e11dd777f9381f66ba66101bc42e692ef9ffb1df00402d9a2e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf5d96d4eabc69b4a5178845f1d384d6cc5f919e58210b12ddd49952ed5dd8a`

```dockerfile
```

-	Layers:
	-	`sha256:98ee661a2444f5e6edd7399a88612232032ac71edde5b8d4391e386004e72257`  
		Last Modified: Thu, 19 Nov 2026 00:36:59 GMT  
		Size: 41.2 KB (41222 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:bd1b7db6d83b0693e76fac717de576e8e479fd0dc69aa91bfea752962e24819e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271701866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96a3c9a34756b2df2ffda7b0766987ff6066489e4bb5723888a73bef844d0a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 00:28:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:28:43 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:09 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:09 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:09 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:09 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:09 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:35 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:36:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:36:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:36:06 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:36:06 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:36:06 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:36:06 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:36:06 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 19 Nov 2026 00:36:06 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 19 Nov 2026 00:36:06 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 19 Nov 2026 00:36:06 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:36:08 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:47 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:48 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea087513c5e9b81772778568c36fd9e233757fcb3acd3d52bc8682f101833e4`  
		Last Modified: Thu, 19 Nov 2026 00:31:19 GMT  
		Size: 3.2 MB (3160983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba998b7e32d21e9f4eeed52e83199904bf5b15283475dd103e85508cebcbfb0`  
		Last Modified: Thu, 19 Nov 2026 00:31:19 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4a00f58ad786b6f85138442afe6a9b6636e31f51ccb676c888fc08468563e6`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 41.5 MB (41454216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b280e109b3364c205d62d17d9708afaf86c33b735aae5269dfd18bfecc49f7`  
		Last Modified: Thu, 19 Nov 2026 00:31:19 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ea068d8ce2193cd82804c1f57ebbc2316fd875b6479c6945fa6eeaf0e7537e`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccff998f67aa1b2045be51ae78abb628756ddbd54600f3208a5ed9d277f515da`  
		Last Modified: Thu, 19 Nov 2026 00:37:07 GMT  
		Size: 120.7 MB (120661322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5c83607dc970795f3ff4f2092f2975d8f6f3727daf15647c002c132d10fc01`  
		Last Modified: Thu, 19 Nov 2026 00:37:04 GMT  
		Size: 900.1 KB (900066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de1adc30d8b34a42402ca28153ab91ccaf81fbe0647576655c26128ebd42b71`  
		Last Modified: Thu, 19 Nov 2026 00:37:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d510a0aa3d5d0299f74d2927414def183b283c99dc65e6797fb44a9012a2990`  
		Last Modified: Thu, 19 Nov 2026 00:37:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f59ec5e1a485fac356830a45314248e9b029d1fea71957d1b907d29f616b93`  
		Last Modified: Thu, 19 Nov 2026 00:37:05 GMT  
		Size: 4.2 MB (4168347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cc9ddb80475958cb810adcc3bd22b04389bf85f6a52aab9d839651c0fdd5fa`  
		Last Modified: Thu, 19 Nov 2026 00:37:08 GMT  
		Size: 73.2 MB (73208455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333b8f693e11aec006733df93571d2a8c6bb50e7ed55dcce76eaeba61d5e641a`  
		Last Modified: Thu, 19 Nov 2026 00:37:06 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:829acdf84394fd969266d6a252cd31e5f70607a123b9d5a58012fb4f1588384a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 KB (41389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeb49c35f05807af24e3cbf2f96fd00d2c469b3c29a8d98d8160932c040ce3e`

```dockerfile
```

-	Layers:
	-	`sha256:a70594d86ef60348ce04da62b0b95d4dbc029d114fcd239080850a643394b39e`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 41.4 KB (41389 bytes)  
		MIME: application/vnd.in-toto+json
