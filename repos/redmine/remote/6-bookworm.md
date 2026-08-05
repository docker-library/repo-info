## `redmine:6-bookworm`

```console
$ docker pull redmine@sha256:ed252f9d3c5eb928ea2aeb0d728a79f9590bf8ab4e7393ebe155055eb9af65eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `redmine:6-bookworm` - linux; amd64

```console
$ docker pull redmine@sha256:96b788a5e6c47899192ebedfc179f12915eaac9e44d70479c371803520f53163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275618916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1d35f34f36c060b4062a75d7ce58cf5cd5d1150a744ba34f77a115a05ba4b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:13:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:13:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:16:26 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:16:26 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 01:16:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 01:16:26 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 01:16:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:16:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:16:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:16:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:16:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:16:26 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 02:23:03 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 05 Aug 2026 02:23:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:23:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 02:23:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 02:23:32 GMT
ENV RAILS_ENV=production
# Wed, 05 Aug 2026 02:23:32 GMT
WORKDIR /usr/src/redmine
# Wed, 05 Aug 2026 02:23:32 GMT
ENV HOME=/home/redmine
# Wed, 05 Aug 2026 02:23:32 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 05 Aug 2026 02:23:32 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 05 Aug 2026 02:23:32 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 05 Aug 2026 02:23:32 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 05 Aug 2026 02:23:32 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 05 Aug 2026 02:23:35 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 05 Aug 2026 02:24:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 05 Aug 2026 02:24:21 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 05 Aug 2026 02:24:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 05 Aug 2026 02:24:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 02:24:21 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 05 Aug 2026 02:24:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5ea7e24b8167867aeeab85eec6abe4da4787f707995f68748c949c5816e9d6`  
		Last Modified: Wed, 05 Aug 2026 01:16:36 GMT  
		Size: 3.5 MB (3511613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c9c34b857f7dbe1dd8ac64e7fabf86ef5f7c113c89873f102f35ad6d61f74b`  
		Last Modified: Wed, 05 Aug 2026 01:16:35 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7ec7e786e2f85ec00c77431b98846bee4ba6d014f16efaa89f434c7e6c21e1`  
		Last Modified: Wed, 05 Aug 2026 01:16:37 GMT  
		Size: 41.5 MB (41498190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e678e2c79287bcb541cfd3e4608b8bc42598e2fcb1b2a2f88af6e37ebe6a0785`  
		Last Modified: Wed, 05 Aug 2026 01:16:36 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f270062790a3bc08aeeac2ca8bcb90a5b8c357eb1525a5315f7534953c7849d`  
		Last Modified: Wed, 05 Aug 2026 02:24:37 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aeb4bfad70000abf0b4e54f96e051b8b01b4ac7e4d826ff12305424d44e7ae6`  
		Last Modified: Wed, 05 Aug 2026 02:24:40 GMT  
		Size: 123.2 MB (123158645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c8145dc982e8ab47f8ed45135b7f00dbf9910aebb999bab0aeb1b49c50cca1`  
		Last Modified: Wed, 05 Aug 2026 02:24:37 GMT  
		Size: 946.9 KB (946944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f02d68877a780a6f4a39d1bee6613b79231cdb6991d7b61fcac25005345f292`  
		Last Modified: Wed, 05 Aug 2026 02:24:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50aaffbd8fbfabae856c3927a02866c1a664cf389b1ff20c9fd7db855dd05a80`  
		Last Modified: Wed, 05 Aug 2026 02:24:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f9d328790f72765b278c8b5ff17882bb3204d4ec084a26f9e8bb449a568e06`  
		Last Modified: Wed, 05 Aug 2026 02:24:38 GMT  
		Size: 4.2 MB (4154808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7077277cedad43d61d55113fc2c6e0965b86027b9732cc13f67e55ac9a3341eb`  
		Last Modified: Wed, 05 Aug 2026 02:24:41 GMT  
		Size: 74.1 MB (74112009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede97178ada1a39896137480c5cb9d27e4c85bf5032d4cce8512ea237001a155`  
		Last Modified: Wed, 05 Aug 2026 02:24:39 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:e8e7342007137a9d3286d5eba8c468b93c20b63e27f3a12d41bf02c2ccc2b2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27e85afd2608337fae4942eb06374ecf98e54a91e31108222015db0b915d6e3`

```dockerfile
```

-	Layers:
	-	`sha256:a64bc2fb8ed2a424480935741904277651f2b709e3f6879a3857c9874bb2736e`  
		Last Modified: Wed, 05 Aug 2026 02:24:37 GMT  
		Size: 41.2 KB (41222 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:e5ca7e797bc0069544d5be4a078600edb8321cbe2339943ce45eb8e7515efaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272466153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f63a56fedc73ae033824adce1bd17b5defe607a69b0d757f298545d86ab3113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:19:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:19:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:22:26 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:22:26 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 01:22:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 01:22:26 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 01:22:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:22:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:22:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:22:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:27 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:22:27 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 02:24:32 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 05 Aug 2026 02:24:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:25:01 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 02:25:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 02:25:01 GMT
ENV RAILS_ENV=production
# Wed, 05 Aug 2026 02:25:01 GMT
WORKDIR /usr/src/redmine
# Wed, 05 Aug 2026 02:25:01 GMT
ENV HOME=/home/redmine
# Wed, 05 Aug 2026 02:25:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 05 Aug 2026 02:25:01 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 05 Aug 2026 02:25:01 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 05 Aug 2026 02:25:01 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 05 Aug 2026 02:25:01 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 05 Aug 2026 02:25:03 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 05 Aug 2026 02:25:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 05 Aug 2026 02:25:56 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 05 Aug 2026 02:25:56 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 05 Aug 2026 02:25:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 02:25:56 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 05 Aug 2026 02:25:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35200b9c123982c9bc0f0c15c393b224e93fb1f20ff286eb68e2d6a2001ccacd`  
		Last Modified: Wed, 05 Aug 2026 01:22:37 GMT  
		Size: 3.3 MB (3345015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6b5b2cdf3dac703356a938c80d516b92976a3ad3d4b5befc0ffeea0e934907`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0d7ef5d09963c4821dabc680c7dd8f30309ddcaf24d3ef9a6a427b265c3f83`  
		Last Modified: Wed, 05 Aug 2026 01:22:38 GMT  
		Size: 41.4 MB (41393047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72640fdea79e561a1c43ea6c10d9741c0261359c4df34f28e56bcb24055093eb`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e90b1f85a0b3d72bdaac4f633438be92b13d8bfd691f25c184efb41f95c74ae`  
		Last Modified: Wed, 05 Aug 2026 02:26:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232decd41de0c74147196d1a382b1a119854dd55309d347a0251a0ca17db679e`  
		Last Modified: Wed, 05 Aug 2026 02:26:15 GMT  
		Size: 120.6 MB (120613988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e5aca69f5899b31f677bdc5cd106c6349b0bc82b830a2be100963eaac860b0`  
		Last Modified: Wed, 05 Aug 2026 02:26:12 GMT  
		Size: 900.1 KB (900063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253fd71f75da0eccd23cdbb8cdf39d71ae217cceac23f7910c912b98ee5196a6`  
		Last Modified: Wed, 05 Aug 2026 02:26:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43510f5df94f016fa9501dbb6458a16003375ea9cb39486b449b33dc44635ffc`  
		Last Modified: Wed, 05 Aug 2026 02:26:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7684d5d307ba48c80e07c998c0d3b5056cd27bb18e433b4c16f8c2418e34d57`  
		Last Modified: Wed, 05 Aug 2026 02:26:13 GMT  
		Size: 4.2 MB (4154813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4755f5a0d64e8631048a8ab65b1f872449ff30e9fbdc565c5e2a79644430868b`  
		Last Modified: Wed, 05 Aug 2026 02:26:16 GMT  
		Size: 73.9 MB (73937909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f67d16e7b28287b2795f53ed6a0a191645da8adfe97c24f04b59b565c5f6720`  
		Last Modified: Wed, 05 Aug 2026 02:26:14 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:84e0dcda5eb14a104848bd44282225372dd4564d9629d96a953597568176dc90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 KB (41387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc94f05192995c278df7545b9e096c3f91706ec514f042f74969f6b4db32bc19`

```dockerfile
```

-	Layers:
	-	`sha256:22b0c2d30ff514b60632c47f9a49e319ce12092482925b1bdf6c6a8924acdae1`  
		Last Modified: Wed, 05 Aug 2026 02:26:12 GMT  
		Size: 41.4 KB (41387 bytes)  
		MIME: application/vnd.in-toto+json
