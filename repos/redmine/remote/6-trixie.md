## `redmine:6-trixie`

```console
$ docker pull redmine@sha256:df99e23e481281e3570eb7eb532655b0031f7a8c7195fe82d8b305b42882da73
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
$ docker pull redmine@sha256:72fb334e92774e4655273321f5c83c6d498427e1447f730561399ff07bcca184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264073915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e6486c179e964b7202e4e5a1aa34f252d43a2e553990953fd517f9a4155150`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:43:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:43:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:45:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:45:57 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:45:57 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:45:57 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:45:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:45:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:45:57 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:45:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:45:58 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:45:58 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 17:02:42 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:03:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 17:03:18 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:03:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:03:18 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:03:18 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:03:18 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:03:18 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:03:18 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:03:18 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:03:18 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:03:18 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:03:20 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:04:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:04:17 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:04:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:04:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:04:17 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:04:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f34670671c118d181d27377832c9a1c490da15170d6c2965c32a041ea8fa9b`  
		Last Modified: Fri, 23 Oct 2026 16:46:06 GMT  
		Size: 1.3 MB (1277394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147bd1b57e1b680bda8713886f4dfb2406c2de71a5af75ce8043d7a0686e4c57`  
		Last Modified: Fri, 23 Oct 2026 16:46:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d7b90bc2c1268b860ce5633245a89941a4a62278dd7ad67677bfe51edd4fc0`  
		Last Modified: Fri, 23 Oct 2026 16:46:07 GMT  
		Size: 42.2 MB (42198186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b70102fb806464f69d1da8b4b82dc0caccccf52f66e11c79de31acb890ce0c1`  
		Last Modified: Fri, 23 Oct 2026 16:46:06 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f700bbbd38f67c732ddfce19fc96b1df88392b696772508b1a5da57b2b6c736`  
		Last Modified: Fri, 23 Oct 2026 17:04:33 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30399daf04d7df26b809f7163fa3779f966b5bf84dbcb991ba8582e91b5d737`  
		Last Modified: Fri, 23 Oct 2026 17:04:36 GMT  
		Size: 111.1 MB (111077871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6518b05343dcfe8f0f159b9eee2a029329b1839047c5022af839ad104c0b9d`  
		Last Modified: Fri, 23 Oct 2026 17:04:33 GMT  
		Size: 951.6 KB (951634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf9a92161f9e13c4f8281671648c0403112f7d48029fc7866ec55b089c6ac07`  
		Last Modified: Fri, 23 Oct 2026 17:04:33 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45613c5a414af4e0cf67bf66c963a5e311a32a1207347e1f5b408f1aec8c9bc6`  
		Last Modified: Fri, 23 Oct 2026 17:04:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ca046a1c58e1ad6fc970082e9805117d84a0f354501e41d8bde4fa35cf5a8d`  
		Last Modified: Fri, 23 Oct 2026 17:04:35 GMT  
		Size: 4.2 MB (4162297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c5c94d2aeac406bff2c78a0117ffcc5de452047b4e995a6c02e05386021a48`  
		Last Modified: Fri, 23 Oct 2026 17:04:37 GMT  
		Size: 74.6 MB (74558839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a6144cf5e6005f1ef27f53afdbd65ecdafc32750c20ac0c62237f823e722d3`  
		Last Modified: Fri, 23 Oct 2026 17:04:36 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:328b2f9e2d3d3c50e8704958d78ddda7cf8b3b122f8be85439264dcba8f12b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 KB (41895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed99f9ad88eaea035d892a5e691bde6ed923cb43ed71690edc597908d09015c`

```dockerfile
```

-	Layers:
	-	`sha256:85bdf6a2c94dc35675a428f1ea23dee559d90a131c3eecfc1819d49ceb7f5fe0`  
		Last Modified: Fri, 23 Oct 2026 17:04:33 GMT  
		Size: 41.9 KB (41895 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; arm variant v5

```console
$ docker pull redmine@sha256:51b13eb0303c77cf17f33c6df40d39f63dfebd9c39c41b549b9c54a602510d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282479588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ea26bb1b5b0df2d6c91913d1f3f993a22a45e69f732aff154d0fed1007ea6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:48:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:48:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:51:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:51:29 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:51:29 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:51:29 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:51:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:51:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:51:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:51:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:29 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:51:29 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 16:59:52 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:00:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 17:00:51 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:00:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:00:51 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:00:51 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:00:51 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:00:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:00:51 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:00:51 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:00:51 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:00:51 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:00:54 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:03:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:03:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:03:51 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:03:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:03:51 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:03:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece792e3062c5f372b1afbe0404a4dfd03229b4cd34d450063ea1c97aafb7afc`  
		Last Modified: Fri, 23 Oct 2026 16:51:38 GMT  
		Size: 1.3 MB (1261661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7380c41f5dc2447ae4a0f0b224443a8a2b535b8e64660041582f1664b7d947`  
		Last Modified: Fri, 23 Oct 2026 16:51:38 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007236fbcc6209cd95b4eda38ec3859821352451dca4bc89f95bab071772137`  
		Last Modified: Fri, 23 Oct 2026 16:51:39 GMT  
		Size: 38.0 MB (37975584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a1c3c587f571ae267de13bec267a0e637e9f108af09cc2e83f8be76d9afb6c`  
		Last Modified: Fri, 23 Oct 2026 16:51:38 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03aed9b5345a04550435483bca480bc434fce653b15e5fdba309d4b6b47253c7`  
		Last Modified: Fri, 23 Oct 2026 17:04:07 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65d24b58a756b1cdd39f2519c75fe9afacb874f372a9bd02bc2abb221775be8`  
		Last Modified: Fri, 23 Oct 2026 17:04:09 GMT  
		Size: 106.8 MB (106823448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af784e95b451bfd495c32b6d416491ba91aba6bd68cd014ea51744cd22f1a73`  
		Last Modified: Fri, 23 Oct 2026 17:04:07 GMT  
		Size: 921.2 KB (921198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb65214637958c0adb0aaffb8e4b42d40a553d9d63d5f8ed1efe60c09c7ba302`  
		Last Modified: Fri, 23 Oct 2026 17:04:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1250fd2dc02730475818a4720cb1f8c44665b12b15e484c47790a116510c4945`  
		Last Modified: Fri, 23 Oct 2026 17:04:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95730b8da6728a3c9e180677a40db322eedb9924c4a66e92d11225d5c8fc421`  
		Last Modified: Fri, 23 Oct 2026 17:04:08 GMT  
		Size: 4.2 MB (4162292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0114cb50435a582fb318378718cde50c4cc5e56329f3e72ed6da12d180e005`  
		Last Modified: Fri, 23 Oct 2026 17:04:11 GMT  
		Size: 103.3 MB (103323497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d4a97cd32e0849d4a4dcc19d1fb472a527f419ddaa4c8dd6a90034bbd74354`  
		Last Modified: Fri, 23 Oct 2026 17:04:09 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:00b8640327bfab51e54ddb2c81fbbac50c9403ebc02bea93fa38abf4f3dd3409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 KB (42058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95886853f3257097f29ebe08701d22e660c382c1517881e12de381955c468538`

```dockerfile
```

-	Layers:
	-	`sha256:7b6ad9dee93942940bb1a622dc018d08adb34c2cd433a764ae601f259ca72529`  
		Last Modified: Fri, 23 Oct 2026 17:04:07 GMT  
		Size: 42.1 KB (42058 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f15c0975c4b1566c90c088e3bfc68be8844d62cf9047b0a9b8084cf4852b1f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261518301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9afc08b209aa5ca3468645961f602df1d7e27aff307794c4dff947bf9ac0d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:51:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:51:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:54:16 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:54:16 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:54:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:54:16 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:54:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:54:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:54:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:54:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:54:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:54:16 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 16:59:43 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:00:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 17:00:31 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:00:31 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:00:31 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:00:31 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:00:31 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:00:31 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:00:31 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:00:31 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:00:31 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:00:34 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:02:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:02:06 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:02:06 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:02:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:02:06 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:02:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4f8e109eb988579e4c7793379ccb1ff07e33fc7d7987646c556f948d680c21`  
		Last Modified: Fri, 23 Oct 2026 16:54:25 GMT  
		Size: 1.2 MB (1235366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43edae5ad717ff84bda72440dd081fe799cdfcd7f3d49810a6722621dd37b636`  
		Last Modified: Fri, 23 Oct 2026 16:54:25 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5add1c8d64cecbed2956f5c6c81ab3a05e20b7e2969547cb1d2c96fc67967b9b`  
		Last Modified: Fri, 23 Oct 2026 16:54:26 GMT  
		Size: 37.8 MB (37838414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64189356a297dec2aa42a92062ddf662912e234b62193db741e4b92a856e7c9d`  
		Last Modified: Fri, 23 Oct 2026 16:54:25 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a68b231ead0eb6e3b729efd5c7b651e719a1971638b2019db800447a5bc2ae9`  
		Last Modified: Fri, 23 Oct 2026 17:02:21 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926b03d58a42e61f34b08590966dc20d3913dfc174150518231b3f6418e0caea`  
		Last Modified: Fri, 23 Oct 2026 17:02:23 GMT  
		Size: 101.7 MB (101660985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9a5212eb25b9d653e7595c8f273be6ed80680d1aedb22da1cc6dbe7ff72e76`  
		Last Modified: Fri, 23 Oct 2026 17:02:21 GMT  
		Size: 916.9 KB (916892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e756955895841c10b57fc2f726f1d7564d6b7d435e8cba79d133b920304f498c`  
		Last Modified: Fri, 23 Oct 2026 17:01:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446f13b16d3b1074e60dc49bc9a9c58681955a9dcfc33307ece2188d29999a11`  
		Last Modified: Fri, 23 Oct 2026 17:01:28 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6946dc23b397e568eecb68b2b15fc14cc200e327fcd66eec0651aebc0a8f3d65`  
		Last Modified: Fri, 23 Oct 2026 17:02:21 GMT  
		Size: 4.2 MB (4162305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1d39293f1f951cf86231d0e662ef17c12ae4c9c930edbe85634a8a400e7e23`  
		Last Modified: Fri, 23 Oct 2026 17:02:24 GMT  
		Size: 89.4 MB (89441833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f667fb3ed8d3185e8e35dc95f21989c7e35c3da4a95054b1ae8a65df69cf7a78`  
		Last Modified: Fri, 23 Oct 2026 17:02:22 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:d94394a7b962c1631ce8a31bbc7027c1b55205709078dd13418de4fc66694130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 KB (42057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f298b38b614451b04fe4eb4476332b526cafc345843d3093fae9aaddb31b5f28`

```dockerfile
```

-	Layers:
	-	`sha256:c60383c7aab1caa468a37b4b1df5a92bc7a5e0d254d1538e5305a3c3a1652a59`  
		Last Modified: Fri, 23 Oct 2026 17:02:20 GMT  
		Size: 42.1 KB (42057 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:f45bd8e331ae41f2833382b6c1b224b10317db104b68f9cafd0414defdf3db5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262519896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d10590d618258c93550e8a45c73439cda7b9630930affdb9fdacbfebcfc48e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:44:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:44:14 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:46:49 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:46:49 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:46:49 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:46:49 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:46:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:46:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:46:49 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:46:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:46:49 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:46:49 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 17:00:07 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:00:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 17:00:45 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:00:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:00:45 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:00:45 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:00:45 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:00:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:00:45 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:00:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:00:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:00:45 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:00:48 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:02:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:02:02 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:02:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:02:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:02:02 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:02:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50b52518b6f9cc50a08587284c54ed4e8aa1178d545517cc4caa559eca9adfb`  
		Last Modified: Fri, 23 Oct 2026 16:46:59 GMT  
		Size: 1.3 MB (1259353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db5dd19140d67ad6e70d13547d2ee79f101da38fec57336264277708e1b7e54`  
		Last Modified: Fri, 23 Oct 2026 16:46:52 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d744ccfa91336d2f6c514263ccf98447b6c3043182c31f08dd798de6ffce1368`  
		Last Modified: Fri, 23 Oct 2026 16:47:00 GMT  
		Size: 42.2 MB (42150376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e6bd341082237c7591973368f0eaf06f085b66fd84daf5d6fc5e15da03b24`  
		Last Modified: Fri, 23 Oct 2026 16:46:58 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7106b38eb3d4808b56d6d94730848314d536104af6a0375b36d5ce49a03c03a`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1532bd25f8f2b5e83350675642da2fa49c12de923cd2af55e9d357007d21da53`  
		Last Modified: Fri, 23 Oct 2026 17:02:20 GMT  
		Size: 109.5 MB (109468673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5777f55f255dfa5bf30d9385cb157fc060f4a844107f95deff7b70e8250d0b`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 904.9 KB (904863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be658f675e1e8d8ff496ac845a61dd9242149d02ed8e0d254cec4261b3fe2cd4`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeee924d1526b09956d4359193a22c01e13eaa5fe35a5e3e42e57769840269cd`  
		Last Modified: Fri, 23 Oct 2026 17:02:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9574975f13e52f9f8b87b07cdc48069b3a138f702c4f9c0ee8ad3b809919f57f`  
		Last Modified: Fri, 23 Oct 2026 17:02:18 GMT  
		Size: 4.2 MB (4162289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa308d62ff0aef384624d3b5d594664f7606b7bc3d474b31d0a457df26b2329`  
		Last Modified: Fri, 23 Oct 2026 17:02:21 GMT  
		Size: 74.4 MB (74369749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96476433d1ff099378f7225540e7aa05090251036cb70dc1f5daf0561331cfcc`  
		Last Modified: Fri, 23 Oct 2026 17:02:20 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:bce6f7a226234bf9f3759132886172e4b071373da95707c5f989316c6fb560cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 KB (42099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a62d111481770a1e78c8bbfa1030cb0fd7eeedf5960924a43d38129419e0e3`

```dockerfile
```

-	Layers:
	-	`sha256:d1787c6fcd125068bc554638732d609370b0aba3ae732a09cdc9a9850f55ad20`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 42.1 KB (42099 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; 386

```console
$ docker pull redmine@sha256:959a9a397c575be0ad3ed2ed5d5ac2ff4e99cb5acad480700de3a85fb549ce20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280920952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09ee4ad2c44284344f388d84726e88edd4c34f585ee3588f3de6e51d714eca7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:42:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:44:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:44:26 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:44:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:44:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:44:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:44:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:44:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:44:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:44:27 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:44:27 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 16:50:27 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 16:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:51:04 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 16:51:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 16:51:04 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 16:51:04 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 16:51:04 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 16:51:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 16:51:04 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 16:51:04 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 16:51:04 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 16:51:04 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 16:51:07 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 16:52:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 16:52:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 16:52:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 16:52:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:52:29 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 16:52:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7916d396be40447be605a156bb4c430d66904d13edcbcf5d7df39be2f09cb5c5`  
		Last Modified: Fri, 23 Oct 2026 16:44:35 GMT  
		Size: 1.3 MB (1285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e02538a1caead471eb3913a3b1297b0980daec1ec6f6f222edcb441f8032f1`  
		Last Modified: Fri, 23 Oct 2026 16:44:35 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8fdecdb66ae323b9a1039c5155e8f90912a2b0e67d72983d4d9ea53322f4f7`  
		Last Modified: Fri, 23 Oct 2026 16:44:36 GMT  
		Size: 37.7 MB (37731466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e68a861086c5e6d4c7ba616413574ac7a305f51d739b4e4680e37ff4e22532`  
		Last Modified: Fri, 23 Oct 2026 16:44:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170c5a87a291ecb56a985eda46cbe8784838195c4020cd23489e2da17763b189`  
		Last Modified: Fri, 23 Oct 2026 16:52:43 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2822abeac6f90cfadd86f7212f2749518d0795491d7557c51361a81c92d3efa7`  
		Last Modified: Fri, 23 Oct 2026 16:52:46 GMT  
		Size: 113.6 MB (113631875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d5b405c7e0038593ebd1838215ecd66ff16b077acf0485a50421f6c9ee8f35`  
		Last Modified: Fri, 23 Oct 2026 16:52:44 GMT  
		Size: 920.3 KB (920289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097e2b18368b36b9ac97b5860d6bc38fdd4423cfa404ad9fa4575088999329af`  
		Last Modified: Fri, 23 Oct 2026 16:52:44 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41586daa2c2e30fe85c631fda3d45da952fa11ca079a1c5d8b1b77d76adf7c18`  
		Last Modified: Fri, 23 Oct 2026 16:52:45 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f434be02267736e60c4bba2914b6c38b036c525c9a9ead0877f0227c519272c`  
		Last Modified: Fri, 23 Oct 2026 16:52:45 GMT  
		Size: 4.2 MB (4162304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0d6f505e40f8785625c7523c60fdcad0a8f448267c26e2b808158c456e63ee`  
		Last Modified: Fri, 23 Oct 2026 16:52:47 GMT  
		Size: 91.8 MB (91831495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cf7fbb9e900cff063597dae1f02e82b29d7a94e6fd5f1b1e885158862d9de4`  
		Last Modified: Fri, 23 Oct 2026 16:52:46 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:f2cd6bad279acba2ad98b5dc9bc75e886aa659316f1217afcce82ae7912829ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2f97c3d170cef879c5c71eee84b61e271c95bd1e6e8496ee73e0772c45f260`

```dockerfile
```

-	Layers:
	-	`sha256:d6f165b46a1a685903d926ed5cb8b7c335f757a17156630f49fe53787e97b35b`  
		Last Modified: Fri, 23 Oct 2026 16:52:43 GMT  
		Size: 41.8 KB (41843 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; ppc64le

```console
$ docker pull redmine@sha256:4c67f4e56306ea62546793d30258f53d84a3e646edff1b01b499516186e14fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.8 MB (304810884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51858e3de082f3ddd5ceabcb350c3237929f74d1d84fd6ce30945866b2df0f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:00:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 09:00:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 18:19:54 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:19:54 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 18:19:54 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 18:19:54 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 18:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 18:19:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 18:19:54 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 18:19:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:19:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 18:19:54 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 21:04:08 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 21:05:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 21:05:49 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 21:05:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 21:05:49 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 21:05:50 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 21:05:50 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 21:05:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 21:05:50 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 21:05:50 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 21:05:50 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 21:05:50 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 21:05:53 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 21:11:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 21:11:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 21:11:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 21:11:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 21:11:21 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 21:11:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd616c88e347abb97c15c5cb8e8ea027fc5a14b676c481f0d449c59f906a83b`  
		Last Modified: Wed, 21 Oct 2026 09:07:46 GMT  
		Size: 1.3 MB (1307860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b7c3d1b9ec57b7999192d84b91ec8a7127d77cd15f6e6eb781bf8a25b50ede`  
		Last Modified: Wed, 21 Oct 2026 09:07:46 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55607ebd3a8d6d519bf720654c766ba6236b84f408a2809805c9981f5bff5738`  
		Last Modified: Fri, 23 Oct 2026 18:20:25 GMT  
		Size: 39.6 MB (39630239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964813ad7945b8ce3a7542f568838d7c6f0135867b89b64163df0a79fc9e807e`  
		Last Modified: Fri, 23 Oct 2026 18:20:24 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b95cfebd294e885fdc2c9d83ef09bf2ad0ec41264f36cb0fa55ec280b5ba64`  
		Last Modified: Fri, 23 Oct 2026 21:11:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87997739204f8c5d1a5a2c7e2cac1b48c0798eb1af2f4f4603de6837af0d8f59`  
		Last Modified: Fri, 23 Oct 2026 21:11:58 GMT  
		Size: 118.6 MB (118607921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d832c636da507c96ff3007e608ec621c6b80e1ac5451b5856cb7ffec9a65f3`  
		Last Modified: Fri, 23 Oct 2026 21:11:55 GMT  
		Size: 911.2 KB (911169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b296425b1034c4f6de0006ac7b5d6089fa5733f296daf6bda8c0a9c81de43041`  
		Last Modified: Fri, 23 Oct 2026 21:11:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdb189b50dcb41cce85b13b8935c72786f4a77e8394e14441eeadf34cd8ac95`  
		Last Modified: Fri, 23 Oct 2026 21:11:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd0704b2900ec54e964eb0cdcd9c0b73a97906c2eb33079879302381afb6b06`  
		Last Modified: Fri, 23 Oct 2026 21:11:56 GMT  
		Size: 4.2 MB (4162300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d450f0397bdbd959254e4c12c8cac66f121353fa7165083cc4100be047c640b7`  
		Last Modified: Fri, 23 Oct 2026 21:12:00 GMT  
		Size: 106.5 MB (106535342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e0d1e3e21ea641d35baa12e4e23d6b74bfc953f3bbae31e6a90cf5b02af3b7`  
		Last Modified: Fri, 23 Oct 2026 21:11:57 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:d4051a36b748eb94aeacd2b258ae60da44d36f80ec4739a6cbc4727d926f77ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (41964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13c907d9adaf5adb8ac6fe7d75b365e7726eb1376faf10128526dd570491c06`

```dockerfile
```

-	Layers:
	-	`sha256:d5e7b428d21b89de3694b0d177f336932212da8620c3ff251f5cfa4c41cbf984`  
		Last Modified: Fri, 23 Oct 2026 21:11:54 GMT  
		Size: 42.0 KB (41964 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; riscv64

```console
$ docker pull redmine@sha256:55c1d82b8129b366af16c156114ee9fe67f114f9e51b20129d849fea04e6219c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (288005573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e1de40f30f22d2394ca246dcecbb38d5707980dc724fb2ad6d31fb1d8fad2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Fri, 09 Oct 2026 12:45:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 09 Oct 2026 12:45:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 09 Oct 2026 17:21:25 GMT
ENV LANG=C.UTF-8
# Fri, 09 Oct 2026 17:21:25 GMT
ENV RUBY_VERSION=3.4.11
# Fri, 09 Oct 2026 17:21:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Fri, 09 Oct 2026 17:21:25 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Fri, 09 Oct 2026 17:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 09 Oct 2026 17:21:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 09 Oct 2026 17:21:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 09 Oct 2026 17:21:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Oct 2026 17:21:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 09 Oct 2026 17:21:26 GMT
CMD ["irb"]
# Mon, 12 Oct 2026 17:21:30 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Mon, 12 Oct 2026 17:25:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 17:26:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 17:26:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 17:26:32 GMT
ENV RAILS_ENV=production
# Mon, 12 Oct 2026 17:26:32 GMT
WORKDIR /usr/src/redmine
# Mon, 12 Oct 2026 17:26:32 GMT
ENV HOME=/home/redmine
# Mon, 12 Oct 2026 17:26:33 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Mon, 12 Oct 2026 17:26:33 GMT
ENV REDMINE_VERSION=6.1.5
# Mon, 12 Oct 2026 17:26:33 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Mon, 12 Oct 2026 17:26:33 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Mon, 12 Oct 2026 17:26:33 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Mon, 12 Oct 2026 17:26:38 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Mon, 12 Oct 2026 18:44:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Mon, 12 Oct 2026 18:44:16 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 12 Oct 2026 18:44:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:44:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:44:17 GMT
EXPOSE map[3000/tcp:{}]
# Mon, 12 Oct 2026 18:44:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0217fbbc07111cf1931229397686a47c3eef91fdb1930f27d317f293c6b73c`  
		Last Modified: Fri, 09 Oct 2026 14:58:00 GMT  
		Size: 1.3 MB (1250295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c7e0c4738b607bc46bdadebae3b27d8f4919dc923240d3f7c85fff69ac1048`  
		Last Modified: Fri, 09 Oct 2026 14:57:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b1187a6ae54de8c760ec1ee1c4cf993534dd9561b9abc8c0ae7238f7f3d4f1`  
		Last Modified: Fri, 09 Oct 2026 17:23:06 GMT  
		Size: 38.1 MB (38130704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cd1014f7255c8217d9eedf9b47bdcd7fb50be8b76af79f48fcf3601d10a9b5`  
		Last Modified: Fri, 09 Oct 2026 17:23:00 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb79bea252607d11a7ece8a9374a7a3d54628a0ecec956f420393620f09b1733`  
		Last Modified: Mon, 12 Oct 2026 18:47:10 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572ef3f6af5f8a92b3cfb2008b88d60265f74465710204a7f1e612109ab0784c`  
		Last Modified: Mon, 12 Oct 2026 18:47:42 GMT  
		Size: 108.0 MB (108036220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df58320b0fc03ab2cf0425885b0b8559f56781579a67699434b16df32ebf7bd`  
		Last Modified: Mon, 12 Oct 2026 18:47:10 GMT  
		Size: 898.1 KB (898092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d614f211c86d3b62a2fb9a6af5ffb9bdffad6359b6c9ee166a1212fefb92efda`  
		Last Modified: Mon, 12 Oct 2026 18:47:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834a9f5dd6811c1fc36b8025818da69c23821b2952bdcc0c59186cf92c558063`  
		Last Modified: Mon, 12 Oct 2026 18:47:11 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d85659f0e24504674b08a8e4c1283df79404b3db1ff21d0ffd77ba1e4b3b84`  
		Last Modified: Mon, 12 Oct 2026 18:47:13 GMT  
		Size: 4.2 MB (4162277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d2f7de31873e5584b8fec6e9d0e0014706d2436d2b2638b0032a3d90e0d3f3`  
		Last Modified: Mon, 12 Oct 2026 18:47:44 GMT  
		Size: 107.2 MB (107190106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a31d2aa5a30c36eaa2170fd7377d02e0d6369c46af1a9ce5348e37d2b76e3a`  
		Last Modified: Mon, 12 Oct 2026 18:47:14 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:d449ae5c9cf6f773e6217bbd830e3728ab406293eb666974894dbe8a006a0d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (41963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa784a6eb3d79b670b19a841c07af2a39c50a3b5651f500fa1db4f6c3e59193d`

```dockerfile
```

-	Layers:
	-	`sha256:a770beae39bd602dd6c03c3a561c620be3c57bfad8e43029784a3cc41df44a2a`  
		Last Modified: Mon, 12 Oct 2026 18:47:09 GMT  
		Size: 42.0 KB (41963 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-trixie` - linux; s390x

```console
$ docker pull redmine@sha256:ab4ae5c0305b124a9782188bd159044691b767694143d7fb4baabfe0df99a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 MB (292634220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d347d93222d787499528815d8b81a477bcc6e086c03398d79e7b9ecd9014dc4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:38:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:38:15 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:53:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:53:23 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:53:23 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:53:23 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:53:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:53:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:53:23 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:53:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:53:24 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:53:24 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 17:07:15 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:07:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 17:07:45 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:07:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:07:45 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:07:45 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:07:45 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:07:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:07:45 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:07:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:07:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:07:45 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:07:47 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:10:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:10:20 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:10:20 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:10:20 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:10:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1904eb9bc3813507f33f3a326b32695eed28ed73264e2a029f099af2fa4cbfcd`  
		Last Modified: Wed, 21 Oct 2026 01:41:17 GMT  
		Size: 1.3 MB (1293418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd729e4a15075ab5703518da0b64666827748fa458c587960ab386f8d82b56e6`  
		Last Modified: Wed, 21 Oct 2026 01:41:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72bd67468ea9bd952fa83be71d97714d5fc3493f3eaae3d42c0f4f7a4e82e1a5`  
		Last Modified: Fri, 23 Oct 2026 16:53:37 GMT  
		Size: 39.3 MB (39306464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1740bc02c902136f287efbde985ecf92cace8276b72f7492ffdfceeda7f215de`  
		Last Modified: Fri, 23 Oct 2026 16:53:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4875f4819e3d2979d6866212e511684e9348a92106c0ffbc73e2a226357f2699`  
		Last Modified: Fri, 23 Oct 2026 17:10:42 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dba69c89230847b7091a541e257aa60c1f5c877d94430d832bc154a8757b80`  
		Last Modified: Fri, 23 Oct 2026 17:10:44 GMT  
		Size: 111.9 MB (111911232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6660287160718f80612101db1c6a1b7edd5155e4ea428781d20e9b98071d5f`  
		Last Modified: Fri, 23 Oct 2026 17:10:41 GMT  
		Size: 924.0 KB (924000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0e20646c6b620a7f932e2297395f9e70b3cf9e450c27f4338f7a938465ba55`  
		Last Modified: Fri, 23 Oct 2026 17:10:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d24d2c62883db9b445c9e77b87d33b1e24ff8ed6474975060d33feb0911d09e`  
		Last Modified: Fri, 23 Oct 2026 17:10:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081fe9a95eeb4e6f12bd5da7267f010eeaec68ffd4b0be1c2868a1f4e5e3fede`  
		Last Modified: Fri, 23 Oct 2026 17:10:43 GMT  
		Size: 4.2 MB (4162285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa06333c8c4851f754d05efce53030b693d83dd9386858459ca2579132c55759`  
		Last Modified: Fri, 23 Oct 2026 17:10:45 GMT  
		Size: 105.1 MB (105121268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f69f3565dd977badf3d81534706c883a6845ad36c0b5a282859b64d7993e22`  
		Last Modified: Fri, 23 Oct 2026 17:10:44 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:bf611d0a6d83a741799c2d2007ee4fb437d8be79fce6d467c1983010f25d2618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 KB (41898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66475d4df3338ad00c38822fe95fdc107a1f6c26a601bce81f476b5e31bb072`

```dockerfile
```

-	Layers:
	-	`sha256:ef5b0f37c26c5c2caba0e471141592f7ae31ed37bb41be0d93011017ba18ce83`  
		Last Modified: Fri, 23 Oct 2026 17:10:41 GMT  
		Size: 41.9 KB (41898 bytes)  
		MIME: application/vnd.in-toto+json
