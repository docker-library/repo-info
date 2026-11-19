## `redmine:6-alpine3.24`

```console
$ docker pull redmine@sha256:d0f6c30f438b19c5e587fe016481d899838c5626e35a408518342260414df624
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `redmine:6-alpine3.24` - linux; amd64

```console
$ docker pull redmine@sha256:8e64ef732e59cd7350d68a169fe0b15e92227bcd7ccd956aa4abc329c69c0fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 MB (202934642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0a6f4a955a69d697afe6db54c3de29effc39d0df996a519b85db5900148655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:30:03 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:32:16 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:32:16 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:32:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:32:16 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:32:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:32:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:32:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:32:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:32:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:32:16 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:34 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:39 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:41 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:41 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:41 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:41 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:41 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 19 Nov 2026 00:35:41 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 19 Nov 2026 00:35:41 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 19 Nov 2026 00:35:41 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:44 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:27 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:27 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5fcc389c2c5deefaf17461b73d684ecbc6e7ea04c662596228f101ecd13bb4`  
		Last Modified: Thu, 19 Nov 2026 00:32:24 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48b55a7b999994d212c40ec43505a8aef7390a5b8aa55e30f1ad2da3fcded4a`  
		Last Modified: Thu, 19 Nov 2026 00:32:25 GMT  
		Size: 41.8 MB (41840203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1432c681b3fbc9a959dc8e3ecb7e50567218a33377b16b49d1fed51d4e536565`  
		Last Modified: Thu, 19 Nov 2026 00:32:24 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600809ad2acdb74b8c9371e42c893bfd29ab0fc126b56b42a5ebfdc7cbb6af98`  
		Last Modified: Thu, 19 Nov 2026 00:36:38 GMT  
		Size: 908.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9891239b9aa594f1457c4d5bf5c50c490e8aa8c32ce71760471903fa523bb392`  
		Last Modified: Thu, 19 Nov 2026 00:36:40 GMT  
		Size: 78.7 MB (78674051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23bb70af24703a79e7cacb485b00d0b1bc0e97cd3fb78711cd8d771ce0b3546`  
		Last Modified: Thu, 19 Nov 2026 00:36:38 GMT  
		Size: 978.6 KB (978635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000ce6f3300cef89b9e2ea4f9002b7adb0059a33097d513a472ce3fda49cb232`  
		Last Modified: Thu, 19 Nov 2026 00:36:37 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5db896a60ca106595a67c548ae8ae537b4374b3ec3adcd863e53a734245399`  
		Last Modified: Thu, 19 Nov 2026 00:36:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af629f126bb8e6d776246c373fcb24d79a437184dc2e6dd1c0fba2e3c27486c7`  
		Last Modified: Thu, 19 Nov 2026 00:36:39 GMT  
		Size: 4.2 MB (4169363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502a823de0b6205e92113396d86129a7c5c31f2d915d63e672cf7362f241e5ca`  
		Last Modified: Thu, 19 Nov 2026 00:36:41 GMT  
		Size: 73.4 MB (73414809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1bff627710d00ccf470c040e3543197ba7e05f6bccc60e153a3325f3424b0c`  
		Last Modified: Thu, 19 Nov 2026 00:36:40 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:8fe4cd5ca64818ac32d1aa04b2f28e6c871f78234cf3f7424e678e7b72525f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 KB (40490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19273f5690b4ce4e276643423a5e7536f4eda4b8e697e14c22476e54d861e738`

```dockerfile
```

-	Layers:
	-	`sha256:88232ecf98f137a39a2fe6f35eda3c2efff88b29c19019db6dc7cd946457bd73`  
		Last Modified: Thu, 19 Nov 2026 00:36:38 GMT  
		Size: 40.5 KB (40490 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.24` - linux; arm variant v7

```console
$ docker pull redmine@sha256:77993dff4294d9f8ec2a0a98ba3ffc5de325a18e9d4410a0314368dcac9d2bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204819963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca965d9d5aa0de723b8a4332489db1b320eabcb6457b20e008a7aaeb5adaed0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:21:02 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 19:23:31 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:23:31 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 19:23:31 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 19:23:31 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 19:23:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 19:23:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 19:23:31 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 19:23:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:23:31 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 19:23:31 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 20:23:13 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 05 Nov 2026 20:23:19 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 05 Nov 2026 20:23:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 20:23:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 20:23:22 GMT
ENV RAILS_ENV=production
# Thu, 05 Nov 2026 20:23:22 GMT
WORKDIR /usr/src/redmine
# Thu, 05 Nov 2026 20:23:22 GMT
ENV HOME=/home/redmine
# Thu, 05 Nov 2026 20:23:22 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 05 Nov 2026 20:23:22 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 05 Nov 2026 20:23:22 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 05 Nov 2026 20:23:22 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 05 Nov 2026 20:23:22 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 05 Nov 2026 20:23:24 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 05 Nov 2026 20:25:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 05 Nov 2026 20:25:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 05 Nov 2026 20:25:00 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 20:25:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:25:00 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 05 Nov 2026 20:25:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef23bed45e2aa8f27d726bc25957b8cb2c7bbdca82997b80510f885112dfbb9a`  
		Last Modified: Thu, 05 Nov 2026 19:23:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183007d086d293013d4fdf857ecb40a5df54efd97a74512a92d6e8b2dee72e6d`  
		Last Modified: Thu, 05 Nov 2026 19:23:39 GMT  
		Size: 34.8 MB (34759765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa9ca6a93e1090300ad5a356f4b2272d363fac54eee2cbd0441db1b708ddcfd`  
		Last Modified: Thu, 05 Nov 2026 19:23:38 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d50ede19703e468abedcc1bedb3fcde1f95d37a7888f404d0618a4dc8281bbd`  
		Last Modified: Thu, 05 Nov 2026 20:25:11 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28c1cedad7ffd7d4e685668fd96afe27a964913baceec8d4de5dee7717fb6cc`  
		Last Modified: Thu, 05 Nov 2026 20:25:13 GMT  
		Size: 71.9 MB (71867715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30ef25934cd34e44d7221354215c068e37b163a88d58f2f46832d3503408c8`  
		Last Modified: Thu, 05 Nov 2026 20:25:11 GMT  
		Size: 943.6 KB (943641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08074db11e8970fa8372fe4bdc68b44abdcc35b5eece716550abe6181b1a04a1`  
		Last Modified: Thu, 05 Nov 2026 20:25:11 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7c316de1fa689bac145096efe30c40f55a7adaaa2f769749d3c3f690c2639c`  
		Last Modified: Thu, 05 Nov 2026 20:25:12 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b413389c6f78daaeec5930457e896f124fb7e858bf39465822884b0e72b6618`  
		Last Modified: Thu, 05 Nov 2026 20:25:12 GMT  
		Size: 4.2 MB (4169386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce39726f43a5113e04d0d4876428ff0ea2c7d45010f3a15c85266d6b4244c46`  
		Last Modified: Thu, 05 Nov 2026 20:25:14 GMT  
		Size: 89.8 MB (89807811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcc15866db7de5f7aee67cc80fbc3680d985e498c312ba1fdf6f22fddc71581`  
		Last Modified: Thu, 05 Nov 2026 20:25:13 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:e7931d3b1c94d0142a966cfd328cb208b631287b44bc29aae7517263482837ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 KB (40651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a3034bafb98495c499c7a74b123c0d2d180440ffb621c5bad11c712396c6ec`

```dockerfile
```

-	Layers:
	-	`sha256:c9c00ecdec7a686477ce050aa0f2cf929737690dd456c9eb569e004cc7e5133f`  
		Last Modified: Thu, 05 Nov 2026 20:25:11 GMT  
		Size: 40.7 KB (40651 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:11138245d78b20250790026c19aac836be89d3434272483106ddf814f94727c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 MB (202937185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17be2306d78b0aa75e3c0364f08e5339119add19008e95ad4b9c15341be4e87a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:30:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:33:08 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:33:08 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:33:08 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:33:08 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:33:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:33:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:33:08 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:33:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:33:08 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:33:08 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:37 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:42 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:45 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:45 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:45 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:45 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:45 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 19 Nov 2026 00:35:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 19 Nov 2026 00:35:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 19 Nov 2026 00:35:45 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:47 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:33 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:33 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:33 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9d851367d98bd80634e20f758cf9ca39cc9dc1fcf222c3f8921a000e03971c`  
		Last Modified: Thu, 19 Nov 2026 00:33:16 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9814f00f7183ce1c27d5005109da129aaf04e49865be8514bde10de9d7f459f0`  
		Last Modified: Thu, 19 Nov 2026 00:33:17 GMT  
		Size: 42.2 MB (42207481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07cca33f2e53b3c7a8765fb3571e94607e6ba9bfbf9b598999bc6e6639491c24`  
		Last Modified: Thu, 19 Nov 2026 00:33:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c83975048ad699a2a35194cef97d4c2fbee150ffaf512e8a9a8ad0560e3a81`  
		Last Modified: Thu, 19 Nov 2026 00:36:45 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022b7f8d9e0403014baa161584c1ab52c2e6879867220c71cc86ababd146b885`  
		Last Modified: Thu, 19 Nov 2026 00:36:47 GMT  
		Size: 78.2 MB (78162033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b82a419ba9206c8a5bb950e1583964a9cc1fa949755b548368b6f0948391b4`  
		Last Modified: Thu, 19 Nov 2026 00:36:45 GMT  
		Size: 930.9 KB (930896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0155f9f8115cff81583eeaa400254070a30bae917cd8608e00744ad98bb4383`  
		Last Modified: Thu, 19 Nov 2026 00:36:45 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2e6f8666455a7679caed2f58616fe6ccb4570a5353d465878de103ddb376df`  
		Last Modified: Thu, 19 Nov 2026 00:36:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f76530c07927520ea7d153fa3094756ebfeeede23e310eeed062f5c5063930`  
		Last Modified: Thu, 19 Nov 2026 00:36:46 GMT  
		Size: 4.2 MB (4169428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d4ce3b6d7ba46144011ead808e8cb74bcd93adb94d7b3756823edfc60b5230`  
		Last Modified: Thu, 19 Nov 2026 00:36:48 GMT  
		Size: 73.3 MB (73272838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8127d6e5169d75e59def0693d88d9a3588dc098bf1a23761d5ac4585323579`  
		Last Modified: Thu, 19 Nov 2026 00:36:47 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:0d31d656e47291f4c2a4e2fac8fe30926d6e68ad09d6d49b3117753178bc0470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 KB (40693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fe6f4eb390d6c6feb3b4b34fd63b01157f2086ae4e0a924e959d67b3a1c275`

```dockerfile
```

-	Layers:
	-	`sha256:eacccbb4e2966109636363c6069ad99e096b8ec1ca62fc9b3b8c3ea854fb6f4f`  
		Last Modified: Thu, 19 Nov 2026 00:36:44 GMT  
		Size: 40.7 KB (40693 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.24` - linux; 386

```console
$ docker pull redmine@sha256:483dfe6c71e1248bdcb33df31b2a45a37e8477db3a9696e28f225143a4e9ba3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.5 MB (222488364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee17f01cac8d7b40ed2274e4de4e3978175e13a1b70ae97ede3542461bf96c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:30:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:32:38 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:32:38 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:32:38 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:32:38 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:32:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:32:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:32:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:32:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:32:38 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:32:38 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:27 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:37 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:40 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:40 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:40 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 19 Nov 2026 00:35:40 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 19 Nov 2026 00:35:40 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 19 Nov 2026 00:35:40 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:42 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:37:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:37:58 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:37:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:37:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:58 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:37:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5203647cdd89fdc84068a767dd115d6255e5fb991fd35cee8e7e9298fd95cb5`  
		Last Modified: Thu, 19 Nov 2026 00:32:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7544b6917d392040bb1202c529b2cba58162c532bda40ac36679cda3d226718e`  
		Last Modified: Thu, 19 Nov 2026 00:32:46 GMT  
		Size: 37.1 MB (37110834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089d8552ed1d796f1e4f60b3d4d632e0ac7425c08d57cc2963faf2b34d1541a0`  
		Last Modified: Thu, 19 Nov 2026 00:32:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5f06385d39631f9e303da040a13c9c51af0fda6d578b19a752e38bb1af08a`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad008d10c3f1a2ec4eefabd52ea966a85a86b7b4fa9bffa8c1d58c6eebb22ff`  
		Last Modified: Thu, 19 Nov 2026 00:38:12 GMT  
		Size: 79.7 MB (79677291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9aa536e3d37e934162be52d92751d3369133c5279473a94b125be6b38e2eb93`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 947.0 KB (946957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222cd9b67d56a2f6f40efae99bfcf5ef858bee405e37c99401c0f31fd97c4a9b`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb51d74b4d039b5adf1770f5d7734e7656abcddae5b7b51d834eb062d03444`  
		Last Modified: Thu, 19 Nov 2026 00:36:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fcaeb9da6b3f0b0d7d10aac035728e38f7ebe15b2dc01ffb0f0e5b2335488d`  
		Last Modified: Thu, 19 Nov 2026 00:38:11 GMT  
		Size: 4.2 MB (4169393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c79a2e8407d6d0bfbad43958bba58382ffd521eeb9cd64efb62bcaeed6dcfa`  
		Last Modified: Thu, 19 Nov 2026 00:38:13 GMT  
		Size: 96.9 MB (96899616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21f367677a7196194289389d9be09dc0c32bb52649f346db462d8481b66f4ae`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:8ee7c4606aab1de647ba16dd46958b30ab49ead526514b43b84f034b49501839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 KB (40438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54894d327093071792cc4edb07b14bcbaf24b3b7fdec67f807b890c2d27bc4e`

```dockerfile
```

-	Layers:
	-	`sha256:f1b42e51fc32a74df4ec81a186270d2ae115a39b4b59007209f508ebba804878`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 40.4 KB (40438 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.24` - linux; ppc64le

```console
$ docker pull redmine@sha256:d51d2ee2361d2b5a54ded9c87306172ddd6b5ae7546e1403319832cae8e9cf0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238166307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d901cd76654af9e5941af0249e6cc90a1a9e7808e32865746db678f77705ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:06:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 06 Nov 2026 06:31:25 GMT
ENV LANG=C.UTF-8
# Fri, 06 Nov 2026 06:31:25 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 06 Nov 2026 06:31:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 06 Nov 2026 06:31:25 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 06 Nov 2026 06:31:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 06 Nov 2026 06:31:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Nov 2026 06:31:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Nov 2026 06:31:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 06:31:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 06 Nov 2026 06:31:26 GMT
CMD ["irb"]
# Fri, 06 Nov 2026 12:14:43 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 06 Nov 2026 12:14:49 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 06 Nov 2026 12:14:52 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 12:14:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 12:14:52 GMT
ENV RAILS_ENV=production
# Fri, 06 Nov 2026 12:14:52 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Nov 2026 12:14:52 GMT
ENV HOME=/home/redmine
# Fri, 06 Nov 2026 12:14:52 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 06 Nov 2026 12:14:52 GMT
ENV REDMINE_VERSION=6.1.6
# Fri, 06 Nov 2026 12:14:52 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Fri, 06 Nov 2026 12:14:52 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Fri, 06 Nov 2026 12:14:52 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 06 Nov 2026 12:14:56 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 06 Nov 2026 12:20:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 06 Nov 2026 12:20:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Nov 2026 12:20:26 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 12:20:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 12:20:26 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 06 Nov 2026 12:20:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af836a4c2fd0437ded28b64fbf8d985f4d66ae8c0eca26c7035b572784f441eb`  
		Last Modified: Fri, 06 Nov 2026 06:11:57 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54709e27dd0588f5cee3e8e76a737bebf941a244f60f115bb80ff9ba9518f0f6`  
		Last Modified: Fri, 06 Nov 2026 06:31:44 GMT  
		Size: 36.6 MB (36643450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56814a527ac70b37631e70f96816086efc62b6e0c40653ba5a17f365a246b1a`  
		Last Modified: Fri, 06 Nov 2026 06:31:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55d70fef31fa1791a6065f7b4fa22bef5a14abc99179f7cb6daf517b5e7a9a2`  
		Last Modified: Fri, 06 Nov 2026 12:20:50 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc0a5c81c15f409265b6e6417796eae1a86930a69374b0cff176649d83fb625`  
		Last Modified: Fri, 06 Nov 2026 12:20:52 GMT  
		Size: 81.1 MB (81062782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3b9049f4dd5a659353d5c16412aff2563c4602759da05afb4bb6a8d88f5023`  
		Last Modified: Fri, 06 Nov 2026 12:20:50 GMT  
		Size: 936.2 KB (936168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d018dee0066ccd9edbc2987aab505ddf98df8183e405b18f283b7fc686377b`  
		Last Modified: Fri, 06 Nov 2026 12:20:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c6cf4190d7b51600301a379c1afc46b10afb4dc4b60a5e43238811d0da6418`  
		Last Modified: Fri, 06 Nov 2026 12:20:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9142b5e545eabda24a1f4521d6c4fd66caf5ff401154bae12ecffc3f6c9634d1`  
		Last Modified: Fri, 06 Nov 2026 12:20:51 GMT  
		Size: 4.2 MB (4169402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563bfbaaa0d49d64685c198af2a8d51f785681b7ff6e3aba34a569c409c9ebdf`  
		Last Modified: Fri, 06 Nov 2026 12:20:54 GMT  
		Size: 111.5 MB (111528674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e78c8f8f4ccd80e2f435dc905d2eb1a4f25a3c56da63397babe7156265cd8b`  
		Last Modified: Fri, 06 Nov 2026 12:20:52 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:4259614fe9f961da15bf73d0d7aadba586770ed843c904f0609e9479df4bb2f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 KB (40558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f50e5754f70433b0f7bc06359d4347f9fde18ad7ede34f931720c106d5130a6`

```dockerfile
```

-	Layers:
	-	`sha256:f07eb6fee7a5ef30cda6fffb3e16e8335cb45fbf061a934ae3994725ba381404`  
		Last Modified: Fri, 06 Nov 2026 12:20:49 GMT  
		Size: 40.6 KB (40558 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.24` - linux; riscv64

```console
$ docker pull redmine@sha256:31c7ed4a81e7d8393e1adb663eec0304a56984e508d65937b1cc16079f9e93fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241123301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b0f7c1db15a13aa4d72cb9c0b5dfbee432d13e065235148914471f0e03f4f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 14:26:56 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 12 Nov 2026 22:33:42 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 22:33:42 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 12 Nov 2026 22:33:42 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 12 Nov 2026 22:33:42 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 12 Nov 2026 22:33:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 12 Nov 2026 22:33:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 12 Nov 2026 22:33:42 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 12 Nov 2026 22:33:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 22:33:42 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 12 Nov 2026 22:33:42 GMT
CMD ["irb"]
# Tue, 17 Nov 2026 22:17:40 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Tue, 17 Nov 2026 22:18:23 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Tue, 17 Nov 2026 22:18:33 GMT
ENV GOSU_VERSION=1.19
# Tue, 17 Nov 2026 22:18:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 17 Nov 2026 22:18:33 GMT
ENV RAILS_ENV=production
# Tue, 17 Nov 2026 22:18:33 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Nov 2026 22:18:33 GMT
ENV HOME=/home/redmine
# Tue, 17 Nov 2026 22:18:33 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Tue, 17 Nov 2026 22:18:33 GMT
ENV REDMINE_VERSION=6.1.6
# Tue, 17 Nov 2026 22:18:33 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Tue, 17 Nov 2026 22:18:33 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Tue, 17 Nov 2026 22:18:33 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Tue, 17 Nov 2026 22:18:39 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Tue, 17 Nov 2026 23:48:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Tue, 17 Nov 2026 23:48:42 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Nov 2026 23:48:43 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 17 Nov 2026 23:48:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 23:48:43 GMT
EXPOSE map[3000/tcp:{}]
# Tue, 17 Nov 2026 23:48:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f74e7e0ef2cf7143cf9f9225646346a5065803c1a254f439ea43c4a8b52cce`  
		Last Modified: Thu, 12 Nov 2026 15:48:23 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966de1dd69b446a8a1adb3d28f2df0df7e777ba6f488640facfe47f97ea4ac8c`  
		Last Modified: Thu, 12 Nov 2026 22:35:11 GMT  
		Size: 38.3 MB (38277866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469afcb2f81776626f8ebdae97ccea5e947267e2a330c94da23b6f0fc114c13e`  
		Last Modified: Thu, 12 Nov 2026 22:35:05 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44369fe65ba1df79cea9d3c6a9cef3297a24834bd814d4a112953466165a9db8`  
		Last Modified: Tue, 17 Nov 2026 23:51:23 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d296d2e1b8ca3c8e008e68a21b4c9e8ec9e641e618450bbbfe67e245c5a260eb`  
		Last Modified: Tue, 17 Nov 2026 23:51:45 GMT  
		Size: 78.7 MB (78652627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5daf9dea720430ffb670c06087b95e326e751cd22b7dc8529c0154dc02b219`  
		Last Modified: Tue, 17 Nov 2026 23:51:23 GMT  
		Size: 923.7 KB (923691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97838f5fe7f204375cde47c225588e99a6c70062d9bc29a6136ac426638fa77`  
		Last Modified: Tue, 17 Nov 2026 23:51:23 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb3dee12229b061dd0ea002984a1e886095781e0f4f34d5dfbbb0bd58f7deb2`  
		Last Modified: Tue, 17 Nov 2026 23:51:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060459911364bcdcca22c4005d6bf4e95e16b5d11c50e1f53fb4e5eb298583f1`  
		Last Modified: Tue, 17 Nov 2026 23:51:26 GMT  
		Size: 4.2 MB (4169559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417216cd9690e903ac035d43f7622720bab84a94d5b235789136b519b810cf3f`  
		Last Modified: Tue, 17 Nov 2026 23:51:52 GMT  
		Size: 115.5 MB (115515036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b534f42440bbb2df1e6de0f366bc28ca73c270e96a41c232cacb20c5acd7838`  
		Last Modified: Tue, 17 Nov 2026 23:51:26 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:9235c94795c2d10d878f60ddd85a0d9fe3928281ebdec2eff999f18b7883346d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 KB (40558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b523a45e74c8cc25960546f51cf474ac1037a1483c30dee20fe679f6bf1a2b2e`

```dockerfile
```

-	Layers:
	-	`sha256:a0fb1c6820fb49bc92a4ce4b642d5d9a74fb0a88ced60f8a52d7a3ec1c62667c`  
		Last Modified: Tue, 17 Nov 2026 23:51:23 GMT  
		Size: 40.6 KB (40558 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.24` - linux; s390x

```console
$ docker pull redmine@sha256:a23e038e73589e6ab073ed1bb905749c58370fb0570e16d774e9e44a83de1766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.8 MB (235841236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cba71db2df1a019de82a03b325f8fcdceffa714d7c9900a2cfde3251b5bfe4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:14:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 21:23:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:23:21 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 21:23:21 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 21:23:21 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 21:23:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 21:23:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 21:23:21 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 21:23:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:23:21 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 21:23:21 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 22:43:45 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 05 Nov 2026 22:43:49 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 05 Nov 2026 22:43:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:43:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 22:43:52 GMT
ENV RAILS_ENV=production
# Thu, 05 Nov 2026 22:43:52 GMT
WORKDIR /usr/src/redmine
# Thu, 05 Nov 2026 22:43:52 GMT
ENV HOME=/home/redmine
# Thu, 05 Nov 2026 22:43:52 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 05 Nov 2026 22:43:52 GMT
ENV REDMINE_VERSION=6.1.6
# Thu, 05 Nov 2026 22:43:52 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.6.tar.gz
# Thu, 05 Nov 2026 22:43:52 GMT
ENV REDMINE_DOWNLOAD_SHA256=a09f0541e3ef5579de8be1c21fc9cabbd7625d77ec4dd2ddddc39ad9c2c5a483
# Thu, 05 Nov 2026 22:43:52 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 05 Nov 2026 22:43:54 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 05 Nov 2026 22:47:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 05 Nov 2026 22:47:54 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 05 Nov 2026 22:47:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:47:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:47:54 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 05 Nov 2026 22:47:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32a0bd899262f768e415f9be52a06a0bcf79df23acac1a99430cb9709b84781`  
		Last Modified: Thu, 05 Nov 2026 21:19:06 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd28bb4efd604faa91244d9cd75392c96f5f1dd56c52077b76361b4f2a5e9c8`  
		Last Modified: Thu, 05 Nov 2026 21:23:39 GMT  
		Size: 36.1 MB (36140573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002c67785f6fb7de83365ca8a924583d62c2b48c1923f334a0623215ab76a4ec`  
		Last Modified: Thu, 05 Nov 2026 21:23:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb09500d895e9ebce893d01b0a05bb3f9ea418d053d4920b69fe1fa45e117a`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e7db218d40b58a7d954484fb104fa2d90ddd219a8b41b391e039cf4168f1da`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 80.6 MB (80556117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71983df9b38c8f18814ba638281719df70ec1d3ba43291cb13044d4b9f106db8`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 952.5 KB (952527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab9c690cb7ea830a4fd81ea722f367d9474d1a5ff24c6b1b50e91288a20f59e`  
		Last Modified: Thu, 05 Nov 2026 22:48:14 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c091eec693e4ce41b721b4bf07ed28f15b6aef759fda142737fae111fcb05a`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0829b27432266eaa803db884b123c75f1d9e9071fc0be681f2beafad592549b3`  
		Last Modified: Thu, 05 Nov 2026 22:48:15 GMT  
		Size: 4.2 MB (4169468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6109f84c61532e263c03fcf80459b0a439c47bda3c50bff02dbe2879e5ebaefc`  
		Last Modified: Thu, 05 Nov 2026 22:48:17 GMT  
		Size: 110.3 MB (110297967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa46130906bfbfe4474f579a713703bdb1198130d742e7d4e2c21be2dcf2ea0`  
		Last Modified: Thu, 05 Nov 2026 22:48:16 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:3869cbdf76703a5403bfbf0629ae70f8c53144b9404bd5f3ee864728b9445520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 KB (40491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ce1d4ff75e2cd99d2bdc96a3a8e42641f95446bbe16182ad2a42bdaff86ff8`

```dockerfile
```

-	Layers:
	-	`sha256:c32b32d2e39d34838e3a2a181f06b65259e33cf0708060c7d08b312ba0cacd3a`  
		Last Modified: Thu, 05 Nov 2026 22:48:13 GMT  
		Size: 40.5 KB (40491 bytes)  
		MIME: application/vnd.in-toto+json
