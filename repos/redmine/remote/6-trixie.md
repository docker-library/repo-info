## `redmine:6-trixie`

```console
$ docker pull redmine@sha256:8beffc2ae1d39d418ccd12e0c05587716ce4eb03d38a269a52dbbe5c366534fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `redmine:6-trixie` - linux; amd64

```console
$ docker pull redmine@sha256:dc796650f906de8327590ad3537f4bd84a97c2c604c3f0038eb333781dc0ee28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262912092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21630a781151a37ab4ec2fc42cb4cf7f93865464f1df69a52e94482e3d457346`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:02:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:02:58 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:05:29 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:05:29 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:05:29 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:05:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:05:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:05:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:05:29 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 05:39:21 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 05:39:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:39:57 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 05:39:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 05:39:57 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 05:39:57 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 05:39:57 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 05:39:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 05:39:57 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 05:39:57 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 05:39:57 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 05:39:57 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 05:39:59 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 05:40:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 05:40:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 05:40:43 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 05:40:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:40:43 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 05:40:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8382dd80dfaea90cbc3ee9d19c23769ee5099a9a7de21f4cd81ff04d561268`  
		Last Modified: Tue, 24 Nov 2026 05:05:37 GMT  
		Size: 1.3 MB (1277565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd5a300b99b9b59ebe48235730c79fd50905993ab93babfc5a1d5ae77758760`  
		Last Modified: Tue, 24 Nov 2026 05:05:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629d30999033d40480c1bd661022ccdd92645b92ef8ff4689819d07b975f27d7`  
		Last Modified: Tue, 24 Nov 2026 05:05:38 GMT  
		Size: 42.2 MB (42233583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c370bf2900705162b0913a18e809f4245f1edd31043a49d2148514a535c884`  
		Last Modified: Tue, 24 Nov 2026 05:05:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7ca9b2c35c4937427fe655e5eaa4cb2c06de5c712f9f5245d8041115dda8a9`  
		Last Modified: Tue, 24 Nov 2026 05:40:40 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d947776326e6027c2506ee7772e696cd82841cf3e2043fe8087396d93ae3bcc0`  
		Last Modified: Tue, 24 Nov 2026 05:41:01 GMT  
		Size: 110.8 MB (110849870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12f6563a28cbb9c2d35ea710ff18765b53c6412a288f6710c7e65aff6033fdc`  
		Last Modified: Tue, 24 Nov 2026 05:40:58 GMT  
		Size: 951.4 KB (951370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83178e7521ba89a389b91e6a3788cda4e80cb6d1055ad54e8faed0b823374503`  
		Last Modified: Tue, 24 Nov 2026 05:40:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdbfa1ea36836bf1871ea1c39c3bbaf816dbd9da4af376e4c2bd4207e038773`  
		Last Modified: Tue, 24 Nov 2026 05:40:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5690e611f500e3681124d58b22646785dbb54e4c7484b56884003c8b450b90`  
		Last Modified: Tue, 24 Nov 2026 05:40:59 GMT  
		Size: 4.2 MB (4168325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ddab72b670596c0ecf43c3aa60ef1b72220fba4026e769f52f889b52cdd29d`  
		Last Modified: Tue, 24 Nov 2026 05:41:02 GMT  
		Size: 73.6 MB (73585087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19313e3677efabe78163b953d3449c5553ce9b72c7d2a802db758dba4b5c435a`  
		Last Modified: Tue, 24 Nov 2026 05:40:59 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:fee8ccd5a8a8740a85f98650e4c8f85fb8b863609db59824c769d21c3dd48f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 KB (41896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75c39b30707a75fb29fb49e536807fdfe86c0763be190a7e8f60a802de779bd`

```dockerfile
```

-	Layers:
	-	`sha256:3f93f0635608068ff175a8b7e244abb2c7f4d19cf5c1b4cbe9b948b8a6b19a31`  
		Last Modified: Tue, 24 Nov 2026 05:40:58 GMT  
		Size: 41.9 KB (41896 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; arm variant v5

```console
$ docker pull redmine@sha256:978586025a0b1d918122ddb7d5c2c5205864212fabfec3e3e3a2e60e6b794097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283421105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3185b42a6aacb0fcb0c85cedffbcac39d8c893b77b43368d9eff2a499707f9f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:59:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:59:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:02:25 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:02:25 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:02:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:02:25 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:02:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:02:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:02:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:02:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:02:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:02:25 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 06:20:51 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 06:21:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:21:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 06:21:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 06:21:41 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 06:21:41 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 06:21:41 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 06:21:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 06:21:42 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 06:21:42 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 06:21:42 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 06:21:42 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 06:21:44 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 06:24:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 06:24:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 06:24:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 06:24:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:24:41 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 06:24:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8af4e43b950f9ad22beff2f560a8b07491264d2a269e9260a4b09f5410e5bf`  
		Last Modified: Tue, 24 Nov 2026 05:02:34 GMT  
		Size: 1.3 MB (1261830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67b5ab82407b5b605111d9c49dbf397558968d2380639f7cff3c20fe3dae6f0`  
		Last Modified: Tue, 24 Nov 2026 05:02:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aab5801ee8380a3dd223cbee320a5e43248f1f78589f48095e2b15ea722edfa`  
		Last Modified: Tue, 24 Nov 2026 05:02:35 GMT  
		Size: 38.0 MB (38010844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19763a9caedf18f2fc35e0db5ffbda9136b07c362dbd4d343eeeb8aba2fdd82f`  
		Last Modified: Tue, 24 Nov 2026 05:02:34 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c0764d0327da3d4e1dca04faccae5e2424ecd84b867e6ea4c6e200ca68b72`  
		Last Modified: Tue, 24 Nov 2026 06:24:55 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4215105df47b079193b0db8817cff91ab9518410d0034fd3e9924b54c98b4e5f`  
		Last Modified: Tue, 24 Nov 2026 06:24:59 GMT  
		Size: 106.6 MB (106585009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1afe2e3741424ec992762adfd680a0cfb9148c21cb143c9a3ab312d736a59`  
		Last Modified: Tue, 24 Nov 2026 06:24:55 GMT  
		Size: 921.0 KB (921028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c856716992eb679efb1af2d3f1788a1afd32dfe3ba9572fd2948c002ceaa91a9`  
		Last Modified: Tue, 24 Nov 2026 06:24:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1e9b50e12c06fe824859103cfde1a8ef47dc313e0a14d520da91de45951d7f`  
		Last Modified: Tue, 24 Nov 2026 06:24:31 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc763b573ae82a788cedb9608c93be8f19e34cd5cd429269c5d91ad1bc567e9`  
		Last Modified: Tue, 24 Nov 2026 06:24:57 GMT  
		Size: 4.2 MB (4168336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e15cfa5789d89a5f51a2b594999ed86dce6ed9b8e72e02cec542be4a9c71d7`  
		Last Modified: Tue, 24 Nov 2026 06:25:00 GMT  
		Size: 104.5 MB (104461161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be34299157862928f0e92b709f66d0a5ae1fda6d57bcba2f3fc2d0154f64981`  
		Last Modified: Tue, 24 Nov 2026 06:24:57 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:66500a48c4e793bca8e8d103be20797df2896b0fbff32dcf61ce774c83e6a6d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 KB (42058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7def4307ecdbd7a7b166083ced0a1b26d09bf14b5a59257b151584db7c357964`

```dockerfile
```

-	Layers:
	-	`sha256:501798b1440bae0b9240493eacf2471107fc0cb375fc33627f15a8bcfe3b1726`  
		Last Modified: Tue, 24 Nov 2026 06:24:55 GMT  
		Size: 42.1 KB (42058 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; arm variant v7

```console
$ docker pull redmine@sha256:59831ef914b5594731426c41c1e60b3c12f510318725f658c04847eb9312dd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260358908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f26faf970d3531bc07a9673aa1112409cb5e3260b8273ebf6d3b62cfc7455f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:41:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:44 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:50:59 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:50:59 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:50:59 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:50:59 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:50:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:50:59 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:50:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:50:59 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:50:59 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 06:45:05 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 06:45:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:45:46 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 06:45:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 06:45:46 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 06:45:46 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 06:45:46 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 06:45:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 06:45:46 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 06:45:46 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 06:45:46 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 06:45:46 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 06:45:48 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 06:47:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 06:47:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 06:47:08 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 06:47:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:47:08 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 06:47:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77e53a9284ae85329154c2646c70f93220eb981553d84dc90bf64f6e3583295`  
		Last Modified: Tue, 24 Nov 2026 05:45:09 GMT  
		Size: 1.2 MB (1235221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c93d94e5411f7c0f106af314fb9d69b099798a202c1191330ec3539f10e1dc`  
		Last Modified: Tue, 24 Nov 2026 05:45:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f88d7da7675907abbcf7db6ad2108570e500ce6c5f29ce27203f1bb3e096da9`  
		Last Modified: Tue, 24 Nov 2026 05:51:09 GMT  
		Size: 37.9 MB (37877476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74739e500375d434c74daf74606404c9cb781ce680ccef9052a33e270264781`  
		Last Modified: Tue, 24 Nov 2026 05:51:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffb54f375541c21847b057f444d4194e08a2a69170d871e3c0b174381e2bf08`  
		Last Modified: Tue, 24 Nov 2026 06:47:23 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f64a64e7c5fe3be7c7d3936c473eb78bf87b92a83b106f8d5bed7485b9662c5`  
		Last Modified: Tue, 24 Nov 2026 06:47:25 GMT  
		Size: 101.4 MB (101438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e7b455f62edd653433249fec611ac49215aba4afdfb847dd3ccc82b7da56a9`  
		Last Modified: Tue, 24 Nov 2026 06:47:22 GMT  
		Size: 916.7 KB (916695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9836a0f783f8333e1d70bafbd080f9fb4df072c27caee526f61994d389277aa3`  
		Last Modified: Tue, 24 Nov 2026 06:47:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8138c71612ac5659fcec2896bc22c645b2a772ac34f68d9d7be0f21e1e0dba`  
		Last Modified: Tue, 24 Nov 2026 06:47:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e65aa0bd0afde9316402405c44f5f61fb66e038d8374094752d6fbb7600b73f`  
		Last Modified: Tue, 24 Nov 2026 06:47:22 GMT  
		Size: 4.2 MB (4168327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1ec408ce04e1f3736a75b67056220955b03f805505fb0836636a5d32651025`  
		Last Modified: Tue, 24 Nov 2026 06:47:25 GMT  
		Size: 88.5 MB (88455724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2261ace77526ce85ae7f5feb07e848b2e7be5770a28921e4903558333d8b1f`  
		Last Modified: Tue, 24 Nov 2026 06:47:05 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:bb56faad0e0357ab71ad3c6d7f410d6f651a0e0c29a7aa6d411297f740c6cf2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 KB (42057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85493c6e5abb2839087594d01ba8b1e93f5394b5fcbc22d28c65ece650b424eb`

```dockerfile
```

-	Layers:
	-	`sha256:733a0cb2355f7a473c5ab58815b704e5d2fc1e59c63a99fbec48938e24a41b22`  
		Last Modified: Tue, 24 Nov 2026 06:47:22 GMT  
		Size: 42.1 KB (42057 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:f44f7658c00ade868f5d5546488e05655a68024460b4ff7af8216e9c53300c6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261465386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44872e569350fcd83a3fff68ab1aa9d0c334a6bdba22e0ac947da693229d78d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:03:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:03:48 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:12:57 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:12:57 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:12:57 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:12:57 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:12:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:12:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:12:57 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:12:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:57 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:12:57 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 05:52:13 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 05:52:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:52:49 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 05:52:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 05:52:49 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 05:52:49 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 05:52:49 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 05:52:49 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 05:52:49 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 05:52:49 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 05:52:49 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 05:52:49 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 05:52:51 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 05:53:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 05:53:38 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 05:53:38 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 05:53:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:53:38 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 05:53:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db79e5fc6b62ee349373e117703c59aeaca4cbab608d24100b9f893cb6288fa`  
		Last Modified: Tue, 24 Nov 2026 05:07:11 GMT  
		Size: 1.3 MB (1259878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6952968c8233ab4b7d99f9347f22c23d9dbba5e825c342bdf4a4256ac42c41a5`  
		Last Modified: Tue, 24 Nov 2026 05:07:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171a2dc81c494ca339a115d7ffa5a92f9e7ca93e54ec5fa4899c6a8d90c9b8ad`  
		Last Modified: Tue, 24 Nov 2026 05:13:07 GMT  
		Size: 42.2 MB (42191392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c40c3c1df310881eb527bad34aa1e98d1a104ec2f2781459367f2b7cf529b90`  
		Last Modified: Tue, 24 Nov 2026 05:13:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e6b4114a643029fa02a67ebaa9205a0385f1f0c68d296e57b8ad026ae16f27`  
		Last Modified: Tue, 24 Nov 2026 05:53:52 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4b5ae152f33429cad82d411d3d2592d3335b6aaa3bc1a6a2ddae513d005129`  
		Last Modified: Tue, 24 Nov 2026 05:53:55 GMT  
		Size: 109.2 MB (109228909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423ab3aad47a522e41cbe275a362c93b76186e723f9618dfb5b382413321e2f4`  
		Last Modified: Tue, 24 Nov 2026 05:53:52 GMT  
		Size: 904.6 KB (904646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34391fe335cb921b3e22c2466f13e8cafcd84c520d3423cbd5b999425151d9d`  
		Last Modified: Tue, 24 Nov 2026 05:53:52 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3171326679d9171522b6f38906268588fb77d4273a47297400d278e599265679`  
		Last Modified: Tue, 24 Nov 2026 05:53:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9222af9953ad47138d90da2a7718a6b3ef6a8e05faea65b8b29d794315064f6`  
		Last Modified: Tue, 24 Nov 2026 05:53:53 GMT  
		Size: 4.2 MB (4168334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1413bf2908d11aa56bd023e99645333915c008be8d65d884aa699217ede1b363`  
		Last Modified: Tue, 24 Nov 2026 05:53:56 GMT  
		Size: 73.5 MB (73510085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189fb6650747907fecd67bd984c27400ee33ec6964262dbd532e5bdeb484540e`  
		Last Modified: Tue, 24 Nov 2026 05:53:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:34a665867e5647ef3382c25eabe0421faaf600dc109fb2b4ecd39a4e807d3730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 KB (42099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e2084662961a0d80df107ee644b64a2bbbec7e42acfa53183675c0ca494890`

```dockerfile
```

-	Layers:
	-	`sha256:136261d6e6bf6e1786020c60a1a271f425dbc60b11645480a67aea1073f2f6a4`  
		Last Modified: Tue, 24 Nov 2026 05:53:52 GMT  
		Size: 42.1 KB (42099 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; 386

```console
$ docker pull redmine@sha256:ce790bee85daae1e2370cc2fa3f70b7e97bbf101d8b83a408ed305baae6ab47d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281893294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc75cff655768cec63178341ba428dc7bfe23ecf9696458b8611b2e1e5c99007`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:02:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:02:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:07:43 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:07:43 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:07:43 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:07:43 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:07:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:07:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:07:43 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:07:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:07:43 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:07:43 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 05:41:33 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 05:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:42:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 05:42:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 05:42:14 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 05:42:14 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 05:42:14 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 05:42:14 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 05:42:14 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 05:42:14 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 05:42:14 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 05:42:14 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 05:42:16 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 05:43:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 05:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 05:43:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 05:43:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:43:45 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 05:43:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddcd46573827b61367608cfe8bfe964e97697c47fc1cdc7df5a546c9879ab25`  
		Last Modified: Tue, 24 Nov 2026 05:05:04 GMT  
		Size: 1.3 MB (1286012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316ba3f3bca0d14cbb3939ff8d4cb4e5ced60d3cae6f89ffde527eecec735c78`  
		Last Modified: Tue, 24 Nov 2026 05:05:04 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e5cd2b38306edf8125f710d37bf6354cda0587e680fa8d4c25fc592a376834`  
		Last Modified: Tue, 24 Nov 2026 05:07:52 GMT  
		Size: 37.8 MB (37766614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465582615b14179041193f62be84c4720e3b7fdd23a4c22cc8c6e16ddf289f9c`  
		Last Modified: Tue, 24 Nov 2026 05:07:51 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952e19b401fc9d4b2e1509abfb2ec8037e0bfa810864faeb1eb813ad97fcd21c`  
		Last Modified: Tue, 24 Nov 2026 05:44:00 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdab7f0ea0ce0021b93c5223bfb1517daa04c031bc708c96a152a27b281fd7`  
		Last Modified: Tue, 24 Nov 2026 05:44:03 GMT  
		Size: 113.4 MB (113403937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544e4824141cbecb4c6735cf65af4cd27dd31e74db4853cb915bd52f6df21313`  
		Last Modified: Tue, 24 Nov 2026 05:44:00 GMT  
		Size: 920.0 KB (919975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146bca3696ddbde317ec3839cf5cf1708fa177bf95691e8dd74dee8778041787`  
		Last Modified: Tue, 24 Nov 2026 05:43:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd956ed9c6806970b8425dcf7a71aeb588d5b48b11f1a599d22b9308d84858f9`  
		Last Modified: Tue, 24 Nov 2026 05:43:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f2570325ba3b4a47be0bee300627661afc8b875484745c244aa71862f3a796`  
		Last Modified: Tue, 24 Nov 2026 05:44:00 GMT  
		Size: 4.2 MB (4168338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109f9666806a7b790d6f58e65b2ba84587f5b0f9e2919563600c33237c70ffd7`  
		Last Modified: Tue, 24 Nov 2026 05:44:04 GMT  
		Size: 93.0 MB (92986381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1f9738727f55ceeb12befa6c153cb62b32f5729fe6a36bb8926806bf566835`  
		Last Modified: Tue, 24 Nov 2026 05:43:32 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:911447726339917c0ab17de8d61cca6a4fbfce5ba5c485d2268e864a504f69ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5afddd117f2251a61397efb0ad36ae92b8e5697b3c1ae6654da6275a45855a`

```dockerfile
```

-	Layers:
	-	`sha256:89b35a8140486b066926d4d20cda5245b1c448e844abe15efe30d2e35e0af85e`  
		Last Modified: Tue, 24 Nov 2026 05:44:00 GMT  
		Size: 41.8 KB (41842 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; ppc64le

```console
$ docker pull redmine@sha256:4e5d68a6a62f57234eef885aec9c14370b68502def00c7b2391c5ef433237539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.8 MB (305761613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db08e8db066459dfdb02aeef7cf46429ea125de2c0d0316561f2c18874fdac47`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 11:37:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 11:37:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 12:01:04 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 12:01:04 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 12:01:04 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 12:01:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 12:01:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 12:01:04 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 12:01:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:01:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 12:01:05 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 16:37:23 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 16:38:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 16:38:49 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 16:38:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 16:38:49 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 16:38:49 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 16:38:49 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 16:38:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 16:38:50 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 16:38:50 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 16:38:50 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 16:38:50 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 16:38:53 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 16:45:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 16:45:36 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 16:45:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 16:45:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 16:45:42 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 16:45:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89727c0728527402d62a3f493cc3b66e9f7b352d6798f72cd61500f417e7bd6`  
		Last Modified: Tue, 24 Nov 2026 11:43:46 GMT  
		Size: 1.3 MB (1306868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be41b6dabb4af2e27fdf8a92b7f7fdcc3c1d6f75caf189db8df28b0584a35a4`  
		Last Modified: Tue, 24 Nov 2026 11:43:45 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744eda886b0b7be3214397c3c6c78452311d22aaa20f0169d2f3b17113c7df33`  
		Last Modified: Tue, 24 Nov 2026 12:01:24 GMT  
		Size: 39.6 MB (39648390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9c3b9921f73a6e47e0f424117ed02f37094a0fd4e4845e0f3ac04af3371c43`  
		Last Modified: Tue, 24 Nov 2026 12:01:23 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d8c5e75e712464e4572aede3d45785f9994aec4b07b350c39041c7767f749b`  
		Last Modified: Tue, 24 Nov 2026 16:46:23 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ab8330b27fbc2000dc4b4fe95cf5ad5230963cdb358454346d0dc5fd0b25b1`  
		Last Modified: Tue, 24 Nov 2026 16:46:27 GMT  
		Size: 118.4 MB (118374149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a62702253739db7df91b4079c7199ce36255fdd1741ed872b0ee530180507ad`  
		Last Modified: Tue, 24 Nov 2026 16:46:23 GMT  
		Size: 910.8 KB (910756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4e0ca061c6279b7ae78142cf9f9fd469271eee85c47914fb115820edc32341`  
		Last Modified: Tue, 24 Nov 2026 16:46:23 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c397f000f5cf55966472dc5ed9d03a40079b05ae56fa49bf5e25c3e8e9570688`  
		Last Modified: Tue, 24 Nov 2026 16:46:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e353307bcf46a31e2a2821de93e0124d9986888a73234afd69d269bc5bcc31e9`  
		Last Modified: Tue, 24 Nov 2026 16:46:25 GMT  
		Size: 4.2 MB (4168336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1a70053076ba621b47901f9a743f2efdc4ca9b1d4e2e031b4948289a33ba72`  
		Last Modified: Tue, 24 Nov 2026 16:46:28 GMT  
		Size: 107.7 MB (107696366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7fdc55ce08ad6b6dee25b75e898d9f74acc685c00b4a6d0639f4bec2ca4a0e`  
		Last Modified: Tue, 24 Nov 2026 16:46:25 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:2bc5fc56e86c161c725923f7831d30f5c92129a935bbfdcaafb6687acffc3048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (41964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceaf2a74d76636fbb97ea8f9148fc4a9d6af38af42933e168f2f0cc095d7e8a6`

```dockerfile
```

-	Layers:
	-	`sha256:8b424b74d3d1ad3c9132d418cb59d439d2d682ae7da0e3d0a9e0f80ad9fd89e7`  
		Last Modified: Tue, 24 Nov 2026 16:46:23 GMT  
		Size: 42.0 KB (41964 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; riscv64

```console
$ docker pull redmine@sha256:20675eec35db8582c8672234c016f784fd9e0f3f1d28a4456de6b2b278e53403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288186526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca4ff0ee411f109061e3125ec82cb3493c32ee593b459a43adc6f8ccacf796d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 04:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 04:20:01 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Sun, 08 Nov 2026 10:10:20 GMT
ENV LANG=C.UTF-8
# Sun, 08 Nov 2026 10:10:20 GMT
ENV RUBY_VERSION=3.4.12
# Sun, 08 Nov 2026 10:10:20 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Sun, 08 Nov 2026 10:10:20 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Sun, 08 Nov 2026 10:10:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Sun, 08 Nov 2026 10:10:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 08 Nov 2026 10:10:20 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 08 Nov 2026 10:10:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 08 Nov 2026 10:10:20 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Sun, 08 Nov 2026 10:10:20 GMT
CMD ["irb"]
# Mon, 09 Nov 2026 15:09:49 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Mon, 09 Nov 2026 15:13:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 15:14:47 GMT
ENV GOSU_VERSION=1.19
# Mon, 09 Nov 2026 15:14:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 09 Nov 2026 15:14:47 GMT
ENV RAILS_ENV=production
# Mon, 09 Nov 2026 15:14:47 GMT
WORKDIR /usr/src/redmine
# Mon, 09 Nov 2026 15:14:47 GMT
ENV HOME=/home/redmine
# Mon, 09 Nov 2026 15:14:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Mon, 09 Nov 2026 15:14:47 GMT
ENV REDMINE_VERSION=6.1.6
# Mon, 09 Nov 2026 15:14:47 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Mon, 09 Nov 2026 15:14:47 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Mon, 09 Nov 2026 15:14:47 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Mon, 09 Nov 2026 15:14:52 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Mon, 09 Nov 2026 16:32:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Mon, 09 Nov 2026 16:32:38 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 09 Nov 2026 16:32:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 09 Nov 2026 16:32:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 16:32:39 GMT
EXPOSE map[3000/tcp:{}]
# Mon, 09 Nov 2026 16:32:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fafae49e50fce070464c1ca31a46ccc27e76bd87cfd8119151226b359d44dc`  
		Last Modified: Sun, 08 Nov 2026 05:36:25 GMT  
		Size: 1.2 MB (1245342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fff510096e56ab5f6a75179e3f9f72834fc249c5fb15ea70cb60bf20bafd41d`  
		Last Modified: Sun, 08 Nov 2026 05:36:24 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bd48f0c0a2347e39c2db14cf07c1fab9bad6acb19f52659ef696418b113774`  
		Last Modified: Sun, 08 Nov 2026 10:12:13 GMT  
		Size: 38.1 MB (38087904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65517c429455f82270acb206e01e7041851840e0dc5ea7cdbe9d0d193b7ab86`  
		Last Modified: Sun, 08 Nov 2026 10:12:08 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bba4058a8ef97d45911dc97a4461b58d8728798998d7df94bf30add51213a0`  
		Last Modified: Mon, 09 Nov 2026 16:35:39 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395e99be2896acdb1506dafe549e72ff834ec442ca2092d802b2b31b1ac42b62`  
		Last Modified: Mon, 09 Nov 2026 16:36:09 GMT  
		Size: 108.0 MB (108042003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4224928307fc3a9d1a53a619814effd996e70b2e526d40a4cce1081a1f2fcb`  
		Last Modified: Mon, 09 Nov 2026 16:35:39 GMT  
		Size: 898.1 KB (898063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58af00c43ec61923e0665340577932b69fcf5305296cfc9ecc5dcccb5eb0ed8c`  
		Last Modified: Mon, 09 Nov 2026 16:35:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0f72e41edf82b45380183dbb43706bc52c01440fd70eb3da0e55b55e3b98c0`  
		Last Modified: Mon, 09 Nov 2026 16:35:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a34523a47e388ac5d6727dda08dad954875f3be455a8aef7c477e40af08f94`  
		Last Modified: Mon, 09 Nov 2026 16:35:42 GMT  
		Size: 4.2 MB (4168336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651af07427dcc4b64974b4d1e45787c12a396f90e74e8e153d02d85c1eda3a94`  
		Last Modified: Mon, 09 Nov 2026 16:36:11 GMT  
		Size: 107.4 MB (107394575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40b41e6bd831e26adbb41165c45a9dadc2e2b27023705e3b92e7c797bd54d25`  
		Last Modified: Mon, 09 Nov 2026 16:35:43 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:07feea51e360507e7cb5b9441ee70b3ecd5affbfdd9112002d2e39d537da11fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (41963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd512443e938123ba1b634b0121ef6352a4016a0b898ced6b6ba3001336ea270`

```dockerfile
```

-	Layers:
	-	`sha256:c4a4647c3d063eef00dd90e4c891511ba772e8d3ba50534c665b2620ae102575`  
		Last Modified: Mon, 09 Nov 2026 16:35:39 GMT  
		Size: 42.0 KB (41963 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; s390x

```console
$ docker pull redmine@sha256:eabc46d3ef2261bcb105af075759907df43c86b34ee9a7871b84000959f0d7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293567324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95be3d7a45828ff484fb66e2c234fa83f879913c4ba9f6c51f7d40e2343d17d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:27:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:27:26 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:29:53 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:29:53 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:29:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:29:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:29:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:29:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:29:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:29:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:29:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:29:54 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 06:20:00 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 24 Nov 2026 06:20:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:20:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 24 Nov 2026 06:20:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 06:20:29 GMT
ENV RAILS_ENV=production
# Tue, 24 Nov 2026 06:20:29 GMT
WORKDIR /usr/src/redmine
# Tue, 24 Nov 2026 06:20:29 GMT
ENV HOME=/home/redmine
# Tue, 24 Nov 2026 06:20:29 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 24 Nov 2026 06:20:29 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 24 Nov 2026 06:20:29 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 24 Nov 2026 06:20:29 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 24 Nov 2026 06:20:29 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 24 Nov 2026 06:20:31 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 24 Nov 2026 06:22:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 24 Nov 2026 06:22:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 24 Nov 2026 06:22:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 06:22:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:22:54 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 24 Nov 2026 06:22:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8c6fdf124b48a28f9ad4c287a35a811b58010a2a3a63ff3d592c5a47922517`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 1.3 MB (1291802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870f047d5c1af0411cfa5875061395b5d4427fa7a755cac1b18af49448f6c3ed`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593dcdd32f90ccc975d532220255c1f3de8c5417ad24cc9f1290803ba1b916de`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 39.3 MB (39321936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cc06b4956b522e35b537674412004b3d63ecadb984936fff143811f2844a4d`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e050912838e924e1a7e1892936ae71679423af971ad3d2774c54bcd7af56fc`  
		Last Modified: Tue, 24 Nov 2026 06:23:15 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e32c5ca30cb4be08d63c92b0d6e6340ff0b25469e2f34e17a335e1164cd001f`  
		Last Modified: Tue, 24 Nov 2026 06:23:17 GMT  
		Size: 111.7 MB (111677427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1156dcd56b663f3098a4d22b8eadce9369f28dadfed2d4ea7c0cf1e95a11ef1`  
		Last Modified: Tue, 24 Nov 2026 06:23:15 GMT  
		Size: 923.8 KB (923781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a6d1e0303a14889652b4e50802d897dae5dd93c7cf6c78132e28096b8c4a0a`  
		Last Modified: Tue, 24 Nov 2026 06:22:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d61fad14219a7642dbedab0fb8247575365a40d623522252b0eb078298c099`  
		Last Modified: Tue, 24 Nov 2026 06:22:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6fa49cc36ca72ec384cf31e946600e1f0bcf56b8f38ec1c0f55a7a407a83de7`  
		Last Modified: Tue, 24 Nov 2026 06:23:15 GMT  
		Size: 4.2 MB (4168325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a84bcaed9c8502030b2b53219b84c9464b7fa45f7750062efe7ea75ad23225`  
		Last Modified: Tue, 24 Nov 2026 06:23:18 GMT  
		Size: 106.3 MB (106269915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea1bf238ac4d63f2f3128458831d8f779647d0b8f53766da0ed757c00a2848d`  
		Last Modified: Tue, 24 Nov 2026 06:22:51 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:b7da6c8888bb71f086ef17653fa5ab644899967a7afa93971cdb90835de1c08b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 KB (41897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf80381073e913dcdb35e421ace421584d18278b59dad7368b7314c30557e568`

```dockerfile
```

-	Layers:
	-	`sha256:315842a63c260b1bad42700e1a1c1a6477383445a997601223fbe6bd3403a254`  
		Last Modified: Tue, 24 Nov 2026 06:23:15 GMT  
		Size: 41.9 KB (41897 bytes)  
		MIME: application/vnd.in-toto+json
