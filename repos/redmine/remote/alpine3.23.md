## `redmine:alpine3.23`

```console
$ docker pull redmine@sha256:7849996cb6a1a0b7934aeecc90d404ef7b3685d21ead1192b7bed65c7ca21bff
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

### `redmine:alpine3.23` - linux; amd64

```console
$ docker pull redmine@sha256:942ba3ad03e2721c7a8bee83ec5e3e9501c3c9c7528c4ae5912fa418f337d331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228193105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d49774d688692d4eb67aafe5d1fa1af0bd0cef0b01b59df2d7b89d2bb1a79d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:28:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:36 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:36 GMT
ENV RUBY_VERSION=4.0.10
# Thu, 19 Nov 2026 00:30:36 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.10.tar.xz
# Thu, 19 Nov 2026 00:30:36 GMT
ENV RUBY_DOWNLOAD_SHA256=1537f7a6003c436546ecab6b48b6e7725a9af2328f45a8af7f42f41c5df90ab8
# Thu, 19 Nov 2026 00:30:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:36 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:36 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:36 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:31 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:36 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:38 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:38 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:38 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:38 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:39 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 19 Nov 2026 00:35:39 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 19 Nov 2026 00:35:39 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 19 Nov 2026 00:35:39 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:41 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:12 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a639b7db476889e143f5c31b4c736bf448d8b34c716886b7b708e68ed5249c60`  
		Last Modified: Thu, 19 Nov 2026 00:30:44 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed32387b9c6034fd65166901c6614c30578d1aa2eb1d28a06fc0b0b58eb871d1`  
		Last Modified: Thu, 19 Nov 2026 00:30:46 GMT  
		Size: 46.3 MB (46287486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e126d91bfd682ad7f19c59778488fb645485b9e507401ed2852d5b57cbab71ab`  
		Last Modified: Thu, 19 Nov 2026 00:30:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d23c660632dc44b33af03713519350fefbc84928d808282eccf813a0ea4b08`  
		Last Modified: Thu, 19 Nov 2026 00:36:22 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c922f7ef07566a781b4aaf8bedc39ff506b418a82fdad5c8fad48803252f20d`  
		Last Modified: Thu, 19 Nov 2026 00:36:24 GMT  
		Size: 78.5 MB (78478668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fbec268cd112c2a0d9381141f2b53e609e0608bc3fa2e4000cac3be2fd48f8`  
		Last Modified: Thu, 19 Nov 2026 00:36:23 GMT  
		Size: 974.6 KB (974597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cc6f60a27462a14034235919a553cb1976650534eff42529079462af97c9a4`  
		Last Modified: Thu, 19 Nov 2026 00:36:22 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20571cab3ee561188d0afd14a5dfd6dbce21fe58e5bbd985582e309f348da83a`  
		Last Modified: Thu, 19 Nov 2026 00:36:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8b89b1623665c1af6604902f3b5daf54bf7acddcdd3cc0ce29ecba082fd559`  
		Last Modified: Thu, 19 Nov 2026 00:36:24 GMT  
		Size: 4.3 MB (4261364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb433036225b055344bdd1cc67323a16d7a9760639567119016c2e6f6917b1`  
		Last Modified: Thu, 19 Nov 2026 00:36:26 GMT  
		Size: 94.3 MB (94334488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d2a2214b99b7220aae0e026418fa2398c104b56d56125881b2b132fc27fe72`  
		Last Modified: Thu, 19 Nov 2026 00:36:25 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:ddf1b2ae63737c32db52400d12de7eb847446ea0f121fc79649e77f39f35c046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 KB (39874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb619d1c2ce4d732de6c270655e31c8095d2462c9a47b88c1097be219a980b1`

```dockerfile
```

-	Layers:
	-	`sha256:44248281cac73ebad0ace221138e37ba8fa0eb26e978f0374d568158850dc397`  
		Last Modified: Thu, 19 Nov 2026 00:36:22 GMT  
		Size: 39.9 KB (39874 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1f17656d3751fd7d6961fd26055e9496fbbf4bb25709e198b8590e0e1b2fe79b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229247308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d69d4bbc7c03211c41d0c8e53a1d59b28c061e23d9080d28461fcb368c2262`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:28:14 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:45 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:45 GMT
ENV RUBY_VERSION=4.0.10
# Thu, 19 Nov 2026 00:30:45 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.10.tar.xz
# Thu, 19 Nov 2026 00:30:45 GMT
ENV RUBY_DOWNLOAD_SHA256=1537f7a6003c436546ecab6b48b6e7725a9af2328f45a8af7f42f41c5df90ab8
# Thu, 19 Nov 2026 00:30:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:45 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:45 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:45 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:33 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:43 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:43 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:43 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:43 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:43 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 19 Nov 2026 00:35:43 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 19 Nov 2026 00:35:43 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 19 Nov 2026 00:35:43 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:46 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:37 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:37 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:37 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e79e6565cb40c97e21a6dbbcab53852739bc2dd124b00661701fad76d5c3d68`  
		Last Modified: Thu, 19 Nov 2026 00:30:53 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd92150057acb61f9ae5b7a2bd8ba7c102a31318e0f9cffdefd5406d160f8ba`  
		Last Modified: Thu, 19 Nov 2026 00:30:55 GMT  
		Size: 46.3 MB (46264857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b61c6b3a10ea94e57537c61b823336b79a7026a60b47ee72aec6784a4ee547`  
		Last Modified: Thu, 19 Nov 2026 00:30:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b715af3f5d71bca81a2d8f46efcaa71582c575eefe16fa64550a240a1ad7f2`  
		Last Modified: Thu, 19 Nov 2026 00:36:48 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8f0f88a0e6f42a05ef19a600dc3e6211f42530b1fed0b6086004f6bdec8a3d`  
		Last Modified: Thu, 19 Nov 2026 00:36:51 GMT  
		Size: 78.0 MB (77972316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c758aa1684546573b66181b5a67ff0ff158f3d747eb11deb55978fab5901fd85`  
		Last Modified: Thu, 19 Nov 2026 00:36:49 GMT  
		Size: 928.5 KB (928500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ef6de01e331d99e4d286cacf1e51958248acf61bcbd5c5810903c2e6686ada`  
		Last Modified: Thu, 19 Nov 2026 00:36:49 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1bde3e31899973facfaa70d95893bfeb0dedf258f6d72c2b856396e54e123c0`  
		Last Modified: Thu, 19 Nov 2026 00:36:50 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf05fd1792a5eb76c5683f1770ba9c766fae6ed016285942df38865d82c5658`  
		Last Modified: Thu, 19 Nov 2026 00:36:50 GMT  
		Size: 4.3 MB (4261398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1bbae805048d187713a0676460c95f822c759b5ecdccfe702f8cc83fe4acd03`  
		Last Modified: Thu, 19 Nov 2026 00:36:52 GMT  
		Size: 95.6 MB (95626107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bf3f4f78b76893cfdc3829d06c574904dab81a37f997c1257e409e51c8d1f4`  
		Last Modified: Thu, 19 Nov 2026 00:36:51 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:8961b2972f0df5721f967e1a7d2c1acbd2489f203214a7e90c460306beabe168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 KB (40052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b287ed5fb0a4c5aeae2f6cb27b4f8e0228a31be95255b06daf03b52cb3a698e`

```dockerfile
```

-	Layers:
	-	`sha256:b78b8c800d6f8f2fa4f70596b08c1050e4e18ed9fe3e7dcbf6365b66bf4a753c`  
		Last Modified: Thu, 19 Nov 2026 00:36:48 GMT  
		Size: 40.1 KB (40052 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; ppc64le

```console
$ docker pull redmine@sha256:94dab50b4e60b45cfe8ee25824972109530d3f6fff7e6208424ae23c84350cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235422090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac018137698c3877413cbc2ee7f67bd923e3b4fefb60c59c913d88f54e984673`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:12:15 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 06 Nov 2026 06:26:05 GMT
ENV LANG=C.UTF-8
# Fri, 06 Nov 2026 06:26:05 GMT
ENV RUBY_VERSION=4.0.9
# Fri, 06 Nov 2026 06:26:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Fri, 06 Nov 2026 06:26:05 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Fri, 06 Nov 2026 06:26:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 06 Nov 2026 06:26:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Nov 2026 06:26:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Nov 2026 06:26:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 06:26:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 06 Nov 2026 06:26:05 GMT
CMD ["irb"]
# Fri, 06 Nov 2026 12:11:24 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 06 Nov 2026 12:11:48 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 06 Nov 2026 12:11:51 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 12:11:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 12:11:51 GMT
ENV RAILS_ENV=production
# Fri, 06 Nov 2026 12:11:51 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Nov 2026 12:11:51 GMT
ENV HOME=/home/redmine
# Fri, 06 Nov 2026 12:11:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 06 Nov 2026 12:11:51 GMT
ENV REDMINE_VERSION=7.0.3
# Fri, 06 Nov 2026 12:11:51 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Fri, 06 Nov 2026 12:11:51 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Fri, 06 Nov 2026 12:11:51 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 06 Nov 2026 12:11:55 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 06 Nov 2026 12:15:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 06 Nov 2026 12:15:48 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Nov 2026 12:15:57 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 12:15:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 12:15:57 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 06 Nov 2026 12:15:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa1903c4a4c554fbe08b501c0981a4e4f9906f4e2e3d9aac336c37c12311ccd`  
		Last Modified: Fri, 06 Nov 2026 06:17:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84667b7cba694924dac724d5756e883ccee20718ad58b8c7a04bd7d7c745c840`  
		Last Modified: Fri, 06 Nov 2026 06:26:33 GMT  
		Size: 41.0 MB (40974174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f738c97ae2d7c997644b5c2d481ff1a94d793103f64b7e25c0353f50ed3d6a7`  
		Last Modified: Fri, 06 Nov 2026 06:26:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ef66e247c345fe1c58287d7d9f037e1fe345fb8f9bfb5972672dfd521a795e`  
		Last Modified: Fri, 06 Nov 2026 12:16:21 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e6ef20ade94e1e5e588735fae5977660be2a80b375ccf0373451a59fd4569e`  
		Last Modified: Fri, 06 Nov 2026 12:16:24 GMT  
		Size: 81.1 MB (81082735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8147aa8a6c790af9fe37d87fee8db35c28aeaf47db0e87362113a55c4ba2b89a`  
		Last Modified: Fri, 06 Nov 2026 12:16:21 GMT  
		Size: 933.8 KB (933790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d51be3ad6d6140b94b74f0344bcf5a52082907f3b419c15f36d3ec1910b1be`  
		Last Modified: Fri, 06 Nov 2026 12:16:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd7410b985feb41491015a8ea5c51b0501527b6fb73b6e8f3c8767c8b69cc5d`  
		Last Modified: Fri, 06 Nov 2026 12:16:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7586eb02c53f869d1092b61fe949af6f662724fcd7a39f8e143360957194e57`  
		Last Modified: Fri, 06 Nov 2026 12:16:23 GMT  
		Size: 4.3 MB (4261349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bca46dd09822a62265f79ccce77816c0d59da5d40efe9d2f30d0fc000a460c`  
		Last Modified: Fri, 06 Nov 2026 12:16:26 GMT  
		Size: 104.3 MB (104347121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934192dbe23a2a6e76505061176f39b264d24af927a4e90e9ab7ace235c11fa2`  
		Last Modified: Fri, 06 Nov 2026 12:16:24 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:8296b576e6f07dffe98276be160658ce09f081983e18bf6154320f9a25cdb421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 KB (39917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5325b08e51b74197b7d857c96bbea98b8b8cc82c75e955f2ed56b499211fc20d`

```dockerfile
```

-	Layers:
	-	`sha256:49fbe0ff2cd6c2446ba532997c87e39ffe09da0b5b7ced6478bffdf3905cc63c`  
		Last Modified: Fri, 06 Nov 2026 12:16:21 GMT  
		Size: 39.9 KB (39917 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; riscv64

```console
$ docker pull redmine@sha256:9e8f7bb4843ee23a9e3ee9136fbe07e11b3b602fe4ca5bc55b8a26ee2b385355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237649038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb56efdda38b5463624f223b38ebd9a1103c293f5556d3f9b6ffa45c1f0623de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 15:50:19 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 12 Nov 2026 19:47:15 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 19:47:15 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 12 Nov 2026 19:47:15 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 12 Nov 2026 19:47:15 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 12 Nov 2026 19:47:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 12 Nov 2026 19:47:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 12 Nov 2026 19:47:15 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 12 Nov 2026 19:47:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 19:47:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 12 Nov 2026 19:47:16 GMT
CMD ["irb"]
# Tue, 17 Nov 2026 20:59:28 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Tue, 17 Nov 2026 21:00:06 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Tue, 17 Nov 2026 21:00:15 GMT
ENV GOSU_VERSION=1.19
# Tue, 17 Nov 2026 21:00:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 17 Nov 2026 21:00:15 GMT
ENV RAILS_ENV=production
# Tue, 17 Nov 2026 21:00:15 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Nov 2026 21:00:15 GMT
ENV HOME=/home/redmine
# Tue, 17 Nov 2026 21:00:16 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 17 Nov 2026 21:00:16 GMT
ENV REDMINE_VERSION=7.0.3
# Tue, 17 Nov 2026 21:00:16 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Tue, 17 Nov 2026 21:00:16 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Tue, 17 Nov 2026 21:00:16 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 17 Nov 2026 21:00:21 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 17 Nov 2026 22:13:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 17 Nov 2026 22:13:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Nov 2026 22:13:30 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 17 Nov 2026 22:13:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:13:30 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 17 Nov 2026 22:13:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273b908ce80e9187ed6a02733221a9c7006b2261e623ccd7825b29314f8f6093`  
		Last Modified: Thu, 12 Nov 2026 17:11:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143c00b987c43dc5e557b92519c21433acb586f48e9131a44da5f15912141b7`  
		Last Modified: Thu, 12 Nov 2026 19:48:58 GMT  
		Size: 44.5 MB (44545190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8722698bca0e1e00c2f3d11d79741500e020920f5334ed6fb407b60e5748f834`  
		Last Modified: Thu, 12 Nov 2026 19:48:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087f3c5685584c98c3fa99d5985e6860165ba9227f67df5924542c8c57f6f9c0`  
		Last Modified: Tue, 17 Nov 2026 22:16:02 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5f7384a07abe33358c8715b3a819af91faafd53af9c48265c04732e834bc5d`  
		Last Modified: Tue, 17 Nov 2026 22:16:24 GMT  
		Size: 76.7 MB (76699049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acb0d2dd12aacda8f0c2c597c1beb5031cdee283d629312d487050e08412981`  
		Last Modified: Tue, 17 Nov 2026 22:16:02 GMT  
		Size: 921.3 KB (921265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5ceac4fb301a90844d86a0bb448fe53b456540b4f0ce147245460ac0ea1350`  
		Last Modified: Tue, 17 Nov 2026 22:16:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a0f9738004fd81174103bed6be015fc122101cbabdf0aa186633776635a710`  
		Last Modified: Tue, 17 Nov 2026 22:16:04 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3800f2e2928b3265d8b83500e725eeadeaf63cc7bc0c3c1f5829cc3243205d7b`  
		Last Modified: Tue, 17 Nov 2026 22:16:06 GMT  
		Size: 4.3 MB (4261376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2293939c6f3ecedfc6c7e38daf6ab81c449e8d7d40642333db98472aad824e`  
		Last Modified: Tue, 17 Nov 2026 22:16:30 GMT  
		Size: 107.6 MB (107638119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e30cc8641b1455869e6ec69a783c0622ae6dcf8d945d0d1c018e1a1f7bc604`  
		Last Modified: Tue, 17 Nov 2026 22:16:06 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:8e35b8c2c5929a10ca758a006311832efb170d13929ded1364421a56bf46bc62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 KB (39917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932157e0b4c8e31858e749f3c4b381ee00cfbc22831f9fd8bedbbae1154cc1b1`

```dockerfile
```

-	Layers:
	-	`sha256:402e9d5451a0f4f38a56bc3d0984c3d3baca6575be8d3a10d24d0ace33d86cb4`  
		Last Modified: Tue, 17 Nov 2026 22:16:02 GMT  
		Size: 39.9 KB (39917 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.23` - linux; s390x

```console
$ docker pull redmine@sha256:7465fe0164e8e231c159a678fd6bffb193530818cd270f6c5e927f62a38d11b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231751701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75113871a6e3510d61b2469a11132544f6b732038a3f8e4a61d592ae22212b0a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:19:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 21:23:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:23:03 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 21:23:03 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 21:23:03 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 21:23:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 21:23:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 21:23:03 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 21:23:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:23:03 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 21:23:03 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 22:39:16 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 05 Nov 2026 22:39:23 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 05 Nov 2026 22:39:26 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:39:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 22:39:26 GMT
ENV RAILS_ENV=production
# Thu, 05 Nov 2026 22:39:26 GMT
WORKDIR /usr/src/redmine
# Thu, 05 Nov 2026 22:39:26 GMT
ENV HOME=/home/redmine
# Thu, 05 Nov 2026 22:39:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 05 Nov 2026 22:39:27 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 05 Nov 2026 22:39:27 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 05 Nov 2026 22:39:27 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 05 Nov 2026 22:39:27 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 05 Nov 2026 22:39:28 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 05 Nov 2026 22:43:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 05 Nov 2026 22:43:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 05 Nov 2026 22:43:08 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:43:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:43:08 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 05 Nov 2026 22:43:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd055110e6b6704d03bd00b6dc6094f1956110dfeb13a27600d62ae8efed7365`  
		Last Modified: Thu, 05 Nov 2026 21:23:31 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b86bd9e5570dd384a3777e5af8185b93150809eb05dca435691f793afff5e8`  
		Last Modified: Thu, 05 Nov 2026 21:23:32 GMT  
		Size: 40.6 MB (40572519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5596e1b05b724de71e8a801fe4cd7bf8da81faf733bbfdbe3a2978af4561ffb`  
		Last Modified: Thu, 05 Nov 2026 21:23:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d273abfdceae9b8fc94b614ae70fabab4e38536c72744b9d7e767990f39bd49`  
		Last Modified: Thu, 05 Nov 2026 22:43:26 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6393a54f04a9b3f94a4e99692224380870e64a305fb5adc9768187e20817a3ec`  
		Last Modified: Thu, 05 Nov 2026 22:43:28 GMT  
		Size: 78.7 MB (78725829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85454eb53cee142b45ff1f85f1852207f11471c4ef2a32522759d58b67bfd919`  
		Last Modified: Thu, 05 Nov 2026 22:43:26 GMT  
		Size: 949.7 KB (949663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50307dcfac0194e9314992b21048b7a7d38553367ccd4e3bb3eca8a697bb660`  
		Last Modified: Thu, 05 Nov 2026 22:43:26 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e3766b51329e0ec864583da4ded7204ccb9378999e1dba68ba6b3ea0101226`  
		Last Modified: Thu, 05 Nov 2026 22:43:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4dd970bd145042923638c32c6c166d172f4a7e3500fa426554efaeca9da8720`  
		Last Modified: Thu, 05 Nov 2026 22:43:27 GMT  
		Size: 4.3 MB (4261391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8fef02bd1114f9b83de533e14a5705439c316b756756c56134d7ca22fd7562`  
		Last Modified: Thu, 05 Nov 2026 22:43:29 GMT  
		Size: 103.5 MB (103520041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75270c3f2b58ee15ab58d87f7bfe1e02b1b5606818daf29bd393a2132cb26e73`  
		Last Modified: Thu, 05 Nov 2026 22:43:22 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:8fbc8ebdc725f3ba641a3093c71801b7dc4eefb2d1c4a1472264be002535a8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 KB (39864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf67573a94c144c3ec2085337d524d1e04f2bdff6ea6c60943cd4c76275e748`

```dockerfile
```

-	Layers:
	-	`sha256:913423a8a1593cb9bb6ec67691c8ec4376849eb56642b82810f9d6edb96a5cb9`  
		Last Modified: Thu, 05 Nov 2026 22:43:26 GMT  
		Size: 39.9 KB (39864 bytes)  
		MIME: application/vnd.in-toto+json
