## `redmine:alpine`

```console
$ docker pull redmine@sha256:472013a58587489576e0bf09b3212dd09b097b14779c3eb066b5599d4c0073ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `redmine:alpine` - linux; amd64

```console
$ docker pull redmine@sha256:849044785cd31e81f33de448e5c5b00e558aaaeb252e0855be025579d990c7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231966153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ecb69a80c9aa1e6e8f0e0ab9b8feccd645009cecfcb4ca5dbd97367832895aa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:44:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 22:47:07 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 22:47:07 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 22:47:07 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 22:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 22:47:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 22:47:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 22:47:07 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 22:47:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:47:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 22:47:07 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 23:17:31 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 23:17:35 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Tue, 15 Sep 2026 23:17:38 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:17:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:17:38 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 23:17:38 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 23:17:38 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 23:17:38 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 23:17:38 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 23:17:38 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 23:17:38 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 23:17:38 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 23:17:40 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 23:18:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 23:18:17 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 23:18:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:18:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:18:17 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 23:18:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14a085f21f5a30234c28698d8beda8a900ee1e853a4fd2e88e8ab1bea9a3da5`  
		Last Modified: Tue, 15 Sep 2026 22:47:16 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d46d906bb386d063cf9201c78d6f0d1ef5dbc24a7bf910592406f3258303f7c`  
		Last Modified: Tue, 15 Sep 2026 22:47:17 GMT  
		Size: 48.7 MB (48682277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838a6a591e71962477f5bb6b958375e6fb1d7691183233658cddea6a3d67e0af`  
		Last Modified: Tue, 15 Sep 2026 22:47:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f52353d5ecc13c8d8f95c62e308dbcb73bf2b7cb1dda41b2a8770d0137aee0e`  
		Last Modified: Tue, 15 Sep 2026 23:18:29 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6fbb075991098cbcce37abde990c4e88b5be28dce4fce77d8410178bd067bf`  
		Last Modified: Tue, 15 Sep 2026 23:18:31 GMT  
		Size: 79.0 MB (79001248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47851d1f06a5fd2b919b08d67e8c94688ee23ad7ca0818d22f7662c181dd1db8`  
		Last Modified: Tue, 15 Sep 2026 23:18:29 GMT  
		Size: 978.4 KB (978444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030be30540904070a18c4c7544ba364e42a54b3cb5c8748fa95c62c2c8d99900`  
		Last Modified: Tue, 15 Sep 2026 23:18:29 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1587d08d7138faea308faa223d1d91a2d1467275e7222d37aa1039f4e0c1e469`  
		Last Modified: Tue, 15 Sep 2026 23:18:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92070d6e4a5140e8eb0675d3cd64ef4d53829b705296c56a42a045f3740240d5`  
		Last Modified: Tue, 15 Sep 2026 23:18:30 GMT  
		Size: 4.2 MB (4241295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2939480d44400d45a1b36dad67983752d5d2820d6a850c752de0497ef0afabf1`  
		Last Modified: Tue, 15 Sep 2026 23:18:32 GMT  
		Size: 95.2 MB (95212582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66ec37982715d61e2e95d4b087ef1ee5a1eb0171bf65ae8dcae02119f68feb5`  
		Last Modified: Tue, 15 Sep 2026 23:18:31 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:d2c6abb6c0fda058623a757bda2f2216c4d9e653076ffb7a52ddfddfa794b1fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 KB (41086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0038a4703d6a6a2df96b489973a2bd5408a8bd45aca925d54b4c60241619634d`

```dockerfile
```

-	Layers:
	-	`sha256:d1aa0e2054b4215652603f180391e74d15317e1b51ea517546e2cd8e83de7671`  
		Last Modified: Tue, 15 Sep 2026 23:18:29 GMT  
		Size: 41.1 KB (41086 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:d93be119a22eeccef5431e6e77c8ab31b584647a96025bf4eea3d88a28910030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233262080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c795767c67adb9428df98f2c742ecd18ba7b56f0b6fc74d96ba37e6f382fb875`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:46:05 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 15 Sep 2026 22:48:36 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 22:48:36 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 15 Sep 2026 22:48:36 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 15 Sep 2026 22:48:36 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 15 Sep 2026 22:48:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 15 Sep 2026 22:48:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 Sep 2026 22:48:36 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:48:36 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 15 Sep 2026 22:48:36 GMT
CMD ["irb"]
# Tue, 15 Sep 2026 23:14:27 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Tue, 15 Sep 2026 23:14:32 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Tue, 15 Sep 2026 23:14:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:14:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:14:35 GMT
ENV RAILS_ENV=production
# Tue, 15 Sep 2026 23:14:35 GMT
WORKDIR /usr/src/redmine
# Tue, 15 Sep 2026 23:14:35 GMT
ENV HOME=/home/redmine
# Tue, 15 Sep 2026 23:14:35 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 15 Sep 2026 23:14:35 GMT
ENV REDMINE_VERSION=7.0.1
# Tue, 15 Sep 2026 23:14:35 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Tue, 15 Sep 2026 23:14:35 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Tue, 15 Sep 2026 23:14:35 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 15 Sep 2026 23:14:37 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 15 Sep 2026 23:15:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 15 Sep 2026 23:15:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 15 Sep 2026 23:15:21 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 15 Sep 2026 23:15:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:15:21 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 15 Sep 2026 23:15:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12aee52f02e5831a9fd8ab626240815be97d514f8242e6997f373472dc9980f6`  
		Last Modified: Tue, 15 Sep 2026 22:48:45 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee359e5ef5e63133b87e74ee782fa7bc55cb7632a5e3785195569582a0bf392`  
		Last Modified: Tue, 15 Sep 2026 22:48:47 GMT  
		Size: 49.0 MB (48965715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc10fdc6625ac4f18937cf5602eb363c6fbd7ba06c74e89c9d0f1c0b9508256c`  
		Last Modified: Tue, 15 Sep 2026 22:48:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c62395d7c1ef876a0da687cf8187c738e1ca32eabd505761f1bad4801d266b`  
		Last Modified: Tue, 15 Sep 2026 23:15:33 GMT  
		Size: 912.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e0762bf57c9448d8c2bbf6d323b2396c0411c32347463f97e46071d42a30be`  
		Last Modified: Tue, 15 Sep 2026 23:15:35 GMT  
		Size: 78.5 MB (78501454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a911498edfc31c73824e5d299041aa6eac57ea3eb0e3ffc6cb575e7db04d74d`  
		Last Modified: Tue, 15 Sep 2026 23:15:33 GMT  
		Size: 930.8 KB (930832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8104418c30ce70bb9e797c2d28c82070289ae2e7c273425f33985fb095f344a1`  
		Last Modified: Tue, 15 Sep 2026 23:15:33 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b64c8d1e2de698db296a5d412687b08d3f23f92326e7b7c4630343abf6e0b`  
		Last Modified: Tue, 15 Sep 2026 23:15:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fa44c0f9bc85291527ebca31982654e045f13d6bb903a87f0c339ebb620598`  
		Last Modified: Tue, 15 Sep 2026 23:15:34 GMT  
		Size: 4.2 MB (4241311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de218faf5de311c8eb67b9679fccf351b4fd6cf6a583c65b028422e99e4d6117`  
		Last Modified: Tue, 15 Sep 2026 23:15:36 GMT  
		Size: 96.4 MB (96435815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb44fb40e503c60d444119be8f0d541ccf46d493ff8c6e25d407b2ba6af65dd`  
		Last Modified: Tue, 15 Sep 2026 23:15:35 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:796d5844cedef3824f50345e41870e9ab39cf85764cc3d4c0990c334a600f560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 KB (41313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012d5c4c7b7fb98744c824b8679d1e35e29e7d0e43b88ac8118b4aac51cda3c7`

```dockerfile
```

-	Layers:
	-	`sha256:5d46594f903060b14b2a85e0df39917ed1a442cc538c1e0222bc138448d04c85`  
		Last Modified: Tue, 15 Sep 2026 23:15:33 GMT  
		Size: 41.3 KB (41313 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine` - linux; ppc64le

```console
$ docker pull redmine@sha256:07b64ec172a952cab9f25faf5ab451af495ce7d7279e011789bf13c77f520792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237778845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9099a8bc2e4b933c58e687f00f242dedbaf80db77e4ba0f234049f393c1aa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 04:41:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 16 Sep 2026 04:45:02 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 04:45:02 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 16 Sep 2026 04:45:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 16 Sep 2026 04:45:02 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 16 Sep 2026 04:45:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 16 Sep 2026 04:45:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 16 Sep 2026 04:45:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 16 Sep 2026 04:45:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:45:03 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 16 Sep 2026 04:45:03 GMT
CMD ["irb"]
# Wed, 16 Sep 2026 08:21:11 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 16 Sep 2026 08:21:28 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 16 Sep 2026 08:21:33 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 08:21:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 08:21:33 GMT
ENV RAILS_ENV=production
# Wed, 16 Sep 2026 08:21:33 GMT
WORKDIR /usr/src/redmine
# Wed, 16 Sep 2026 08:21:33 GMT
ENV HOME=/home/redmine
# Wed, 16 Sep 2026 08:21:34 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 16 Sep 2026 08:21:34 GMT
ENV REDMINE_VERSION=7.0.1
# Wed, 16 Sep 2026 08:21:34 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Wed, 16 Sep 2026 08:21:34 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Wed, 16 Sep 2026 08:21:34 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 16 Sep 2026 08:21:41 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 16 Sep 2026 08:26:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 16 Sep 2026 08:26:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 16 Sep 2026 08:26:05 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 08:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 08:26:05 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 16 Sep 2026 08:26:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a76e9f384ce0eab4ba2cb05b608e6156d2f5df2ce56945018109f3c150942ae`  
		Last Modified: Wed, 16 Sep 2026 04:45:19 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128a6aed3cce2c8310644a7d0da75bf2d88bfcd9c20d4d9a422eb30988cf1ad6`  
		Last Modified: Wed, 16 Sep 2026 04:45:20 GMT  
		Size: 43.4 MB (43362261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68530b01d9ca8b152a61d6b104bde922a48efb98ed2b5287aff437eb34d96ce`  
		Last Modified: Wed, 16 Sep 2026 04:45:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c76681ecf662ed9160c1d6fd54ece739718421d11bfa84a5b38277ea375f379`  
		Last Modified: Wed, 16 Sep 2026 08:26:33 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f51b10706d9b3c0b3ca7613e15d9475ad69456df77d37bc5cdd5afef8b6be0`  
		Last Modified: Wed, 16 Sep 2026 08:26:36 GMT  
		Size: 81.4 MB (81394611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96688ffaf27ae549bba9ad3e65e625e6d27bc4d1fde94627d6e581da44dbdce0`  
		Last Modified: Wed, 16 Sep 2026 08:26:33 GMT  
		Size: 936.1 KB (936064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0eab41b2acd0506c08166856fa451721aa493cd1562f57f98ce13d1bd6a0a38`  
		Last Modified: Wed, 16 Sep 2026 08:26:33 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c273cef2157c786c9a82d7e033a9fcfbe5c65039b74793f4c5143da02d6c87b9`  
		Last Modified: Wed, 16 Sep 2026 08:26:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ffea6935e9f41bc7d9fb8a346d26a5ca1224806df9c9692ba6662228c9419`  
		Last Modified: Wed, 16 Sep 2026 08:26:34 GMT  
		Size: 4.2 MB (4241405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0219f99048dbec29a660aeeec739bf2823ce7671eb8342b2a4bd424b1388e13`  
		Last Modified: Wed, 16 Sep 2026 08:26:37 GMT  
		Size: 104.0 MB (104027189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4890773ed2aa0f8b00ddf547d0346b18e53cdabb9db74bdadcbea8b49ae598`  
		Last Modified: Wed, 16 Sep 2026 08:26:35 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:13a17cfd959715cd06dbab99704331c791785c01c8cdc87fc010323c492843ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8155e9a68406fe7ccdca7187b79d49f09a9e34d2834a2699c69826da7cf3450f`

```dockerfile
```

-	Layers:
	-	`sha256:d4c39003e2f4b533d49d912016fda6dd59b647acb66015406782055edb15765c`  
		Last Modified: Wed, 16 Sep 2026 08:26:33 GMT  
		Size: 41.2 KB (41166 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine` - linux; riscv64

```console
$ docker pull redmine@sha256:c95b1fe4e8bcf2fe75acf094d5514a84ebfd1940748977bbcc9dcc6dcf58a671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240723077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79498dd50d3f83a770f4a06a4f27fa59eebda6c40f99fdb089dcdb9be212f830`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 15:47:32 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 17 Jul 2026 18:07:59 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 18:07:59 GMT
ENV RUBY_VERSION=4.0.6
# Fri, 17 Jul 2026 18:07:59 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Fri, 17 Jul 2026 18:07:59 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Fri, 17 Jul 2026 18:07:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 17 Jul 2026 18:07:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 17 Jul 2026 18:07:59 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 17 Jul 2026 18:07:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 18:07:59 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 17 Jul 2026 18:07:59 GMT
CMD ["irb"]
# Sat, 29 Aug 2026 22:58:02 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Sat, 29 Aug 2026 22:58:33 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Sat, 29 Aug 2026 22:58:43 GMT
ENV GOSU_VERSION=1.19
# Sat, 29 Aug 2026 22:58:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 29 Aug 2026 22:58:43 GMT
ENV RAILS_ENV=production
# Sat, 29 Aug 2026 22:58:43 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Aug 2026 22:58:43 GMT
ENV HOME=/home/redmine
# Sat, 29 Aug 2026 22:58:44 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Sat, 29 Aug 2026 22:58:44 GMT
ENV REDMINE_VERSION=7.0.1
# Sat, 29 Aug 2026 22:58:44 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Sat, 29 Aug 2026 22:58:44 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Sat, 29 Aug 2026 22:58:44 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Sat, 29 Aug 2026 22:58:49 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Sun, 30 Aug 2026 00:13:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Sun, 30 Aug 2026 00:13:27 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 30 Aug 2026 00:13:28 GMT
COPY docker-entrypoint.sh / # buildkit
# Sun, 30 Aug 2026 00:13:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 30 Aug 2026 00:13:28 GMT
EXPOSE map[3000/tcp:{}]
# Sun, 30 Aug 2026 00:13:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9321f87515372057480fa4dff30f704c9d8ab2a54c6772302a4ea0135c42ac4`  
		Last Modified: Fri, 17 Jul 2026 18:09:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256a3777758a2df782f5d4d46433c08e317bf7650b6f8e11178387c2754199dc`  
		Last Modified: Fri, 17 Jul 2026 18:09:29 GMT  
		Size: 44.5 MB (44536148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0446c8b4dcedb8ffa94e4c4b2ef6a258ccd73fde7af0876674eb288e3e0f7625`  
		Last Modified: Fri, 17 Jul 2026 18:09:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f05c9e720ce13e9547b7e469facc4d80986de511d711ff34dc81767ceed6603`  
		Last Modified: Sun, 30 Aug 2026 00:15:50 GMT  
		Size: 912.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afca478f7b099810ca781052ed2ff23e092555758b597cc5aee91bd8ad29125`  
		Last Modified: Sun, 30 Aug 2026 00:16:12 GMT  
		Size: 79.0 MB (78986069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def98bdd26df3c2ffd11cb26317916bd96cde512cdc6401b8ced90c334dc07cd`  
		Last Modified: Sun, 30 Aug 2026 00:15:50 GMT  
		Size: 923.6 KB (923551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5803e15f9895355a82dfea43355cc05361f1ce85052839c07c6d712fb7b7a58f`  
		Last Modified: Sun, 30 Aug 2026 00:15:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6594e8570fe608622b2542847d887b1fec7eb01d0ea82ff54a86e5c250d62e78`  
		Last Modified: Sun, 30 Aug 2026 00:15:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624d7e2087864c5519d961149b50a16d269b977ef41496e35ef79c7a583511d2`  
		Last Modified: Sun, 30 Aug 2026 00:15:53 GMT  
		Size: 4.2 MB (4241028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077122c9fe94c99c35837f2b0e3d308d5c147e721550045138f58a66774f8b8f`  
		Last Modified: Sun, 30 Aug 2026 00:16:17 GMT  
		Size: 108.5 MB (108458007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5b81a73aee9163bba812bbf17e01735a2fe929df7ebcaa73f65974189b71b7`  
		Last Modified: Sun, 30 Aug 2026 00:15:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:da151f77523d61560f735ec157bec9b2ff4605e8e0a18d99a9e9d69a5df5e046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96eef4104b20fe2ecfd93428587a806589c0bb8a52fde1f241a2211c360a6a8`

```dockerfile
```

-	Layers:
	-	`sha256:0111e90bc93acc402b374f545d81c11272b48d20bde3d503b34953a3ca5e8415`  
		Last Modified: Sun, 30 Aug 2026 00:15:50 GMT  
		Size: 41.2 KB (41165 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine` - linux; s390x

```console
$ docker pull redmine@sha256:41577f8ef963f3a9f0fab47ae144b2856a811f3f5fab4bd97aea07ee8f14dc97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.9 MB (235906327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb7d6c34edf5b115437464ec88cec82733b75f64bfab3ed336351dd6ca0d687`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 16:53:12 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:56:31 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:56:31 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:56:31 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:56:31 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:56:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:56:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:31 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:56:31 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:56:31 GMT
CMD ["irb"]
# Wed, 26 Aug 2026 18:33:30 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 26 Aug 2026 18:33:45 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 26 Aug 2026 18:33:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 18:33:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 18:33:53 GMT
ENV RAILS_ENV=production
# Wed, 26 Aug 2026 18:33:56 GMT
WORKDIR /usr/src/redmine
# Wed, 26 Aug 2026 18:33:56 GMT
ENV HOME=/home/redmine
# Wed, 26 Aug 2026 18:33:59 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 26 Aug 2026 18:33:59 GMT
ENV REDMINE_VERSION=7.0.1
# Wed, 26 Aug 2026 18:33:59 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.1.tar.gz
# Wed, 26 Aug 2026 18:33:59 GMT
ENV REDMINE_DOWNLOAD_SHA256=68538b4310fa50ac79a521045cb55fe3bcffed5c1562d6844cf90e66e7619209
# Wed, 26 Aug 2026 18:33:59 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 26 Aug 2026 18:34:08 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 26 Aug 2026 18:38:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 26 Aug 2026 18:38:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 26 Aug 2026 18:38:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 26 Aug 2026 18:38:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:38:29 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 26 Aug 2026 18:38:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b751cc60a705dade24e3fcb594945db7155d2daa30286ace6be150cad3239928`  
		Last Modified: Tue, 14 Jul 2026 16:56:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370cba1ffd73b873e777cf571107c4ebc081969d29921fa1b44c4b5f5c7d895a`  
		Last Modified: Tue, 14 Jul 2026 16:56:46 GMT  
		Size: 40.6 MB (40611474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f31daf8837c840aa61d9d7120cb8047220b2db750466ac9667eeee53c146de1`  
		Last Modified: Tue, 14 Jul 2026 16:56:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662d0450e48daa30eff97a0e3afe6aafbd09e63c55c97c960a4d30f56c25b08b`  
		Last Modified: Wed, 26 Aug 2026 18:39:13 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68410a646a57ddac212cc88ebb9688ce19ca74dc6558f84fd4a73b3dcc1d0876`  
		Last Modified: Wed, 26 Aug 2026 18:39:31 GMT  
		Size: 80.9 MB (80883519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce9ec39be3fcbe61e3ce6dc6ac349b5c96d7bfb6d09459c139ed295b9cad75b`  
		Last Modified: Wed, 26 Aug 2026 18:39:16 GMT  
		Size: 952.2 KB (952161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c640ca3908cdcd7a801d423ff955354d253a2821da87b903cd076049b335f2`  
		Last Modified: Wed, 26 Aug 2026 18:39:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6189485ac583b5e4c3f409016672fe5a74235a43df3fea5f334b4d8a27a047e9`  
		Last Modified: Wed, 26 Aug 2026 18:39:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bee1ea5e88c2e70fc193a57b73fdecf48cea812baa8466b87ac814da7e0584b`  
		Last Modified: Wed, 26 Aug 2026 18:39:22 GMT  
		Size: 4.2 MB (4241128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad7683035278d914d396b2d3f9891eecdf0faa52d82647f0cf2cd4e71624faa`  
		Last Modified: Wed, 26 Aug 2026 18:39:33 GMT  
		Size: 105.5 MB (105504810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593bb62cd386bd785c579a56dc8b7288dce28e7a2fda00682f53166ebf62099e`  
		Last Modified: Wed, 26 Aug 2026 18:39:22 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:2199024b6fc36fa265b48133c36d772731b9c52630ab4c7d4374c4071c822e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 KB (41087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b22833633018a17ead3e8e55d9c5a97d7802d3d642cd1f3a937ba84c044933b`

```dockerfile
```

-	Layers:
	-	`sha256:39ec1d30dc250d017bfb03e29d948b0b9c5e192525e991bce4a3465cf954eb61`  
		Last Modified: Wed, 26 Aug 2026 18:39:12 GMT  
		Size: 41.1 KB (41087 bytes)  
		MIME: application/vnd.in-toto+json
