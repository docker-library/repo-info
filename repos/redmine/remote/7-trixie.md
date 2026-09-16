## `redmine:7-trixie`

```console
$ docker pull redmine@sha256:4c000e8d53d2b75b5edc7525f44cb23f0f81c22a45454789b934aa6370011e84
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
$ docker pull redmine@sha256:f564625cb4115070d913703c12269b3f524226e22bac7dfa20e31ea61e93ba1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.2 MB (306239222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d5ffd72ab425dc3217f386ba48faa40a37a55c614d8a2eebf74798e9ade239`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:44:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:44:03 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 22:46:32 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 22:46:32 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 22:46:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 22:46:32 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 22:46:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 22:46:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 22:46:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 22:46:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:46:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 22:46:32 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 23:17:28 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 23:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:18:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:18:02 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 23:18:02 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 23:18:02 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 23:18:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 23:18:02 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 23:18:02 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 23:18:02 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 23:18:02 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 23:18:04 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 23:18:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 23:18:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 23:18:52 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:18:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:18:52 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 23:18:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c16a7dd796430cfff49a2131238207ab8678956cbc512d33dd51500148f5eab`  
		Last Modified: Tue, 15 Sep 2026 22:46:42 GMT  
		Size: 4.2 MB (4245513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677507bf14b34621af19fc4d18185a98d7ac5f512a32a597cb1c92b7c344d80a`  
		Last Modified: Tue, 15 Sep 2026 22:46:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23dcf195d64074876e3bde5489e746d4a0829e0a483c22d4a44b478860d8af7`  
		Last Modified: Tue, 15 Sep 2026 22:46:43 GMT  
		Size: 58.7 MB (58695071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a5a8b671a667eb7f6c3a831581a7efb1676741ba6e58fd65f95fb8ef97de10`  
		Last Modified: Tue, 15 Sep 2026 22:46:41 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f05b0adeda99525a0e8e7dccec1a39354bcdf679acc0569e18e828e7148796`  
		Last Modified: Tue, 15 Sep 2026 23:19:06 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362c9b8e0690080b8f631cae185611f29f88c74a86c3117fb8d5b6d831204b22`  
		Last Modified: Tue, 15 Sep 2026 23:19:10 GMT  
		Size: 110.6 MB (110634048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099c7febe698640313fd48f7c7aa80fa6e4fdaed68acadd8169a80c191c7f669`  
		Last Modified: Tue, 15 Sep 2026 23:19:06 GMT  
		Size: 952.3 KB (952342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f6f4382a9dc0f893e7bdc9e078cc94f4be2dbecd0253234e133aa0f9c31b35`  
		Last Modified: Tue, 15 Sep 2026 23:19:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4b6d3e35bc194201ed959166fceacaf68ac4ec78bb082cddb1cfe43db24b5e`  
		Last Modified: Tue, 15 Sep 2026 23:19:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c675880b09bce09dbd2d7b1e7e215867aa0c4dcdb35666eb2b07c19b5a1b7495`  
		Last Modified: Tue, 15 Sep 2026 23:19:08 GMT  
		Size: 4.2 MB (4240046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629d2d7f8e7c1411ebd9c3869e9a1a13cc6bd0a8b171d44c04170f2e85766296`  
		Last Modified: Tue, 15 Sep 2026 23:19:11 GMT  
		Size: 97.7 MB (97675422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d938aa6390133c40b774f0c18db210f30a0a09ccdb75a1cdee607850f10ab9b`  
		Last Modified: Tue, 15 Sep 2026 23:19:09 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:0a4f5479d63599662daaffd3e9c043631dac43d176d2b2d1541b3901569b2f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75c2d52c5a916bed8bb1cbf3ec44f2e47b6a3bf7135e7021367abbc6bbb901f`

```dockerfile
```

-	Layers:
	-	`sha256:3b1a48626a4fe3768165a262c095ab5a13a2bac0286b39cec12ecdeb6fba03b6`  
		Last Modified: Tue, 15 Sep 2026 23:19:06 GMT  
		Size: 43.6 KB (43615 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; arm variant v5

```console
$ docker pull redmine@sha256:0bb6a7db65b71d5ab2bd981c27709b26c2bc64bb38732f0a761474c23ba19af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291534396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc4a493da9d086283fe35cc343991d540b2481c7202cf122bf12865cfe0941f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:05:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 23:05:43 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 23:08:56 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 23:08:56 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 23:08:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 23:08:56 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 23:08:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 23:08:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 23:08:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 23:08:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:08:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 23:08:56 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 23:20:07 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 23:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:21:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:21:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:21:05 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 23:21:05 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 23:21:05 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 23:21:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 23:21:05 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 23:21:05 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 23:21:05 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 23:21:05 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 23:21:07 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 23:24:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 23:24:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 23:24:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:24:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:24:02 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 23:24:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c251ca2b442416a65dc791a2ad0d842da5c8916b55c23bfb71fe9570c15f6e5`  
		Last Modified: Tue, 15 Sep 2026 23:09:08 GMT  
		Size: 3.6 MB (3645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a060088a34cafd22b57e4106a727e906ec8135104e5b2f22f9e938036dcc8a0c`  
		Last Modified: Tue, 15 Sep 2026 23:09:07 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38dc72f9fc7b0aa97defa333eac8ef6a7a5f6a479c35f10a8432c2b5ee6d52a`  
		Last Modified: Tue, 15 Sep 2026 23:09:09 GMT  
		Size: 51.3 MB (51311762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec3ab5d822754d0c38de9e2e4ca50644db6d419f3ad73d87f895d9da758fd90`  
		Last Modified: Tue, 15 Sep 2026 23:09:07 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7da3522fafbb48415219ee8e1605797aa8482bc80644db87704e473795dd0b4`  
		Last Modified: Tue, 15 Sep 2026 23:24:19 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4fb18efb2306dc789b36a1eb220acbe6c7f96a7fa8eb8f3d0ef2779abafed9`  
		Last Modified: Tue, 15 Sep 2026 23:24:22 GMT  
		Size: 106.4 MB (106432196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1953beaba92b13fdd11c4b9fc69d410f9794fddeed6f12efcded2e824ce5431`  
		Last Modified: Tue, 15 Sep 2026 23:24:19 GMT  
		Size: 921.9 KB (921937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a963ec15bdb67b8bd53f5908453c4f336650096b8328b504c4653de6805bce10`  
		Last Modified: Tue, 15 Sep 2026 23:24:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51ab0d2a46e224750bf17b739e090a89a271530fade925f4de44be41b4d7b76`  
		Last Modified: Tue, 15 Sep 2026 23:24:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cacc4fbbc5df6538d21188691938a5a37284c22dcf099d0fdddf7088faf60d`  
		Last Modified: Tue, 15 Sep 2026 23:24:20 GMT  
		Size: 4.2 MB (4240046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a3d2bd98c25e861341e01f1f26efa566c366bf6b14979d198232cc102b9d5`  
		Last Modified: Tue, 15 Sep 2026 23:24:23 GMT  
		Size: 97.0 MB (97009462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5930393fc83d0b4b5266e5723714497f0513c0f59d8138d12a8bfebd9cb25531`  
		Last Modified: Tue, 15 Sep 2026 23:24:21 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:663994cabfa8b983f0798512effc06f554141705828c562da6e4a424b69cdef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 KB (43792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b13ea2f9e14ca5664fbbc65b76e0973fef1f7f72f05e654a18ea4f9a265eaf`

```dockerfile
```

-	Layers:
	-	`sha256:a85c8ade23a104c3df07646b197aa3113330316d10d7f47c698618dc8ec7e1bc`  
		Last Modified: Tue, 15 Sep 2026 23:24:18 GMT  
		Size: 43.8 KB (43792 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ce5feb27de5fbdac89814ff42f5e8a9b941611290ca3b48124e975962e951399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260987487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e760dbaaadd3672f7b19b93efc6372db4503937f0d1eb389bf57d9fb7265e5e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:16:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 23:16:43 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 23:19:31 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 23:19:31 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 23:19:31 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 23:19:31 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 23:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 23:19:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 23:19:31 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 23:19:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:19:31 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 23:19:31 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 23:38:24 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 23:39:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:39:11 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:39:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:39:11 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 23:39:11 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 23:39:11 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 23:39:11 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 23:39:11 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 23:39:11 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 23:39:11 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 23:39:11 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 23:39:14 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 23:40:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 23:40:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 23:40:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:40:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:21 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 23:40:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdf86c26505c5367018e29e661792b9d9820b2f06af178d76dec657bd872634`  
		Last Modified: Tue, 15 Sep 2026 23:19:41 GMT  
		Size: 3.4 MB (3448810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e6a74afb6e2004f044577798fd23018b78aa069013f54ae58a58213852ea44`  
		Last Modified: Tue, 15 Sep 2026 23:19:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5f1f6b35bebf1c57ba0a9d8b799ea8e7d71d118f55e569b9917454d409a941`  
		Last Modified: Tue, 15 Sep 2026 23:19:42 GMT  
		Size: 50.7 MB (50713288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ac775dde1d97965ae9306d21321a1160814cd967c0c3ae55ef78d54295db46`  
		Last Modified: Tue, 15 Sep 2026 23:19:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dae5ac5a442a860b837150905672e2784a4a8caa3c7acd508373c7a5fdbd4fc`  
		Last Modified: Tue, 15 Sep 2026 23:40:35 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d373766072fa76bcd84036fc5878aaf7dad840817e67f208dc8ebf0158a5b99`  
		Last Modified: Tue, 15 Sep 2026 23:40:38 GMT  
		Size: 101.3 MB (101321310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fead6daaf285c75efb329ea306e552858e747d6b3b767f64892ce81b189e83c`  
		Last Modified: Tue, 15 Sep 2026 23:40:35 GMT  
		Size: 917.7 KB (917686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d1b072834d11a792669178b1b963ca48f8dfba5afb8923a91839881cc31706`  
		Last Modified: Tue, 15 Sep 2026 23:40:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b657c616e5fcb0a12af6a7fb084583307e1e6f9fec2010e2efc243d6ee97a62`  
		Last Modified: Tue, 15 Sep 2026 23:40:36 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d14a4db74f4342a0313a1813a0190bb29fc837c84999cf963ebe420105d502c`  
		Last Modified: Tue, 15 Sep 2026 23:40:37 GMT  
		Size: 4.2 MB (4240044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7961782d4046651891e198c095e25e54c8ee4e46b21aa45f399e4035fb311ab`  
		Last Modified: Tue, 15 Sep 2026 23:40:39 GMT  
		Size: 74.1 MB (74123091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce444d7a1bd2e145433fc55b17122f919e239787cadfb9c453d6ba8af492b9e2`  
		Last Modified: Tue, 15 Sep 2026 23:40:38 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:b62b1a86069b1a173393af1149e1388ec26c29ad162773d798ab4ede18b2603e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 KB (43792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae713937f7fefcd3021f5a6ca6db8dee70b334d0ffa430876bd9f406ffe37b84`

```dockerfile
```

-	Layers:
	-	`sha256:ab669e8aafcc2466b2c544a4a66f23547d6fbdd3b0776b577af37145edad5feb`  
		Last Modified: Tue, 15 Sep 2026 23:40:35 GMT  
		Size: 43.8 KB (43792 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:31ecc52ef2f305021aa12d0ef42ed10dc90cd2a581cec960e01ea33b36a1a735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.2 MB (306159146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5cc4acb5f3356918b8fd9c9c33465b6e93b03622bf6260d6141e4dcbe6e4e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:45:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:45:32 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 22:48:04 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 22:48:04 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 22:48:04 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 22:48:04 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 22:48:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 22:48:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 22:48:04 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 22:48:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:48:04 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 22:48:04 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 23:14:24 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 23:14:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:15:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:15:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:15:01 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 23:15:01 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 23:15:01 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 23:15:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 23:15:01 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 23:15:01 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 23:15:01 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 23:15:01 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 23:15:05 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 23:16:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 23:16:05 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 23:16:05 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:16:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:16:05 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 23:16:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894c498c7554dd13c2a713b69f7894bd5466e80018a96cf2a851ecb6252ee7d3`  
		Last Modified: Tue, 15 Sep 2026 22:48:15 GMT  
		Size: 4.6 MB (4593712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ad39b92f551afb4cfffcbecc52c2e37f3c684e389a16ed11987ae122f8bf5c`  
		Last Modified: Tue, 15 Sep 2026 22:48:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0058af806d44aad07e164323bce29722fc4fd19c8d060f245cf1cf6d903c19`  
		Last Modified: Tue, 15 Sep 2026 22:48:17 GMT  
		Size: 58.5 MB (58478662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06c39a49d60f8d2921a47b42720d2e598eb6881cbb040c716b7997c8663e8c7`  
		Last Modified: Tue, 15 Sep 2026 22:48:15 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15268c7a8589b8e9a281ccbbe1e91fd102d5648f9cd179a0d1a9f1773e458c1`  
		Last Modified: Tue, 15 Sep 2026 23:16:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680b3e6b2ff2b7cfa37fcd6ae31e29dc6b5ee82604e19076e6f47f43d79a6d46`  
		Last Modified: Tue, 15 Sep 2026 23:16:24 GMT  
		Size: 109.1 MB (109060981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8cd24b848c71736a0af77264b67811e8ad333effb15d5ebf967a3144f0df01`  
		Last Modified: Tue, 15 Sep 2026 23:16:21 GMT  
		Size: 905.6 KB (905554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6226bb7ad89974a3d522d1187ed08a9747d88f6d1c90df9989e5ad888cc19c`  
		Last Modified: Tue, 15 Sep 2026 23:16:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4337c7390edcd339de7d7b64ca162a1eaf31617e9618cefc418306888dd758c6`  
		Last Modified: Tue, 15 Sep 2026 23:16:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c03f3f9c98c925100329287b2d241523a9f65a3a1eae1eeb189d26f5c3ab77`  
		Last Modified: Tue, 15 Sep 2026 23:16:22 GMT  
		Size: 4.2 MB (4240044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe74598f4050986e133c484ba52a21e5b83b07ed48af8f95c7dfd392d1d30c07`  
		Last Modified: Tue, 15 Sep 2026 23:16:25 GMT  
		Size: 98.7 MB (98716490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fc9f33ec169e5e6eea2b0694f8c8b4e5d77279917bbf0b76845ce367047e65`  
		Last Modified: Tue, 15 Sep 2026 23:16:23 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:907e3430317162c434736f8177b396d04a572323967206fe3b7659093804db08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 KB (43842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92039dbb85bfadfce349895e5dd41e21787c29571c77eeb560e583e7bccffd6a`

```dockerfile
```

-	Layers:
	-	`sha256:52c2488b8697f49c7f20b822fe29aebec610232f500a9607e170d58f282a2147`  
		Last Modified: Tue, 15 Sep 2026 23:16:20 GMT  
		Size: 43.8 KB (43842 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; 386

```console
$ docker pull redmine@sha256:64dddb2773ef87830efead79326e948edb37402031cc6d35830042246a480a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291617196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcaff8e4b4d92dac9d05264b3f4e55e19c7e744ab769e97b7fc85d0a00f5461`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:38:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:38:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 22:41:39 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 22:41:39 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 22:41:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 22:41:39 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 22:41:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 22:41:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 22:41:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 22:41:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:41:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 22:41:39 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 22:43:41 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 22:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:44:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 22:44:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 22:44:23 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 22:44:23 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 22:44:23 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 22:44:23 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 22:44:23 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 22:44:23 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 22:44:23 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 22:44:23 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 22:44:26 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 22:46:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 22:46:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 22:46:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 22:46:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:46:54 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 22:46:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34dcdd716eacdc85c4e4bdecb6c70dded4b1f086267959d25b5169ad636c246`  
		Last Modified: Tue, 15 Sep 2026 22:41:48 GMT  
		Size: 4.2 MB (4184812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e3ded7a546f89ac33d1d15fe03506079c554a1b69db26955d2b958181bd654`  
		Last Modified: Tue, 15 Sep 2026 22:41:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d145b8714e0ce642f2923b80a99d15f7b43bb850d7b6d2f94429cc36f04d02de`  
		Last Modified: Tue, 15 Sep 2026 22:41:50 GMT  
		Size: 51.2 MB (51229006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4a63575170557f6e2b91ded1351e92c0d5d4c7707c0c41ca3dc3153a606912`  
		Last Modified: Tue, 15 Sep 2026 22:41:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec28bc9855eeae90e71648cbb3041cc40d3af24b6e37eb4d2fbaf8c99b007e78`  
		Last Modified: Tue, 15 Sep 2026 22:47:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2e00410fbae94b572b488db73b830faf479127368102365b5f22bb0feaf5bc`  
		Last Modified: Tue, 15 Sep 2026 22:47:14 GMT  
		Size: 113.2 MB (113170960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce837ccc1bf17854d8aa8c3b1126513e99cb76a1f2c6a7700594942d2d3b5ab`  
		Last Modified: Tue, 15 Sep 2026 22:47:10 GMT  
		Size: 921.1 KB (921124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b434ad23900e434a5d44562fc5abc7432a94395ceba55d3541bb94a4fdbfc26e`  
		Last Modified: Tue, 15 Sep 2026 22:47:10 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78b3018673531a1824f9ca26fc63f5a88b6230b2df1846991e339052a33bea3`  
		Last Modified: Tue, 15 Sep 2026 22:47:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c8517bbf77e892e9ae3a3ab881587500ee2115f5ed6cbb87ddacd8d5b10078`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 4.2 MB (4240044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d80c33d36968280276ee2820df4c56e807b36033d8c840898ee7afc68191c7`  
		Last Modified: Tue, 15 Sep 2026 22:47:15 GMT  
		Size: 86.6 MB (86563730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b14111c928489e136853d09267c85be1221228b34372f237821abffb09d696`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:e221188620745d0e77de65c706369d181001933edfefb4863b526eb0e7551e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb25df65776f3bfab70c4f92fd32fd21fa3604bd2bbb0b78e5d5f8c8855aaabc`

```dockerfile
```

-	Layers:
	-	`sha256:d07702d1fa45015c43126bd297d4a5cc94561025548c6c35234a5156081ad5ce`  
		Last Modified: Tue, 15 Sep 2026 22:47:10 GMT  
		Size: 43.6 KB (43552 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; ppc64le

```console
$ docker pull redmine@sha256:e0dde367dacdba3bcb66c8ee4cbb12a4c94af6d8243cd781a89c6532beb11b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316094809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae56a332c4cd59fbcfdd134fd1235416847e37d8e0a6fd0745b234ab68bf0332`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 16 Sep 2026 04:32:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 16 Sep 2026 04:37:56 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 04:37:56 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 16 Sep 2026 04:37:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 16 Sep 2026 04:37:56 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 16 Sep 2026 04:37:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 16 Sep 2026 04:37:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 16 Sep 2026 04:37:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 16 Sep 2026 04:37:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 16 Sep 2026 04:37:56 GMT
CMD ["irb"]
# Wed, 16 Sep 2026 08:21:12 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 16 Sep 2026 08:23:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:23:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 08:23:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 08:23:37 GMT
ENV RAILS_ENV=production
# Wed, 16 Sep 2026 08:23:37 GMT
WORKDIR /usr/src/redmine
# Wed, 16 Sep 2026 08:23:37 GMT
ENV HOME=/home/redmine
# Wed, 16 Sep 2026 08:23:38 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 16 Sep 2026 08:23:38 GMT
ENV REDMINE_VERSION=7.0.1
# Wed, 16 Sep 2026 08:23:38 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Wed, 16 Sep 2026 08:23:38 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Wed, 16 Sep 2026 08:23:38 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 16 Sep 2026 08:23:41 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 16 Sep 2026 08:28:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 16 Sep 2026 08:28:56 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 16 Sep 2026 08:28:57 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 08:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 08:28:57 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 16 Sep 2026 08:28:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629e638e9dce6471f35133ca388b1a75ae0a8534e7739093186aae8b69893a83`  
		Last Modified: Wed, 16 Sep 2026 04:38:15 GMT  
		Size: 4.5 MB (4516453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ec7d8e972b556a61559aa1d115d6975c5e7c5ac9d4b3ed84ae877cea4e0cc8`  
		Last Modified: Wed, 16 Sep 2026 04:38:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618b7e4e07813195b3506b315005fdca3eb57c181b34fe6eaa03501e45deddb4`  
		Last Modified: Wed, 16 Sep 2026 04:38:17 GMT  
		Size: 54.5 MB (54516825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e7ffb9b67d1a71562ab199d7ff17034ee34aaa943985330a8349fe7379aa0c`  
		Last Modified: Wed, 16 Sep 2026 04:38:15 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a089b00a1441abab54c1c22b6372a02a0b6411397b33fa7324191b9b96cc2`  
		Last Modified: Wed, 16 Sep 2026 08:29:29 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ff0716224c65b4a4c34cbfa84fd4465650053bdfeb9b9402678bf52bd4dd75`  
		Last Modified: Wed, 16 Sep 2026 08:29:33 GMT  
		Size: 118.1 MB (118112619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c150a8f36798f5943ed6ca2d427d8ad9d60cd8561c07375a5f085d9048647b`  
		Last Modified: Wed, 16 Sep 2026 08:29:29 GMT  
		Size: 911.8 KB (911799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecec0eed718fb88bb54f2f7b9fbf986250514a5572eeddd7308198c17a7ad02`  
		Last Modified: Wed, 16 Sep 2026 08:29:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bdfa0db56924f2eeb0aa9a2c5e20137076c9fb76f1384a2f2859ad5d5c0ba11`  
		Last Modified: Wed, 16 Sep 2026 08:29:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6bcdc8218765ffe33a306cf277764884175643f4540c4e1cbe630273e97ddf`  
		Last Modified: Wed, 16 Sep 2026 08:29:30 GMT  
		Size: 4.2 MB (4240044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72978f5c3856db2145ea05056b2ae735dbacddc33a2012d39f23b8d534baa9a7`  
		Last Modified: Wed, 16 Sep 2026 08:29:34 GMT  
		Size: 100.2 MB (100177481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4890773ed2aa0f8b00ddf547d0346b18e53cdabb9db74bdadcbea8b49ae598`  
		Last Modified: Wed, 16 Sep 2026 08:26:35 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:c423301d5f79c2fa8743d8083552a90cd79e1f0a51af06fcb8fa6aaf7f060a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 KB (43695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5feda2e65d3e0ddb51fe45ea630cc34391ccb26be6c9dee6ce6b8c8554523457`

```dockerfile
```

-	Layers:
	-	`sha256:cffa8404c09b2031a0935ed08fbbe38a52c5b6fe5c069bfc3bb3b6c5172eda13`  
		Last Modified: Wed, 16 Sep 2026 08:29:29 GMT  
		Size: 43.7 KB (43695 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; riscv64

```console
$ docker pull redmine@sha256:c6b73a040ef0c722691d4d63080a559791f42d4987ce96d120c78381b5fe58aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287911026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d196d9c822c8c5389cb04079b09cf326aa0dd3cfa1260e0bdaaa207ddd401b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 19:49:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 19:49:18 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 27 Aug 2026 21:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 21:47:22 GMT
ENV RUBY_VERSION=4.0.6
# Thu, 27 Aug 2026 21:47:22 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Thu, 27 Aug 2026 21:47:22 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Thu, 27 Aug 2026 21:47:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 27 Aug 2026 21:47:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Aug 2026 21:47:22 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Aug 2026 21:47:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 21:47:22 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 27 Aug 2026 21:47:22 GMT
CMD ["irb"]
# Sat, 29 Aug 2026 21:48:26 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Sat, 29 Aug 2026 21:52:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 29 Aug 2026 21:53:21 GMT
ENV GOSU_VERSION=1.19
# Sat, 29 Aug 2026 21:53:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 29 Aug 2026 21:53:21 GMT
ENV RAILS_ENV=production
# Sat, 29 Aug 2026 21:53:21 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Aug 2026 21:53:21 GMT
ENV HOME=/home/redmine
# Sat, 29 Aug 2026 21:53:21 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Sat, 29 Aug 2026 21:53:21 GMT
ENV REDMINE_VERSION=7.0.1
# Sat, 29 Aug 2026 21:53:21 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Sat, 29 Aug 2026 21:53:21 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Sat, 29 Aug 2026 21:53:21 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Sat, 29 Aug 2026 21:53:26 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Sat, 29 Aug 2026 22:53:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Sat, 29 Aug 2026 22:53:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Aug 2026 22:53:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Sat, 29 Aug 2026 22:53:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Aug 2026 22:53:31 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 29 Aug 2026 22:53:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d173c894c1b5781fdbe677df7d0fcc920a5cbc1d783fee4608d0a765a60bd93`  
		Last Modified: Thu, 27 Aug 2026 21:49:09 GMT  
		Size: 3.9 MB (3873739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bd4fe9125675245a991b02657a767fdd2859546b9bb7697ea5558ba72abf0e`  
		Last Modified: Thu, 27 Aug 2026 21:49:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036fa73f9305a16a5ea4864caf67a257fc31f0c74cb67e748d29f64484334e69`  
		Last Modified: Thu, 27 Aug 2026 21:49:16 GMT  
		Size: 44.2 MB (44227554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e5ac537aa8efde56f22f3b76cd12c5be5cc7bacbb7dabbd7d2d7e7da7e3dcd`  
		Last Modified: Thu, 27 Aug 2026 21:49:08 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a2ad6b131d1cb70a637e3ce58f1012543d0a4c41b74f04d464b8f64cfe9d8c`  
		Last Modified: Sat, 29 Aug 2026 22:56:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3cc03dbd5cece009b07f6149716bdc9914750df821fb46905177dc5337341c2`  
		Last Modified: Sat, 29 Aug 2026 22:56:53 GMT  
		Size: 107.6 MB (107631914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613db4302bb9a33bd74ed5bd9a80b9376c281d86d4f84ef9448c544120fbe7a1`  
		Last Modified: Sat, 29 Aug 2026 22:56:23 GMT  
		Size: 898.0 KB (898042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3870e7a5c2a47f29754d17fbe265c343ee8ed7823b68ea4d9d4801e90f72c631`  
		Last Modified: Sat, 29 Aug 2026 22:56:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b759066c7a54972acee0531b05b168c9449f0c5add45ab18aeb7446e7894cfd`  
		Last Modified: Sat, 29 Aug 2026 22:56:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ef0dfc940380d53759e5f85ee194fd0bd3003b91b905b4a5b9558ef3227643`  
		Last Modified: Sat, 29 Aug 2026 22:56:26 GMT  
		Size: 4.2 MB (4240044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b8b65273b267b2bd98ebfc42cb7a024a2492b56bc2a67c0c7edd83346a5622`  
		Last Modified: Sat, 29 Aug 2026 22:56:53 GMT  
		Size: 98.7 MB (98739151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ba2bc224a46a88c97cb255e0481d7ce7246a5c66ed8463e1264a54707936e7`  
		Last Modified: Sat, 29 Aug 2026 22:56:27 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:919bbc27c5d370e90cea99faabfa8068eab576863764109c6497378221ca3a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 KB (43693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e50c80ce1eeff2cb966ca82273769c79ab90f28638fc2b3e5729dd6b64c135`

```dockerfile
```

-	Layers:
	-	`sha256:80157bc60f257093daa9e79dd823ba94a5c95339e918e9fd087599428c1390cc`  
		Last Modified: Sat, 29 Aug 2026 22:56:23 GMT  
		Size: 43.7 KB (43693 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-trixie` - linux; s390x

```console
$ docker pull redmine@sha256:670b3996161c0c5cf31f7fc2bf84ca69787a1e750b23eee4d50053f5833bab96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293111640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f0b38b239bebf47ce10cc4909629681c58622d8c1092a6fdc2f317446c3977`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:59:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:59:42 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 25 Aug 2026 02:02:13 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:02:13 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 25 Aug 2026 02:02:13 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 25 Aug 2026 02:02:13 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 25 Aug 2026 02:02:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 25 Aug 2026 02:02:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Aug 2026 02:02:13 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Aug 2026 02:02:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:02:13 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 25 Aug 2026 02:02:13 GMT
CMD ["irb"]
# Wed, 26 Aug 2026 18:33:19 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 26 Aug 2026 18:40:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata-legacy 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 26 Aug 2026 18:42:03 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 18:42:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 18:42:03 GMT
ENV RAILS_ENV=production
# Wed, 26 Aug 2026 18:42:05 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Aug 2026 18:42:05 GMT
ENV HOME=/home/redmine
# Wed, 26 Aug 2026 18:42:07 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 26 Aug 2026 18:42:07 GMT
ENV REDMINE_VERSION=7.0.1
# Wed, 26 Aug 2026 18:42:07 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Wed, 26 Aug 2026 18:42:07 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Wed, 26 Aug 2026 18:42:07 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 26 Aug 2026 18:42:13 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 26 Aug 2026 18:52:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libclang-dev 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 	apt-get update; 	apt-get install -y --no-install-recommends cargo/trixie-backports rustc/trixie-backports; 	rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 26 Aug 2026 18:52:47 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Aug 2026 18:52:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 18:52:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:52:49 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 26 Aug 2026 18:52:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518397503bbb95324011fe65e8442da6078697582cec9b8c8cc97989cf694437`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 1.3 MB (1295648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52ad1e876eb8a8726385d3f86e27ae67ea99819c32f79de50cd967716a0a5ea`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a743fb66a58cf3bfd025dffbb8023c2456d9241e95237aa09105d36d1e324c5e`  
		Last Modified: Tue, 25 Aug 2026 02:02:28 GMT  
		Size: 44.4 MB (44359371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027632b53f5c3a7b816fa9bdc2c8b17c61ffe34bf38bb13bf8a414a767edd5fe`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2272563d35d5ab9d9350df1d088c7149e376a4888f6898c4af89c66124935e6`  
		Last Modified: Wed, 26 Aug 2026 18:53:48 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d234952ea0f5efb5a7c1aa851e490cdc8ee7c18d64cde7d0406ad5063d2410`  
		Last Modified: Wed, 26 Aug 2026 18:54:06 GMT  
		Size: 111.2 MB (111182772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d8232278d155df04a7d101e525dd82993c9762dd1f019ae69fc60263580236`  
		Last Modified: Wed, 26 Aug 2026 18:53:49 GMT  
		Size: 925.1 KB (925147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6148d95d6867c41516e418600104fd7dfee6642ab50f83ab85a0a9daeb97d233`  
		Last Modified: Wed, 26 Aug 2026 18:53:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1514e6f716d26f0ea866c8d259d2e283fa17ae2dd9c612f0ab37bcc97edc202d`  
		Last Modified: Wed, 26 Aug 2026 18:53:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcb097664e55d0c7096f69c2f421057c39961021281eaa8b4b7ac41eaba00c9`  
		Last Modified: Wed, 26 Aug 2026 18:53:57 GMT  
		Size: 4.2 MB (4240030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a57f203a10946f5aa427489b2cfc4355267444045db55f29bc4458f9acfdf4`  
		Last Modified: Wed, 26 Aug 2026 18:54:07 GMT  
		Size: 101.2 MB (101236830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6959ff3c64a4446e459ab3eda09a1afd42a4d86f2cb2103d072ca0f1e1e89b`  
		Last Modified: Wed, 26 Aug 2026 18:53:57 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-trixie` - unknown; unknown

```console
$ docker pull redmine@sha256:f3616f48ad445f37582db340989f303501e7feecc1646544539da53fcb700bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ff0861d6288f429cf21e9ec642bddef7ffc69367b941ab518e08e99f39e340`

```dockerfile
```

-	Layers:
	-	`sha256:d142cbade486d449a5656a58ea05d6c2514a9a8465885a5ecc06de0a727d546f`  
		Last Modified: Wed, 26 Aug 2026 18:53:47 GMT  
		Size: 43.6 KB (43616 bytes)  
		MIME: application/vnd.in-toto+json
