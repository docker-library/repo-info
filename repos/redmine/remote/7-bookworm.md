## `redmine:7-bookworm`

```console
$ docker pull redmine@sha256:0ec7a0f75c42b89aab6872bfd73cfcce4547476da6a7ee065af2b960237bfb5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `redmine:7-bookworm` - linux; amd64

```console
$ docker pull redmine@sha256:8e5e109b338eaa18dba3fee99cfee7c7a776d74bb28d7e9b7de212821ac1705b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.4 MB (305426867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380fdc2ec2ff19da1bad487893464e541d15337978090a434e50438113d4ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:12:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:12:55 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:15:06 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:15:06 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 05 Aug 2026 01:15:06 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 05 Aug 2026 01:15:06 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 05 Aug 2026 01:15:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:15:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:06 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:15:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:15:07 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 01:49:28 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 05 Aug 2026 01:49:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:50:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 01:50:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 01:50:02 GMT
ENV RAILS_ENV=production
# Wed, 05 Aug 2026 01:50:02 GMT
WORKDIR /usr/src/redmine
# Wed, 05 Aug 2026 01:50:02 GMT
ENV HOME=/home/redmine
# Wed, 05 Aug 2026 01:50:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 05 Aug 2026 01:50:02 GMT
ENV REDMINE_VERSION=7.0.0
# Wed, 05 Aug 2026 01:50:02 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.0.tar.gz
# Wed, 05 Aug 2026 01:50:02 GMT
ENV REDMINE_DOWNLOAD_SHA256=857e9f8860c31e4c531389e5d93eea26488dba69830484a3b0aa904be615e90a
# Wed, 05 Aug 2026 01:50:02 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 05 Aug 2026 01:50:05 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 05 Aug 2026 01:50:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 05 Aug 2026 01:50:43 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 05 Aug 2026 01:50:43 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 05 Aug 2026 01:50:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:50:43 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 05 Aug 2026 01:50:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d3bdb898302273b7893ee5b2d60b3638fdf052478e80175b120a000bd62009`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 3.5 MB (3511551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9201de66611c567290c97e124fc6757c71d29f7902795c702761fbee54a6abfb`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f0ceaf5ec057ad797822ecc928b59ee0f859abe7700ba80aba1d4de523331d`  
		Last Modified: Wed, 05 Aug 2026 01:15:17 GMT  
		Size: 49.0 MB (49019029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a74955ba64857f13d9fd72e0859512482b75fa21294657eb492c01931961117`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9ba874b2c62c43954d68bc8e25fbafb7b66f0d7368b918b9fa1638ba8a09ab`  
		Last Modified: Wed, 05 Aug 2026 01:50:58 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccb7821b1ffe0f43499d7367c0a0f7fc4307f02e188fac9400ddd48c853eadd`  
		Last Modified: Wed, 05 Aug 2026 01:51:01 GMT  
		Size: 123.2 MB (123159788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a87bb528d8678916cfc135c32455f1deb8c10c3e5a92a1e98b38a1d314264a4`  
		Last Modified: Wed, 05 Aug 2026 01:50:58 GMT  
		Size: 947.0 KB (947033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b721cdbfd9e89b904858558d7934480a490157c7ca8051824f669229a2c97ad`  
		Last Modified: Wed, 05 Aug 2026 01:50:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e90d4949c64fb1bb98aef59cbbf2928b013a92bad0f08565b47f4b754878a3`  
		Last Modified: Wed, 05 Aug 2026 01:50:59 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27fe698e7302a3a88a66db6ef36e227ddb0b7a2d6dfea7f33e7e02428bafca6`  
		Last Modified: Wed, 05 Aug 2026 01:50:59 GMT  
		Size: 4.2 MB (4230788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:740dcbbea54383ef813a7a1e0a4c265faf73f783d3dda88cf35a2653de734696`  
		Last Modified: Wed, 05 Aug 2026 01:51:02 GMT  
		Size: 96.3 MB (96321973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a1b834647fff898af028cab6d60dc879ac5efc1d3600132545f4caf3f1aee9`  
		Last Modified: Wed, 05 Aug 2026 01:51:00 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:badcf23886a15ed0512d8852064415fe979f5f991b4d7d3cd385f84c6c8edbbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 KB (41514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b54631816b31856be301724e690a62fe7352d3977637c1728f66a0ce6618d9`

```dockerfile
```

-	Layers:
	-	`sha256:3ff7fa72e17c257f578269b0b075b39e9404e76d79290acbbf172c5a799e0857`  
		Last Modified: Wed, 05 Aug 2026 01:50:58 GMT  
		Size: 41.5 KB (41514 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-bookworm` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:3bc7e28c9aeeadddeb5d36dbcc5e951eb89d681c5b35e78769ce3734a017f112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303391594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c3a35be5c71dd62fec07fa7fb2e93b5e633c97c2644f3bc9f71139326864a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:19:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:19:22 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:21:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:21:55 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 05 Aug 2026 01:21:55 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 05 Aug 2026 01:21:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 05 Aug 2026 01:21:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:21:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:21:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:21:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:21:55 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:21:55 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 02:24:29 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Wed, 05 Aug 2026 02:24:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:25:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 02:25:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 02:25:00 GMT
ENV RAILS_ENV=production
# Wed, 05 Aug 2026 02:25:00 GMT
WORKDIR /usr/src/redmine
# Wed, 05 Aug 2026 02:25:00 GMT
ENV HOME=/home/redmine
# Wed, 05 Aug 2026 02:25:00 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 05 Aug 2026 02:25:00 GMT
ENV REDMINE_VERSION=7.0.0
# Wed, 05 Aug 2026 02:25:00 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.0.tar.gz
# Wed, 05 Aug 2026 02:25:00 GMT
ENV REDMINE_DOWNLOAD_SHA256=857e9f8860c31e4c531389e5d93eea26488dba69830484a3b0aa904be615e90a
# Wed, 05 Aug 2026 02:25:00 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 05 Aug 2026 02:25:02 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 05 Aug 2026 02:25:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 05 Aug 2026 02:25:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 05 Aug 2026 02:25:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 05 Aug 2026 02:25:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 02:25:44 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 05 Aug 2026 02:25:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c5551f4a5cbb5dd4a5a903f9e1371ba0ed21d0cdd499ac88785426cea1945`  
		Last Modified: Wed, 05 Aug 2026 01:22:06 GMT  
		Size: 3.3 MB (3344988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056ae0c11053c12551929388ed2292ed366dbf0cfad3002f16caa7eb0ed372ea`  
		Last Modified: Wed, 05 Aug 2026 01:22:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460462eb9e52ac6406c757140540d19c1dd18850dffa42ac8ea88d4daa89f73d`  
		Last Modified: Wed, 05 Aug 2026 01:22:07 GMT  
		Size: 48.8 MB (48783984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e7b900a51174236d791042dabd8d44833f1fa2652100b5c3f5119c18abd35`  
		Last Modified: Wed, 05 Aug 2026 01:22:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bd9a4154c7b77c746ef8b75daed32ed6d73c77cc5e26004fe016491e99bd0f`  
		Last Modified: Wed, 05 Aug 2026 02:26:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8662c13a8d66c16e86610de3c669892ec3bb5f1d06b8a9c1fbeb866c48e0337d`  
		Last Modified: Wed, 05 Aug 2026 02:26:03 GMT  
		Size: 120.6 MB (120614511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e058d22250649eb8a14dc57f8484cae79470d32c1d8ad13c6cb7eb118360c63d`  
		Last Modified: Wed, 05 Aug 2026 02:26:00 GMT  
		Size: 900.2 KB (900172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ca39b32fecedb02549f3ff968ac04f82ef99184518a45134e394184530f4f2`  
		Last Modified: Wed, 05 Aug 2026 02:26:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75f688dca35e1177da2602037c66688e3f844735ae246faec4880b1bce9e48a`  
		Last Modified: Wed, 05 Aug 2026 02:26:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f246d7dc8e0594376ffbc1234c2710ea57a0c839e405cf62071c37517aa672e2`  
		Last Modified: Wed, 05 Aug 2026 02:26:01 GMT  
		Size: 4.2 MB (4230790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f618935bc23ae9f16fc7ef1302b887adff4ef62075a0116e69335075d9f2cd3e`  
		Last Modified: Wed, 05 Aug 2026 02:26:04 GMT  
		Size: 97.4 MB (97395829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4f2ef9f7540d801d16cf141a13fad9a68799539b73e80924beae0f1355fb37`  
		Last Modified: Wed, 05 Aug 2026 02:26:03 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:2289867552a6e965a3af9ba56f0e7d59434f47175c6fd8e08cc7842a2f7ca9de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 KB (41692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be62f319e1c8d9d0b2aa3aa61a07e07601222f77fadc218471c0be3b1ab1a87e`

```dockerfile
```

-	Layers:
	-	`sha256:4f12098d7605d7238b10c7b2fb7785c1b66eb0331c376878556f710bd404c814`  
		Last Modified: Wed, 05 Aug 2026 02:26:00 GMT  
		Size: 41.7 KB (41692 bytes)  
		MIME: application/vnd.in-toto+json
