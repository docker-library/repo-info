## `redmine:7-trixie`

```console
$ docker pull redmine@sha256:c6cb16b3485c335822ecd45210a0b48ccf818303d05cb74f5c31784a4d734b5d
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

### `redmine:7-trixie` - linux; amd64

```console
$ docker pull redmine@sha256:4fa5009e43f5925def2e726e8cfb4ad37f1321ce0ccf20c45e6e04944cf42961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.2 MB (294237365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c19ee22b2dc83bd05c4c350aa22a83333a04b7847539faefaf65ceb26b4fb1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:03:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:03:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 02:06:20 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:06:20 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 02:06:20 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 02:06:20 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 02:06:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 02:06:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 02:06:20 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 02:06:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:06:20 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 02:06:20 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:49:34 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:50:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:50:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:50:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:50:07 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:50:07 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:50:07 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:50:07 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:50:07 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:50:07 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:50:07 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:50:07 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:50:10 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:50:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:50:56 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:50:56 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:50:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:50:56 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:50:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1edc00f72f7585b8155b1c2e65507727c4db22ad7529c3a0af2fa837f11a630`  
		Last Modified: Wed, 28 Oct 2026 02:06:29 GMT  
		Size: 1.3 MB (1277396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7baf1016fbd0ee2fca7331c3c877900a7180286624d2c323f2b22a6d3be75dde`  
		Last Modified: Wed, 28 Oct 2026 02:06:29 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35952e3de940f2effdf3504945ea54d6ed3bd0f01df3c9aa8de0daf47d0d0e57`  
		Last Modified: Wed, 28 Oct 2026 02:06:30 GMT  
		Size: 49.7 MB (49688857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e01308830c96e3afa1d240bf41afd9c81a626c48d5b0ab1bf8d7953f1c68eee`  
		Last Modified: Wed, 28 Oct 2026 02:06:29 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503a6747298a06e7f4b65fd2531b2fd91a7c0bb14756ecab998b8806e5cf609b`  
		Last Modified: Tue, 03 Nov 2026 00:51:10 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43a6cd2dbd629a1c8b15f3b0d7402c0b3c8bda53a3cbd22e135125712927c99`  
		Last Modified: Tue, 03 Nov 2026 00:51:13 GMT  
		Size: 111.1 MB (111082116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a615ce6165a3cc32a4065787896504ce910d8a5cbb319ae82e19609202b6145`  
		Last Modified: Tue, 03 Nov 2026 00:51:10 GMT  
		Size: 951.6 KB (951566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ecd48eae90139d742207040cd3693765f4353b54db79906534e4c7f80615428`  
		Last Modified: Tue, 03 Nov 2026 00:51:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3bf76fa4699b530351f15ef6a54f41a5bd1cbffbc22d1232193d1224fafc182`  
		Last Modified: Tue, 03 Nov 2026 00:51:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3e43513f159df72969f6e5b23beabad9a309fc6f409112269225debb0ae076`  
		Last Modified: Tue, 03 Nov 2026 00:51:12 GMT  
		Size: 4.3 MB (4260507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44e0480b8526f1445fc78a577c1a4e36091e3553c5e309eac7d90fad02c7223`  
		Last Modified: Tue, 03 Nov 2026 00:51:15 GMT  
		Size: 97.1 MB (97117565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8855354c8e18919d1bcaf8197adadb5ad468c57dd5ba50803768ca5ab8e8002`  
		Last Modified: Tue, 03 Nov 2026 00:51:13 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:a2d927692d271e385570a79e01500044453e2c3f5992ae3633e0781c6f4dfc16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4007392a0b94cbd1b9dc5f5592cb4384abc58f641c148d2bc80cf697b153bd`

```dockerfile
```

-	Layers:
	-	`sha256:7a0ea0dc1559c2d2fe6588b8582e4f58ac7fb9ce315a4090bc29e8bdce728bd8`  
		Last Modified: Tue, 03 Nov 2026 00:51:10 GMT  
		Size: 43.6 KB (43615 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57811fe8ac4feb0c49e49b02fb52c95816e830bc97167a88c0447e88bc5f5cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280573647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddce7e2609b79d244b150ed487bac35723d05ccfb3d57e43c85b8f0e16635e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:58:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:58:12 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 02:05:15 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:05:15 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 02:05:15 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 02:05:15 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 02:05:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 02:05:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 02:05:15 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 02:05:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:05:15 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 02:05:15 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:50:28 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:51:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:51:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:51:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:51:41 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:51:41 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:51:41 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:51:41 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:51:41 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:51:41 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:51:41 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:51:41 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:51:44 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:54:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:54:36 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:54:37 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:54:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:54:37 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:54:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f91611255226a31b95600f00e4ad88ab1c1eaa80a4c7fccfc54fe9fc9f5a5fe`  
		Last Modified: Wed, 28 Oct 2026 02:02:01 GMT  
		Size: 1.3 MB (1261669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9541b9296cde5b175addaa09f4a45581158acdb7de117acbf896514f974ffb6`  
		Last Modified: Wed, 28 Oct 2026 02:02:00 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3053ce882e2f79b3c7da35fa8dafd47bd55181688460e26a8b1c9ff164a2935f`  
		Last Modified: Wed, 28 Oct 2026 02:05:26 GMT  
		Size: 42.7 MB (42737720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67aa1bc88ee1d463585997032f4d4eea723fad02dff1d8476635852b67f9f5b6`  
		Last Modified: Wed, 28 Oct 2026 02:05:25 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a4c2182e1c171a5bfdbb027f0a9cee721ee6c4d9c8ff43cf9c3eab36c33314`  
		Last Modified: Tue, 03 Nov 2026 00:54:51 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b749a7ae78180246ac1d6b750aaf8d75cc92853774581a56f68dd1d311112360`  
		Last Modified: Tue, 03 Nov 2026 00:54:55 GMT  
		Size: 106.8 MB (106819434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334404f3a468fed540657d51ea686227b7037dbb525792856a81891aa3ac1961`  
		Last Modified: Tue, 03 Nov 2026 00:54:52 GMT  
		Size: 921.2 KB (921211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df75e2acc62e104ab2434575ba6d3757b9d3f68eea529f5bd5c0723464a2a44a`  
		Last Modified: Tue, 03 Nov 2026 00:52:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e56a4b056e6c4e3b05a38e424821cfe01de37165c7ccb761c2c6f7760a6f9d`  
		Last Modified: Tue, 03 Nov 2026 00:52:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cfd8370f96de41417ab33b1c5bc118bdfe76c70c5903781bad072c9e8acdd25`  
		Last Modified: Tue, 03 Nov 2026 00:54:53 GMT  
		Size: 4.3 MB (4260512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c955e336b5b0d37cf58395964c8328f24a714bdfffa9e4e1359433f401b53d1b`  
		Last Modified: Tue, 03 Nov 2026 00:54:56 GMT  
		Size: 96.6 MB (96550311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce518443ffbd40a681d9b9916242b8f5d709dabc237eb8f5199a7e9722c88b47`  
		Last Modified: Tue, 03 Nov 2026 00:54:54 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:98ff6e3c09b4deb6126f0776d488554e03a172bc4dcbd41785e9e2b64e06deee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 KB (43791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abe6bc686e62a7331a75e69c2c7579bea76ecedae0c57f9ed34ea7c06df964a`

```dockerfile
```

-	Layers:
	-	`sha256:79ff78f3d6d83d219b835971a72a19ae4704be7d101effe8379f7ce7924fabbc`  
		Last Modified: Tue, 03 Nov 2026 00:54:51 GMT  
		Size: 43.8 KB (43791 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; arm variant v7

```console
$ docker pull redmine@sha256:c9488a87c56e9eff72cde01918a37f2f7587c27089c241ebaecdfa67ba87dbd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250609768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a48df94cbbc4b0b74fc7157976da105c47e507b6330e1349d29aad1d9220f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:46:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 02:52:52 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:52:52 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 02:52:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 02:52:52 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 02:52:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 02:52:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 02:52:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 02:52:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:52:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 02:52:52 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:49:31 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:50:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:50:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:50:16 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:50:16 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:50:16 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:50:16 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:50:16 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:50:16 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:50:16 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:50:16 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:50:18 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:51:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:51:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:51:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:51:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:51:29 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:51:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311428930f7061c795816bc3250102c44999ee6f2d1b3e7a30b039b838666b58`  
		Last Modified: Wed, 28 Oct 2026 02:49:56 GMT  
		Size: 1.2 MB (1235374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b7f482752a462d927ecc3c27918b5448f9111f6cfff31e84d5faf50ca0c1`  
		Last Modified: Wed, 28 Oct 2026 02:49:55 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725745c0c3cd81015528fef6eba21082ea075025a265608c48fa58f4b3ec2a6d`  
		Last Modified: Wed, 28 Oct 2026 02:53:02 GMT  
		Size: 42.6 MB (42575912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96348615bbb3b3b3dc0f7db2e679ca82fc6878e0c878db96d1630bbfc2080bd`  
		Last Modified: Wed, 28 Oct 2026 02:53:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ce4acdb7c23800e8fe912a0ee6b4b9f63197f9167fa5ba9dd3871e1dbf3393`  
		Last Modified: Tue, 03 Nov 2026 00:51:42 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed20c7db5fa43cc9ee01d3ec179817e987ff1e5629d1aa86e4e4b7b7c50ca5c6`  
		Last Modified: Tue, 03 Nov 2026 00:51:46 GMT  
		Size: 101.7 MB (101675237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d51bc24b5a99fdbedf909edc593b952c6965f513940f9911e1ce3c74c4401c`  
		Last Modified: Tue, 03 Nov 2026 00:51:43 GMT  
		Size: 916.9 KB (916923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91eae667e2c46b1b5b0e29628acc5fd03a8758efdf6f5348a2344aa23a7ef46c`  
		Last Modified: Tue, 03 Nov 2026 00:51:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c744fdee41d90319935b90c639eaf43ee0e38df57b44ce843a56c940844a1f`  
		Last Modified: Tue, 03 Nov 2026 00:51:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7764bb8fee7b68a0ba539e8c9d0d1734e6c6789f560b1f2fcc21ebbdbc36ba3`  
		Last Modified: Tue, 03 Nov 2026 00:51:44 GMT  
		Size: 4.3 MB (4260508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb8f7d32edd278a6256f34f79c3bdfef822a31c5369a64b74d0b9db5e70d7b9`  
		Last Modified: Tue, 03 Nov 2026 00:51:46 GMT  
		Size: 73.7 MB (73669528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb242e256141180861cb38b485bd66c286bcee2d379cea2fa3b760da740bdcfb`  
		Last Modified: Tue, 03 Nov 2026 00:51:22 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:7dae6c83733d9446d6d124b8d78dd6119007e455231f2a72273bb66a96ce5f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 KB (43792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac2df2823e8f51de583ce6e309679bc9e2193c7755c52301320cb8698dd377f`

```dockerfile
```

-	Layers:
	-	`sha256:d27b7861b4c68161b08bdc98b15599818580b5852a86f7c2b38e8bbbd37bece2`  
		Last Modified: Tue, 03 Nov 2026 00:51:42 GMT  
		Size: 43.8 KB (43792 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:cb989e7d8fb0b217d84741ba0c29f3bc049e5e9d8051d1b472583ab5840c39e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293789774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670e60779d87c5a8b72ca32aa750e93ecfa14a63f8261bbd38a4e53a793f253a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:06:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:06:06 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 02:08:37 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:08:37 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 02:08:37 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 02:08:37 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 02:08:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 02:08:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 02:08:37 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 02:08:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:37 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 02:08:37 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:49:30 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:49:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:50:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:50:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:50:05 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:50:05 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:50:05 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:50:06 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:50:06 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:50:06 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:50:06 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:50:06 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:50:08 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:51:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:51:03 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:51:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:51:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:51:03 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:51:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b905863204ec9a4af39203aabb92c8aa1dd25789f144bd1cdf0e1b9ca436101d`  
		Last Modified: Wed, 28 Oct 2026 02:08:48 GMT  
		Size: 1.3 MB (1259364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588677ba769351db2cac7810499ef8fa0dfd92ed0a4c54bd1f1b748c0259a356`  
		Last Modified: Wed, 28 Oct 2026 02:08:47 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868dcfd4c21e05d463ab8ca54d4a4550eae79f8a0e874cd895beaf0e06252448`  
		Last Modified: Wed, 28 Oct 2026 02:08:49 GMT  
		Size: 49.5 MB (49517306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35f406c670b646135638efd090199468eedc00ac8f380f6655954bb5d922228`  
		Last Modified: Wed, 28 Oct 2026 02:08:48 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa765b47254b8477e18db9cf1fd6136422bb8a27e6afd0fe028a71ba9187415c`  
		Last Modified: Tue, 03 Nov 2026 00:51:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe775ac58668fe89ab4d6dc1988993c8439296682f023d51e1aca988b2ebc4a`  
		Last Modified: Tue, 03 Nov 2026 00:51:22 GMT  
		Size: 109.5 MB (109469335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127c24eec9a407c6fb62ee1ccef34649097f140ccb9f20ac2eb62482dd60d600`  
		Last Modified: Tue, 03 Nov 2026 00:51:19 GMT  
		Size: 904.8 KB (904769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322aeebe088480880844f2af1b8ec92a330ccdee7de0e30dc5551fb741c2bff2`  
		Last Modified: Tue, 03 Nov 2026 00:51:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac87d0ea3a51613730586c57bbf6ff3afa62b18eb3c4c253f75daacac06b653`  
		Last Modified: Tue, 03 Nov 2026 00:51:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521bc13d7e50ca7a3aefd0734466c60d356d7a1ef5cd412b75cfa12d301c9246`  
		Last Modified: Tue, 03 Nov 2026 00:51:20 GMT  
		Size: 4.3 MB (4260503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3134259ba9f798faf631cf3a7b54238063530ccee734dea71e8e9d053aba0a4`  
		Last Modified: Tue, 03 Nov 2026 00:51:23 GMT  
		Size: 98.2 MB (98160882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb242e256141180861cb38b485bd66c286bcee2d379cea2fa3b760da740bdcfb`  
		Last Modified: Tue, 03 Nov 2026 00:51:22 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:0ef3163f80bfdf7a28c787b6ad7fe2cbe6c74a2f00815f392345872e69f87711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 KB (43842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb3b45cc8f1de96312df616b8083638ed2a954dac1e6fd8fbe6fecf1e87d43`

```dockerfile
```

-	Layers:
	-	`sha256:ff224278949eda79db1841e123694ed2e8560ad3c3ff768608617023cd4b3468`  
		Last Modified: Tue, 03 Nov 2026 00:51:19 GMT  
		Size: 43.8 KB (43842 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; 386

```console
$ docker pull redmine@sha256:96a131b6aa26cc4d45c231f2c448d634684d43904c1746b6b3f6b3704d9b50be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279842151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6ddf38001b1ec019327f76bd9f61fa7b0ab10af0b547afa7fbb4217acfcbab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:05:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:05:06 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 02:07:36 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:07:36 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 02:07:36 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 02:07:36 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 02:07:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 02:07:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 02:07:36 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 02:07:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:07:36 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 02:07:36 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:49:34 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:50:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:50:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:50:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:50:44 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:50:45 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:50:45 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:50:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:50:45 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:50:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:50:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:50:45 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:50:47 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:52:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:52:53 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:52:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:52:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:52:54 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:52:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2101ef0bb9bd3987d664944e2d83f434996f9d74fde873e5e4b7fc96e7740202`  
		Last Modified: Wed, 28 Oct 2026 02:07:45 GMT  
		Size: 1.3 MB (1285872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940051ca44eac5f2a79b3721dc197a5517d6e119e6806cba65d4db541e2d2a3a`  
		Last Modified: Wed, 28 Oct 2026 02:07:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fce3ae87f3fb92cbc57c382a8283fcfa607bbc62c2060888e6dbb1e72d78acc`  
		Last Modified: Wed, 28 Oct 2026 02:07:46 GMT  
		Size: 42.5 MB (42472002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644d75341f7b36e0a5e3b115a98dd8d9e584519b2356ed76406f12654108058b`  
		Last Modified: Wed, 28 Oct 2026 02:07:45 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d132a04455be6521e3cfdd3a0ffc5c2f000dbe04b4b6814c2a5d791e3a2dd227`  
		Last Modified: Tue, 03 Nov 2026 00:53:08 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f27ca6a8cb4564141f3b9511d35f3755787ab540c3c8dee3c659014a8dfcb30`  
		Last Modified: Tue, 03 Nov 2026 00:53:11 GMT  
		Size: 113.7 MB (113654837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa80bc4123ac7a36f5e7d090af6426aaf5aba079c36f831d151931eb76a54ec4`  
		Last Modified: Tue, 03 Nov 2026 00:53:08 GMT  
		Size: 920.3 KB (920252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cb0ab0ba1299276c6d7423dd368fe54c9c69bb02ce83d451f74e6da2571c7b`  
		Last Modified: Tue, 03 Nov 2026 00:53:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1dd7730984f48db38b513ad4bd7d1a46de115cea25b3ff356980933e19bfbb`  
		Last Modified: Tue, 03 Nov 2026 00:53:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae39a2ab1845e9b5defa77c051d5a204783be6e6b9ad7a69bbb7cddad90a7fbd`  
		Last Modified: Tue, 03 Nov 2026 00:53:09 GMT  
		Size: 4.3 MB (4260491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b6d6632153d28f0748f496dd49cc7070d4573027f4e13e8d026a83f4a122a3`  
		Last Modified: Tue, 03 Nov 2026 00:53:12 GMT  
		Size: 85.9 MB (85875987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b62c62dda693250590e580265ae1a7c1eeb0bcd6465b0527dc4e4b07a42dd41`  
		Last Modified: Tue, 03 Nov 2026 00:52:04 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:b4fe17cb23964b088ab0a6c05460647d7930fe2692d37aaa0addd9da279710e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4a71b54d884697a244f0eb92e9ffa2a9d10dadc25a69311f2699cb35c35824`

```dockerfile
```

-	Layers:
	-	`sha256:49d0a14232408345fb5bdd4c6287df47b981c66aabdbce0f3859a497a6836481`  
		Last Modified: Tue, 03 Nov 2026 00:53:08 GMT  
		Size: 43.6 KB (43553 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; ppc64le

```console
$ docker pull redmine@sha256:33bd1f53915122e495690ca84514d8fa64dd1e38532cf1754f33512c43320113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302762159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956a4d2d320db0f7ec8913fa7d77be73aa9da3c00004c1f04047de54e76ddc4f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:03:38 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:03:38 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 09:03:38 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 09:03:38 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 09:03:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:03:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:03:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:03:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:03:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:03:39 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:48:21 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:50:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:50:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:50:50 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:50:50 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:50:50 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:50:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:50:50 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:50:50 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:50:50 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:50:50 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:50:55 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:55:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:55:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:55:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:55:35 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:55:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1903b39329bb3326eef9943ede10fbbfec5612607829ef7d77df62bacfabfd6d`  
		Last Modified: Wed, 28 Oct 2026 08:51:38 GMT  
		Size: 1.3 MB (1306828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99b99330b4ccf03c46529a4aa02e00c3017985e36d974d62fdcbdf1d3bf66d8`  
		Last Modified: Wed, 28 Oct 2026 08:51:37 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183a91543f672528cacb3c0cf4f262435ab0d67a1c6be43f84ea1126631ebb72`  
		Last Modified: Wed, 28 Oct 2026 09:03:57 GMT  
		Size: 44.5 MB (44530095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba00ca57b7b6911ed77f2d94e939ca08c5380ed8370cf0351a682ca84c05630`  
		Last Modified: Wed, 28 Oct 2026 09:03:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de7e56db8c70f7e4117e5f3e24f4d9a73518c42d0d8a309f37c836d93963f24`  
		Last Modified: Tue, 03 Nov 2026 00:56:05 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3cdd05416702ead9d92ac543f57b82cab83cf818fc0db9c7f8eca29c6056620`  
		Last Modified: Tue, 03 Nov 2026 00:56:09 GMT  
		Size: 118.6 MB (118615548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c935fff08b5ccaac4c99f2d0c54d479b922bcabe93906d0ccaacac32216e468`  
		Last Modified: Tue, 03 Nov 2026 00:56:05 GMT  
		Size: 911.1 KB (911117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c8f986bf89802be45ccd517e7eb0cab781c8001b619da071b27da80e05b380`  
		Last Modified: Tue, 03 Nov 2026 00:56:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2bc078a464b7edf2ccf90363bbb1a2b00de6132b0332a5dcc05682ebbf7ca6`  
		Last Modified: Tue, 03 Nov 2026 00:56:06 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4a9246cdcb9dd65d79823de36e65d095d13dcf30ef06598a6096eec5e5cc61`  
		Last Modified: Tue, 03 Nov 2026 00:56:06 GMT  
		Size: 4.3 MB (4260511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2c7c8bfb902dbb65f62cbad220bdaf1d3f2602ad42575481003b456b0b848f`  
		Last Modified: Tue, 03 Nov 2026 00:56:10 GMT  
		Size: 99.5 MB (99467677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4027d8b5f2ad32c29b00f1f1f90de9492b7e6bbcd5d4505fa0d175a43aa872`  
		Last Modified: Tue, 03 Nov 2026 00:56:07 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:5ee7ff3d34ca51840185dc37dfa3a5062eb9a6d96c74a1903c33d072a102baa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 KB (43693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e81eb6b76afbdeb22534e3e843fea15c34a3f20bb63ca3a9f6360620fb47c0c`

```dockerfile
```

-	Layers:
	-	`sha256:fbf105d07c6721bcb0f4c2d1ed23d77f08f2aa079a7dbd990ab4398062541705`  
		Last Modified: Tue, 03 Nov 2026 00:56:05 GMT  
		Size: 43.7 KB (43693 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; riscv64

```console
$ docker pull redmine@sha256:ef63147f58fa0102465e33a123b379fe9a7b3d92ba107ece8eebed4d56f2d55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286312061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e83439038f08a1dce8b088806434e6a342777e05144870101ee03b3edd17d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Mon, 02 Nov 2026 12:59:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Mon, 02 Nov 2026 12:59:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Mon, 02 Nov 2026 16:25:30 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 16:25:30 GMT
ENV RUBY_VERSION=4.0.9
# Mon, 02 Nov 2026 16:25:30 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Mon, 02 Nov 2026 16:25:30 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Mon, 02 Nov 2026 16:25:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Mon, 02 Nov 2026 16:25:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Nov 2026 16:25:30 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Nov 2026 16:25:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 16:25:30 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Mon, 02 Nov 2026 16:25:30 GMT
CMD ["irb"]
# Wed, 04 Nov 2026 02:15:49 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 04 Nov 2026 02:19:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 02:20:56 GMT
ENV GOSU_VERSION=1.19
# Wed, 04 Nov 2026 02:20:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 04 Nov 2026 02:20:56 GMT
ENV RAILS_ENV=production
# Wed, 04 Nov 2026 02:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 04 Nov 2026 02:20:56 GMT
ENV HOME=/home/redmine
# Wed, 04 Nov 2026 02:20:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 04 Nov 2026 02:20:57 GMT
ENV REDMINE_VERSION=7.0.3
# Wed, 04 Nov 2026 02:20:57 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Wed, 04 Nov 2026 02:20:57 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Wed, 04 Nov 2026 02:20:57 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 04 Nov 2026 02:21:01 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 04 Nov 2026 03:23:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 04 Nov 2026 03:23:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 04 Nov 2026 03:23:55 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 04 Nov 2026 03:23:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Nov 2026 03:23:55 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 04 Nov 2026 03:23:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a9813cfac66ec7d605f7871a488d2fab124c1e49585498ba53bd40d1315531`  
		Last Modified: Mon, 02 Nov 2026 14:14:48 GMT  
		Size: 1.2 MB (1245319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41781d0d0ea59227d3efcc783ef926e11b3b22c2b71a4d0964d21a6896e9a8c8`  
		Last Modified: Mon, 02 Nov 2026 14:14:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c628e7470d8891bd1c41ba9221fcece8f051ca5efc28a3180d75a18b55dfc8b`  
		Last Modified: Mon, 02 Nov 2026 16:27:24 GMT  
		Size: 44.2 MB (44224201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f7926018974a99aba5275875edf8e044d5b59372abe9250f2477c0f05951eb`  
		Last Modified: Mon, 02 Nov 2026 16:27:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f96a249b87b86741cf2d2db5da58002110da428043700d57fe6dda0eb26688`  
		Last Modified: Wed, 04 Nov 2026 03:26:54 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238cc2384c353eabdc6d9ba68dea91bdb12cf952fcd6392d39beb237061260f5`  
		Last Modified: Wed, 04 Nov 2026 03:27:24 GMT  
		Size: 108.3 MB (108286191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0c9976424b3f52b2ee5808931eea0886bde0ce683902c084f704be9fe930e6`  
		Last Modified: Wed, 04 Nov 2026 03:26:54 GMT  
		Size: 898.3 KB (898311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f160d9c0bee9e2f2831dc451b037eed5a9654c7de9c3dd8c70ec289d87a3afd`  
		Last Modified: Wed, 04 Nov 2026 03:26:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0424fd8bd00d2f0dec1ce7804b65842dfa80d2a753c5f509ecd34a2128a32d`  
		Last Modified: Wed, 04 Nov 2026 03:26:55 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2dd24920b10df77df4fc6f52f6bf681afd8b3822cc63dc07141b7a963429c6`  
		Last Modified: Wed, 04 Nov 2026 03:26:58 GMT  
		Size: 4.3 MB (4260511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec1e6ab79b7702eafc5c4862a82e04e056ccb03cf83e7271e31e8b15b6eebe`  
		Last Modified: Wed, 04 Nov 2026 03:27:25 GMT  
		Size: 99.0 MB (99047736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96213a2e77dfd0a1b2357e39f1b844dad4a763a6154a8fa5ceceb7093fef26a7`  
		Last Modified: Wed, 04 Nov 2026 03:26:58 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:b7d1e6ba64ecf00520043cec1e12ae51a7da56ab1ac4bd47c1ee83f5e7f8afb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 KB (43693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70659ab3f3454fe834a4d9d841ea21a4751c5f3e0bc666e923886514a0270229`

```dockerfile
```

-	Layers:
	-	`sha256:f9dc557ebdc5921d3bc5518e3fed278f885ba06d27f933aa4ad69fe43e8851e0`  
		Last Modified: Wed, 04 Nov 2026 03:26:54 GMT  
		Size: 43.7 KB (43693 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; s390x

```console
$ docker pull redmine@sha256:3187eb7c3997be6eb86966ae77ff17543f659a88ac4c7160c6f4123bfd382ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.1 MB (291110595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528dbe454419305c04db396d55f019a7f2b3b39d88c0c522dd068e0d01d30b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:42:30 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 03:47:56 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 03:47:56 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 03:47:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 03:47:56 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 03:47:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 03:47:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 03:47:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 03:47:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 03:47:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 03:47:56 GMT
CMD ["irb"]
# Tue, 03 Nov 2026 00:48:29 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 03 Nov 2026 00:49:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:49:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:49:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:49:24 GMT
ENV RAILS_ENV=production
# Tue, 03 Nov 2026 00:49:24 GMT
WORKDIR /usr/src/redmine
# Tue, 03 Nov 2026 00:49:24 GMT
ENV HOME=/home/redmine
# Tue, 03 Nov 2026 00:49:24 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 03 Nov 2026 00:49:24 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 03 Nov 2026 00:49:24 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 03 Nov 2026 00:49:24 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 03 Nov 2026 00:49:24 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 03 Nov 2026 00:49:26 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 03 Nov 2026 00:52:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 03 Nov 2026 00:52:53 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 03 Nov 2026 00:52:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:52:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:52:53 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 03 Nov 2026 00:52:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bb93f01581d184f456a413bb35b5e3554ea9c9702125eeb92d77992e319f5e`  
		Last Modified: Wed, 28 Oct 2026 03:45:31 GMT  
		Size: 1.3 MB (1292033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d947c7b2e90de944cbc6c315af8c35d4f2463d07ee16f55fa036f7b1ad5f31`  
		Last Modified: Wed, 28 Oct 2026 03:45:30 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c8141c6f79b4f07516895b740b7cb9308363c1e4de19d903fd2c14b30646b0`  
		Last Modified: Wed, 28 Oct 2026 03:48:10 GMT  
		Size: 44.4 MB (44350861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b5ae21cc2c02351347fe6d79d5df638df8665e49a8193955e46afad2f9b32e`  
		Last Modified: Wed, 28 Oct 2026 03:48:09 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ea82b0d5c43048d046c10e8980be9adcf31c4be1fc01b2be295c0c5dd65a75`  
		Last Modified: Tue, 03 Nov 2026 00:53:16 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7856ae70d3f8fb2101c6de16aa049e8bf56765bece6af6eba3ba7cf883337ec7`  
		Last Modified: Tue, 03 Nov 2026 00:53:18 GMT  
		Size: 111.9 MB (111916916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8129d2100409b5ac105a17726bd5e4a129362e9cbc8def829897ea4f88e7968`  
		Last Modified: Tue, 03 Nov 2026 00:53:16 GMT  
		Size: 924.1 KB (924134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e90db059a462f4dd8999d35958fb667f29a26a018e171a2e261a12d93c6b3cd`  
		Last Modified: Tue, 03 Nov 2026 00:53:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddeba903554c4ade70aef1f0eceac63709e22f32fc831834e66f7b5595169e9`  
		Last Modified: Tue, 03 Nov 2026 00:53:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9d3546330139fccbe27abe3c14a1dd475eaae7de2d1eb53e5b6996f39fa267`  
		Last Modified: Tue, 03 Nov 2026 00:53:17 GMT  
		Size: 4.3 MB (4260510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c803a88c31fa360fa77e0a7dac76586047d787d42538806c8fb0d49525e2ab03`  
		Last Modified: Tue, 03 Nov 2026 00:53:19 GMT  
		Size: 98.4 MB (98439100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada05a8a5892cae535dbf4f0f2ec8c12b90c131e1c10362bd5bd17b0929309fd`  
		Last Modified: Tue, 03 Nov 2026 00:53:18 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:7f7c7efeca59b080c37fd18228d15b6ba19330501cf69e21f5781d4c85953512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3321f308ee2289fc37f44107406f9a780a14eed52e67078b33bb98c2cd66be80`

```dockerfile
```

-	Layers:
	-	`sha256:6a1cfe6615efbc7193e35243f82ebe52670e0b7593f8296c6045fc389a69d50d`  
		Last Modified: Tue, 03 Nov 2026 00:53:16 GMT  
		Size: 43.6 KB (43615 bytes)  
		MIME: application/vnd.in-toto+json
