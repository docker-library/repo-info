## `redmine:7-bookworm`

```console
$ docker pull redmine@sha256:2dbfcd916ae51f79ae91bd40a180052c3f05205b192a1645d2bda0fa28c52484
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `redmine:7-bookworm` - linux; amd64

```console
$ docker pull redmine@sha256:fa58809db09ef8cadaa3e7c5ef051575a63b7b05bc7f45c5e1ae174f71259e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304742573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33c4cd2b82bac10bfb0e1781ed3bc35844fe5c5923b93c8734b3169de91e6a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 00:27:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:27:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:39 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:39 GMT
ENV RUBY_VERSION=4.0.10
# Thu, 19 Nov 2026 00:30:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.10.tar.xz
# Thu, 19 Nov 2026 00:30:39 GMT
ENV RUBY_DOWNLOAD_SHA256=1537f7a6003c436546ecab6b48b6e7725a9af2328f45a8af7f42f41c5df90ab8
# Thu, 19 Nov 2026 00:30:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:39 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:29 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzr 		ca-certificates 		ghostscript 		git 		gsfonts 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		wget 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:36:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:36:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:36:05 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:36:05 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:36:05 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:36:05 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:36:05 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 19 Nov 2026 00:36:05 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 19 Nov 2026 00:36:05 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 19 Nov 2026 00:36:05 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:36:08 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		pkgconf 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	arch="$(dpkg --print-architecture)"; 	if [ "$arch" = 'armel' ]; then 		gosu redmine bundle config set force_ruby_platform true; 	fi; 	gosu redmine bundle config set build.nokogiri --use-system-libraries; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:45 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:45 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:45 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd5f0a5d8dd27e6fdec79530be98f2896a54c54121010b1b83bef770c114ce2`  
		Last Modified: Thu, 19 Nov 2026 00:30:49 GMT  
		Size: 3.3 MB (3330094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e46d478a02a2465b53377c428e8d6fe69dc2c198eb01a695dd4e09486717529`  
		Last Modified: Thu, 19 Nov 2026 00:30:49 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d79db6682d74297c06c03b81a87d1fd7f679abbc5188179a91973789d27449b`  
		Last Modified: Thu, 19 Nov 2026 00:30:50 GMT  
		Size: 49.1 MB (49079081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba685569ad1d1d0749cee2d902c2dd33011357db64bafd1c8e2d4023acab231`  
		Last Modified: Thu, 19 Nov 2026 00:30:49 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b77d2e3f16bb4c6be5855c9630e577560c432e55258286c71430db96dbe872`  
		Last Modified: Thu, 19 Nov 2026 00:37:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6fff7be41a3fd216d6b6e17b0b3ab4fd63eb9efde69a9ce467bd4141dc88dd`  
		Last Modified: Thu, 19 Nov 2026 00:37:05 GMT  
		Size: 123.2 MB (123184172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfe58cbc1e57a697fc9bdfc54ad374f17a37cf3a828de2db8dc2c67afe458d5`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 947.1 KB (947064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1070d5372fe22431bb5f3f3211a22830bcdc0428243561e4aa91ba9f5dc19ec2`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8777659e36bfac4ddc7c8accd170a8c4fb315fe394131b17f1e2e64baddf9210`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c44c27504189a32e491e9bc5f2663a90882db69c5e2fff2bfb7965ca2e5ab2`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 4.3 MB (4260507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71dd1678303168e0dedbda144e26d6e31cd3b361f1f55f4bd935ea442bd5e55f`  
		Last Modified: Thu, 19 Nov 2026 00:37:06 GMT  
		Size: 95.7 MB (95689554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e1880447e94cbe7c86629aa3a7e327fe96a28d6416c09674ce8b83b6e7c45a`  
		Last Modified: Thu, 19 Nov 2026 00:37:04 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:9d65f9f436b7249240a29a537c08ea1e01bbe165482b2cb0df3b8100df11b4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 KB (41526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a746deae01aac8c6cd63ac828fcbc71794add86e536582ec10d8df49eaad8ee`

```dockerfile
```

-	Layers:
	-	`sha256:36787bed0325b9d298aa918f3286664befe461d8589b01adb1d031135ac6df8a`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 41.5 KB (41526 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:7-bookworm` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6ba9072f598107996956fe2dd4ed525b1b5e53a19462f3f924a6bd7f1a17bd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302827658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4931eb94a1ea7302d4b727e8f75dd0eca150b7bcc54a4b0baaaa688f9283647`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 00:28:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 00:28:00 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:30 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:30 GMT
ENV RUBY_VERSION=4.0.10
# Thu, 19 Nov 2026 00:30:30 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.10.tar.xz
# Thu, 19 Nov 2026 00:30:30 GMT
ENV RUBY_DOWNLOAD_SHA256=1537f7a6003c436546ecab6b48b6e7725a9af2328f45a8af7f42f41c5df90ab8
# Thu, 19 Nov 2026 00:30:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:30 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:30 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:30 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:29 GMT
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
ENV REDMINE_VERSION=7.0.3
# Thu, 19 Nov 2026 00:36:04 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 19 Nov 2026 00:36:04 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 19 Nov 2026 00:36:04 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:36:07 GMT
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
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a1a39e23fe49c98808e299abbf95c2c6b1e289a62ee4c0686b7f16f3def9f5`  
		Last Modified: Thu, 19 Nov 2026 00:30:40 GMT  
		Size: 3.2 MB (3161056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b38f212cb304be5e3f525b5ce6a89f2fa5931001429b2ebd7cfa0b0b0db20f6`  
		Last Modified: Thu, 19 Nov 2026 00:30:40 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a916f17b6ee242e4a27678cdbaa68f7565d8c5fccd972dc577fa8d6b3d4626`  
		Last Modified: Thu, 19 Nov 2026 00:30:41 GMT  
		Size: 48.8 MB (48818095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc2c976289f4554b8de049c682e1a9a9693bed06066e735f561f0f56af39ebb`  
		Last Modified: Thu, 19 Nov 2026 00:30:40 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b77d2e3f16bb4c6be5855c9630e577560c432e55258286c71430db96dbe872`  
		Last Modified: Thu, 19 Nov 2026 00:37:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96409e1fb4fdd98ccc0d7da36c759997b986a6600177bdd15182e044c39f2626`  
		Last Modified: Thu, 19 Nov 2026 00:37:03 GMT  
		Size: 120.7 MB (120661032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0d383ce372ff0cf1f4fa1de1a047db3315220782a42d932563e9653ac91c56`  
		Last Modified: Thu, 19 Nov 2026 00:37:00 GMT  
		Size: 900.1 KB (900132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfb15c8292001226fc582b9dfdbf61ee78b11448f968b4ccfbcff35b5ab523c`  
		Last Modified: Thu, 19 Nov 2026 00:37:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f463cbeef92d311a9cca2847304b55de4a57ead29a4ad855a5339a9946e935`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd0233886a412180be293b44c52e4201cf0a68eaf4e47609412a5488bd4ae67`  
		Last Modified: Thu, 19 Nov 2026 00:37:01 GMT  
		Size: 4.3 MB (4260509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767c24388b90feb47a82c99ce32987284ba29a86ff73a43146ac0704dd55589f`  
		Last Modified: Thu, 19 Nov 2026 00:37:04 GMT  
		Size: 96.9 MB (96878358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd1d53d75a380bc2a383de6c485a49cef1ddc146a7e7e453e7f72339cea6700`  
		Last Modified: Thu, 19 Nov 2026 00:36:42 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:7-bookworm` - unknown; unknown

```console
$ docker pull redmine@sha256:e7468b2f40f7dda9645bc3df013390f6163acc594b171049bd034e4034965c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 KB (41705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b32db8912c1e2d849ecd84ed8f888be3d24181f20c05547df78cfd07bdbaf8e`

```dockerfile
```

-	Layers:
	-	`sha256:a7e0825ccd486da31a70ab0e5c6107339d22996ac6dd2c0bf36f04a90861ce9a`  
		Last Modified: Thu, 19 Nov 2026 00:36:59 GMT  
		Size: 41.7 KB (41705 bytes)  
		MIME: application/vnd.in-toto+json
