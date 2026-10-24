## `redmine:6-alpine3.23`

```console
$ docker pull redmine@sha256:eb7d105a16a5db5a33afb3d6eb023b71725db254e45854f238701981ee74c6e1
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

### `redmine:6-alpine3.23` - linux; amd64

```console
$ docker pull redmine@sha256:8837783864cb1cbfb410b8e87868cbec5946bc021d9b98fdc6eaeaf200ecf733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201112936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829abbf4c5b255e4176757222915992329f10b420d1c7969a623465a872376f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:43:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:48:11 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:48:11 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:48:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:48:11 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:48:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:48:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:48:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:48:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:48:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:48:11 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 17:06:44 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:06:47 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 23 Oct 2026 17:06:50 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:06:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:06:50 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:06:50 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:06:50 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:06:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:06:50 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:06:50 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:06:50 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:06:50 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:06:52 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:07:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:07:40 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:07:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:07:40 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:07:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e90b7ea5f73fd0e05fc0b56dac571fe57fce9fa43dc86eb4e0e10f4bd4e6fc`  
		Last Modified: Fri, 23 Oct 2026 16:45:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594eb4af35459084590ce5b2b105e32a1ba8b7664eebcda5ce297da7d3391a6f`  
		Last Modified: Fri, 23 Oct 2026 16:48:20 GMT  
		Size: 39.2 MB (39239524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e085d992110ecdf6ada2b9996e1c9c42dd9840e77c1438d4a3a3ab2179b605`  
		Last Modified: Fri, 23 Oct 2026 16:48:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7a111bdb4c9bcd16ddfd7d2f5cba0a11fea2f1f9b7b833fa948a961b68c044`  
		Last Modified: Fri, 23 Oct 2026 17:07:51 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6e4f6c0688ef35ed25bc8063bf9d3d87fb230dcf0b04cc260a597efecf1333`  
		Last Modified: Fri, 23 Oct 2026 17:07:53 GMT  
		Size: 78.5 MB (78468675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0647491dedcb4cb21c511cbb5241bdb7ddc66fad1d7f65c9008475fa4edf35f7`  
		Last Modified: Fri, 23 Oct 2026 17:07:51 GMT  
		Size: 974.3 KB (974318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a60943c7a488a35969cd8383d08669472924ff5b3fb853cc7795766ef65958b`  
		Last Modified: Fri, 23 Oct 2026 17:07:51 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce87731588d18af197ee50f6e5caafbd15d8d930e454035aaaf7ace92000be1`  
		Last Modified: Fri, 23 Oct 2026 17:07:52 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e57520538ee274d8ab8c3f8d2b9f1798ec697130153993bb5f8760483013039`  
		Last Modified: Fri, 23 Oct 2026 17:07:53 GMT  
		Size: 4.2 MB (4162979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8207c5d29a77df5779f886912d9c068337a2e4ce64b556891a84255ce22b17`  
		Last Modified: Fri, 23 Oct 2026 17:07:55 GMT  
		Size: 74.4 MB (74411301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285bcc6cffb809ddd1ea9851730c79f9188ddafa65ff475250ae21362376ac69`  
		Last Modified: Fri, 23 Oct 2026 17:07:54 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:8bfb1dcc73d36ee7366afce2b2e1a3a14e553be9e329dbfa85a75f1fe4423824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafc23b5412ac463d42a9a11b83d00a236e903b312663dce6b37ed93d85334b4`

```dockerfile
```

-	Layers:
	-	`sha256:6fcad8622e2a188488d1ba7d6de9e7767d3cb3da231a226578de20cba5873f94`  
		Last Modified: Fri, 23 Oct 2026 17:07:51 GMT  
		Size: 39.6 KB (39566 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.23` - linux; arm variant v7

```console
$ docker pull redmine@sha256:e2d7a86924f1b33bc5c87985548de471d9480364e82c8a452ee4f64c411740cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204783735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712a569b9cbb7971ebee94181dfac7ffd7bd4e3dd63e9505d3cf1e50e3045784`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:51:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:54:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:54:06 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:54:06 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:54:06 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:54:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:54:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:54:06 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:54:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:54:06 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:54:06 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 16:59:47 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 16:59:57 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 23 Oct 2026 16:59:59 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 16:59:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 16:59:59 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 16:59:59 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 16:59:59 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 16:59:59 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 16:59:59 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 16:59:59 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 16:59:59 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 16:59:59 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:00:02 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:01:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:01:38 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:01:38 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:01:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:01:38 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:01:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83bde5c807875c812ad4fa0a340f7d071ca4135eedeefc665f05d96ac447096`  
		Last Modified: Fri, 23 Oct 2026 16:54:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6cafa7883a9b0e744e66d41a1e70cdbc906f84b13516a5bbbab3e890e736d7`  
		Last Modified: Fri, 23 Oct 2026 16:54:15 GMT  
		Size: 34.7 MB (34730869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ce8fa8ca0f854f9cb34182a77e316999101a4732572afd3a001f5c64cf41e6`  
		Last Modified: Fri, 23 Oct 2026 16:54:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb08fe27ab94f4e7a7327d2d3209579c31085809271bb8c218579b742ccad63`  
		Last Modified: Fri, 23 Oct 2026 17:01:49 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14a6de7d49fd26c85b17a33bf54f25fd4aef0c524e9d1e7ef6c7090cbb039b7`  
		Last Modified: Fri, 23 Oct 2026 17:01:51 GMT  
		Size: 71.6 MB (71648762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8cccd0943e67e12d843be03dc1fcc5810c577092fbb63af5c9c92ea7ee8094`  
		Last Modified: Fri, 23 Oct 2026 17:01:49 GMT  
		Size: 941.4 KB (941401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215a76ab475c139e55fdea79ee895dd0f76c6f8d8e1782473e34bca8ea91c22e`  
		Last Modified: Fri, 23 Oct 2026 17:01:49 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc19461875cb4a2cc4ea93b17affb77aa7f95f3ffa962cb1f77436d182b98f2`  
		Last Modified: Fri, 23 Oct 2026 17:01:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15824d7abf948e1373b6f7261c99f49dd55a0bf40e267c824c8e44d23735aadf`  
		Last Modified: Fri, 23 Oct 2026 17:01:50 GMT  
		Size: 4.2 MB (4162976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acf3623264f866247ca762d9549e70c3a546d82c59c3db1c206eb27dcdde310`  
		Last Modified: Fri, 23 Oct 2026 17:01:53 GMT  
		Size: 90.0 MB (90028778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f71f7dd64ffff8e2c0b28d16b0d0967815ca4f120d4fe602dba3bb4978f2aa`  
		Last Modified: Fri, 23 Oct 2026 17:01:51 GMT  
		Size: 2.4 KB (2410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:4d6f4b667a70fd736652627a8255cf7d1601e87caf8e4b3338f133f9b4950fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2e537a87b0dbaf955b0d90fbb2e4fdaf5bdeb7b59e8471048fc2b879f391b8`

```dockerfile
```

-	Layers:
	-	`sha256:31567d40f0e9e0f391f944ecdd8a363c1f7a603a4d93a0058a1e34d29cc769cc`  
		Last Modified: Fri, 23 Oct 2026 17:01:48 GMT  
		Size: 39.7 KB (39703 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7ef189165ec07a9bcbc7c557df9bac298d100c60d27fe7d83f67c8fabcb12c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200719759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9bc40724f907f8c2980c8ad3fb5822f849d3221d26f1f79f3d489f984c9d0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:46:51 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:49:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:49:26 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:49:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:49:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:49:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:49:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:49:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:49:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:27 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:49:27 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 17:04:09 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:04:13 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 23 Oct 2026 17:04:16 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:04:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:04:16 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:04:16 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:04:16 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:04:16 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:04:16 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:04:16 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:04:16 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:04:16 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:04:18 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:05:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:05:32 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:05:32 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:05:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:05:32 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:05:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a4a0765e62fb5b6f6752c4a1071a22ba8b7dea2f9b4c643845eb2b0cfaf94e`  
		Last Modified: Fri, 23 Oct 2026 16:49:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213fa4076d4d9ed2e34effc8f3f6b75f7170185a88474aca4c005c9d006e0382`  
		Last Modified: Fri, 23 Oct 2026 16:49:36 GMT  
		Size: 39.3 MB (39312092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b49a059758f9a1e595577706bb50263cbce7062d25bc28fca05d4fe0e9d2b`  
		Last Modified: Fri, 23 Oct 2026 16:49:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a6d09c5a1fda541c6cab1646e1f7f920769d833c67e3ddc0b70d7cee6ed947`  
		Last Modified: Fri, 23 Oct 2026 17:05:42 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c627a24145023df15d415730ca5372df2f37dbc83b57a4d3f34db2f98f7c608`  
		Last Modified: Fri, 23 Oct 2026 17:05:44 GMT  
		Size: 77.9 MB (77916994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e95219360203272bad2311ba50db95257af5161277f552b2179cf2d79153eb9`  
		Last Modified: Fri, 23 Oct 2026 17:05:42 GMT  
		Size: 928.3 KB (928265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efdc9bfe7e7a592af4e0dd673042d5b8f4189c54ec7bdfe18047d0baec79037b`  
		Last Modified: Fri, 23 Oct 2026 17:05:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd178f2c853f146a1c0757d95b8d97e74a0d7f843bb68ffc2b8e2cbaab908e3`  
		Last Modified: Fri, 23 Oct 2026 17:05:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54febab2a17cb280bec22048cd3367a446407295d4875c9b005361d42faa5573`  
		Last Modified: Fri, 23 Oct 2026 17:05:44 GMT  
		Size: 4.2 MB (4162972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d26d098932a026f031b5efdad15fa0138b8eba929aeb1437e7a76bad44f3d16f`  
		Last Modified: Fri, 23 Oct 2026 17:05:45 GMT  
		Size: 74.2 MB (74206034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d8690a8dac347c5e93d1a481032b9f0b5faea6cb7aebdac6daa35cf87f37a3`  
		Last Modified: Fri, 23 Oct 2026 17:05:45 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:c9e34c1e3a3d179e93d554d1bc58b58a519df95615d9d4310e4366dd3394e525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646f385e471ba13923fef9927c57730784ddafc5224652e1c2e2cb2648d7392e`

```dockerfile
```

-	Layers:
	-	`sha256:369c7e163ede25b2de68ac6c2358ea4121ac218cd25b77006da1e0fcb51bb2d4`  
		Last Modified: Fri, 23 Oct 2026 17:05:42 GMT  
		Size: 39.7 KB (39733 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.23` - linux; 386

```console
$ docker pull redmine@sha256:9c54c299e01cd6997f268cf2a23d42314d5156e9333f2527d36516a945a7dce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219016025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0366a98508825647c067fa5344a03bc34c420e2a112e2301b22a8999a407ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:41:50 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 16:46:01 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 16:46:01 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 16:46:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 16:46:01 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 16:46:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:46:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:46:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:46:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:46:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:46:01 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 16:50:30 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 16:50:39 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 23 Oct 2026 16:50:43 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 16:50:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 16:50:43 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 16:50:43 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 16:50:43 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 16:50:43 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 16:50:43 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 16:50:43 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 16:50:43 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 16:50:43 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 16:50:46 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 16:53:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 16:53:14 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 16:53:14 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 16:53:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:53:14 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 16:53:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9be4875fa2a62d30358bb461231c9a3f07614f368362036c1122bb5ff01d825`  
		Last Modified: Fri, 23 Oct 2026 16:43:57 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da08ec3b558fcdcb99a5bdcfdfc33fb159c92e5e8f7f848f03d62fb02e62ff8`  
		Last Modified: Fri, 23 Oct 2026 16:46:09 GMT  
		Size: 34.7 MB (34715068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1862291775c492d71841715e00fd831f2abaf980cab78eab86280b0c61893889`  
		Last Modified: Fri, 23 Oct 2026 16:46:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed7cfe4b71e36ba530fdd59662c043c61a3b4b3f8190033a54c68c31e5740ad`  
		Last Modified: Fri, 23 Oct 2026 16:53:26 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d3f0520b2024a441d7a55cca9d067527334418b48dd74e9dbcfc5bfdce839c`  
		Last Modified: Fri, 23 Oct 2026 16:53:28 GMT  
		Size: 79.4 MB (79448606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ae68109cf77be69f6f56b5cbd4dc9aaeda82a22cd775d8a351b5744d1998a1`  
		Last Modified: Fri, 23 Oct 2026 16:53:26 GMT  
		Size: 945.6 KB (945561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e91bcfd5467e468b3c6932a2f69429f65c9103a9f3215b5a95e28dac8e24f9e`  
		Last Modified: Fri, 23 Oct 2026 16:53:26 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0def96afd6b05b2705ba68344ca87d8a3d54a190b9108ce454a8e8a0ff699c70`  
		Last Modified: Fri, 23 Oct 2026 16:53:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454f24d078ec0b2b0f7544d5a48c276e5d901ba6043c2a5e86990b7546b05ed8`  
		Last Modified: Fri, 23 Oct 2026 16:53:28 GMT  
		Size: 4.2 MB (4162992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca09cbe5a1f9cc8c7933bba0ba6ba08828d877e98e7c326cc4759a4a29909e7`  
		Last Modified: Fri, 23 Oct 2026 16:53:30 GMT  
		Size: 96.1 MB (96062580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a8857971bd28d4e05eb3241f12b93d9a7060bbf9556df30dfd1e2b5a87fd57`  
		Last Modified: Fri, 23 Oct 2026 16:53:29 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:9025f60e896676db51bcf343f22611b38c6f64a07b7051367dc33be3b33efa65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863cc98cd09096c1529f2c24b2f2bdb781e2387bb02036d54965b1be6aafe2be`

```dockerfile
```

-	Layers:
	-	`sha256:d4d5e18d3ce93fc3ec4bddfa6e79ffceeeff17c367cd002760ec88b07ee5957d`  
		Last Modified: Fri, 23 Oct 2026 16:53:26 GMT  
		Size: 39.5 KB (39529 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.23` - linux; ppc64le

```console
$ docker pull redmine@sha256:4da6f36b20a63b4757eacaf4f075e1dba26046889e8eecd2b844e5ba5a51ea05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b69b4d6dc992ed072da1d32fecfaad6a2c001598b5424fb7ac565b4ba29dda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 15:00:05 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 23 Oct 2026 18:30:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:30:06 GMT
ENV RUBY_VERSION=3.4.12
# Fri, 23 Oct 2026 18:30:06 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Fri, 23 Oct 2026 18:30:06 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Fri, 23 Oct 2026 18:30:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 18:30:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 18:30:06 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 18:30:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:06 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 18:30:06 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 21:12:19 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 21:12:37 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 23 Oct 2026 21:12:44 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 21:12:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 21:12:44 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 21:12:45 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 21:12:45 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 21:12:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 21:12:47 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 21:12:47 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 21:12:47 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 21:12:47 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 21:12:53 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 21:18:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 21:18:11 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 21:18:15 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 21:18:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 21:18:15 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 21:18:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e837abe3be1bc70d171e5731dc4e5089abcea55c8f910ad2e043f2c8ba60db`  
		Last Modified: Thu, 22 Oct 2026 15:08:18 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd46d83430e5fdd43d640f353b38649e20b9caed851f65516de22d7516e62ad1`  
		Last Modified: Fri, 23 Oct 2026 18:30:40 GMT  
		Size: 36.6 MB (36610711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2b773bcfd66c04a5f579cfca2676c68fb651ee8eec295995e02a2ee4f09de4`  
		Last Modified: Fri, 23 Oct 2026 18:30:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515da41257ffc5be2ce06ad59b455db214744f86e608cca7f54a229822162335`  
		Last Modified: Fri, 23 Oct 2026 21:18:37 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de22a70c3aff2497c5881ac5fcedb788a965f07889ea4ed3fd3d3c4f43679129`  
		Last Modified: Fri, 23 Oct 2026 21:18:40 GMT  
		Size: 81.0 MB (81018827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f99e4b82993e6ed6a14463572a55aa1dbfa65567bd982aa19f69e40889aa14`  
		Last Modified: Fri, 23 Oct 2026 21:18:38 GMT  
		Size: 933.5 KB (933521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6051f923dff0de65cc0d27bbbf0aefa6b456a0fbfce25b9a80e482778a47c9e`  
		Last Modified: Fri, 23 Oct 2026 21:18:38 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69d79b1b49fbe7e41b8539eff0f27dad729bf245ad46e367810e1fcea62b039`  
		Last Modified: Fri, 23 Oct 2026 21:18:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea65a7fddf4b848cc69629b2bd82c7f54c74ee742b86cf2d816e60f8553f9e72`  
		Last Modified: Fri, 23 Oct 2026 21:18:39 GMT  
		Size: 4.2 MB (4163010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507f67faf98dee229c1012d5d8f5b36f1c972f91b484d17e942dbd3216a971d5`  
		Last Modified: Fri, 23 Oct 2026 21:18:42 GMT  
		Size: 111.7 MB (111704160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb0bae04db2bc44c2f717d91aa7a071821bfb9bc1553f962916affceaf16784`  
		Last Modified: Fri, 23 Oct 2026 21:18:40 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:64248e53beb28c0b3a6d6fb38c8bed2771986b5a53e80c223826b78470bb4f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8883fee0b279886a7a9530ba039f7d868aa185be018e6ab6926fef4abe9931d3`

```dockerfile
```

-	Layers:
	-	`sha256:d611667f2587baea5ec498493dbb888668af2406d49f38f9ab7102db66a38f9e`  
		Last Modified: Fri, 23 Oct 2026 21:18:37 GMT  
		Size: 39.6 KB (39616 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.23` - linux; riscv64

```console
$ docker pull redmine@sha256:50d55e444513e2744579964fdf71fd03a17934411c9950f6f51bc93b20c26453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240964701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7930f14ab3cfbf150aceab1bcc2b944362b8111bf1ba51e93086f37b1923d32d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 15:13:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 29 Sep 2026 08:35:17 GMT
ENV LANG=C.UTF-8
# Tue, 29 Sep 2026 08:35:17 GMT
ENV RUBY_VERSION=3.4.11
# Tue, 29 Sep 2026 08:35:17 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Tue, 29 Sep 2026 08:35:17 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Tue, 29 Sep 2026 08:35:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 29 Sep 2026 08:35:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Sep 2026 08:35:17 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Sep 2026 08:35:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 08:35:17 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 29 Sep 2026 08:35:17 GMT
CMD ["irb"]
# Sat, 03 Oct 2026 15:00:07 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Sat, 03 Oct 2026 15:00:32 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Sat, 03 Oct 2026 15:00:42 GMT
ENV GOSU_VERSION=1.19
# Sat, 03 Oct 2026 15:00:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 03 Oct 2026 15:00:42 GMT
ENV RAILS_ENV=production
# Sat, 03 Oct 2026 15:00:42 GMT
WORKDIR /usr/src/redmine
# Sat, 03 Oct 2026 15:00:42 GMT
ENV HOME=/home/redmine
# Sat, 03 Oct 2026 15:00:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Sat, 03 Oct 2026 15:00:42 GMT
ENV REDMINE_VERSION=6.1.5
# Sat, 03 Oct 2026 15:00:42 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Sat, 03 Oct 2026 15:00:42 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Sat, 03 Oct 2026 15:00:42 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Sat, 03 Oct 2026 15:00:47 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Sat, 03 Oct 2026 16:28:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Sat, 03 Oct 2026 16:28:40 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 03 Oct 2026 16:28:41 GMT
COPY docker-entrypoint.sh / # buildkit
# Sat, 03 Oct 2026 16:28:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 03 Oct 2026 16:28:41 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 03 Oct 2026 16:28:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4a55fbd28d2dbce7be86eb7bff5bd6f6ce100bc666cb6c02ec498595025cfd`  
		Last Modified: Tue, 22 Sep 2026 17:45:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d012b287c15dba7e9d9fc9e9fa1025945b13b2426f07d73b6c9c130d0e1a4e08`  
		Last Modified: Tue, 29 Sep 2026 08:36:35 GMT  
		Size: 38.2 MB (38179814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667259328d22027a5a635815b788859d4d56021a3bd06bad97630cf26e2c9f46`  
		Last Modified: Tue, 29 Sep 2026 08:36:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ed343cd66e0ddfbc33a655a5159964b500bf6fef474b869f19cddfda2a995a`  
		Last Modified: Sat, 03 Oct 2026 16:31:20 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90348f0d82160380bca23c2f0d7f9e76b9dee1f4d7447ba9955707b30ae4e7e`  
		Last Modified: Sat, 03 Oct 2026 16:31:41 GMT  
		Size: 77.3 MB (77327120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de1742b73ea45257ea94039dec5def009f2208e6838162996c0ff43c8995420`  
		Last Modified: Sat, 03 Oct 2026 16:31:20 GMT  
		Size: 921.2 KB (921213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5075c5872f681b177d7419c321e77fb631c10f1194db0b4a9043c4c9ab441b`  
		Last Modified: Sat, 03 Oct 2026 16:31:19 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f476e78632be50aa552224583be6dcbf2213544f098222acc79743d9361fe28`  
		Last Modified: Sat, 03 Oct 2026 16:31:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1068beb49953ea0ca98ff0cb2b008b0e22951d8d0f46b960b8c65c80a6cb0e`  
		Last Modified: Sat, 03 Oct 2026 16:31:23 GMT  
		Size: 4.2 MB (4163050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9b003c54cab52da31158dfb2aca8b025503e7c0df18018aeb91426cc1b4f07`  
		Last Modified: Sat, 03 Oct 2026 16:31:48 GMT  
		Size: 116.8 MB (116793268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5e359dd9c1f00019f15c0be807bd7426691ef90bc5a72ed3eb0b1981573cb2`  
		Last Modified: Sat, 03 Oct 2026 16:31:23 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:698980cc69320a3d8e906b3a3dc3fd3b05ccfe961100ba6e2a8b210edeb5fff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f13f4b583f422b0612c9f90bfe1ee7e85ce145549dfdebc399818ce82de9aad`

```dockerfile
```

-	Layers:
	-	`sha256:1f7249aa923a508f51c9e80e880a13a6bff873acc0b57e6c6d9e08cb57b99fab`  
		Last Modified: Sat, 03 Oct 2026 16:31:20 GMT  
		Size: 39.6 KB (39616 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine3.23` - linux; s390x

```console
$ docker pull redmine@sha256:0a88291b5d49f36d1e0df4db03af820de8be14d2bb7512d946ed81ffa649a272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.1 MB (234055805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5df4cd624e6ac204222d0430561f84e3b0b8119d033fbcccd85e978cb914d0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:07:39 GMT
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
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 23 Oct 2026 16:53:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Oct 2026 16:53:23 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Oct 2026 16:53:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:53:23 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 23 Oct 2026 16:53:23 GMT
CMD ["irb"]
# Fri, 23 Oct 2026 17:07:48 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 23 Oct 2026 17:07:53 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 23 Oct 2026 17:07:55 GMT
ENV GOSU_VERSION=1.19
# Fri, 23 Oct 2026 17:07:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 23 Oct 2026 17:07:55 GMT
ENV RAILS_ENV=production
# Fri, 23 Oct 2026 17:07:55 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Oct 2026 17:07:55 GMT
ENV HOME=/home/redmine
# Fri, 23 Oct 2026 17:07:55 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 23 Oct 2026 17:07:55 GMT
ENV REDMINE_VERSION=6.1.5
# Fri, 23 Oct 2026 17:07:55 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.5.tar.gz
# Fri, 23 Oct 2026 17:07:55 GMT
ENV REDMINE_DOWNLOAD_SHA256=4b653d8863c012fdb226aedf6f8a18bdfa08d04625d15e8aafbbc3c4f6b70144
# Fri, 23 Oct 2026 17:07:55 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 23 Oct 2026 17:07:57 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 23 Oct 2026 17:10:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 23 Oct 2026 17:10:38 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Oct 2026 17:10:38 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 23 Oct 2026 17:10:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 17:10:38 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 23 Oct 2026 17:10:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b88f5fe42472096b65df464f2c69306b4488c70f76af8b8cf4b22cd5c037efc`  
		Last Modified: Wed, 21 Oct 2026 22:11:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cab98c958482546f985c5be3ecd3e15c05a2f4f93b4bf25182b6c76ea55101`  
		Last Modified: Fri, 23 Oct 2026 16:53:35 GMT  
		Size: 36.1 MB (36108250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b8d9738b5d77931471c3b38a3b31d785feedeb575300a7296c11647432a659`  
		Last Modified: Fri, 23 Oct 2026 16:53:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2874e7bb17bcaee3ed37a8c4d386775d68eb4b5ee00edc99f6efbefb935969bd`  
		Last Modified: Fri, 23 Oct 2026 17:10:54 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378d1d04b4e8b8e68af7b00976234d1a1389bd8366927b4bf97fe72ef54f5331`  
		Last Modified: Fri, 23 Oct 2026 17:10:55 GMT  
		Size: 78.7 MB (78669328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b2c8203a0f23602cdaba392003473fe1f9756f9e9355d456f260de3d62e2df`  
		Last Modified: Fri, 23 Oct 2026 17:10:54 GMT  
		Size: 949.4 KB (949381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5602918d5d3841cc7172e1cbcad2dff8b216ed85f8a9359fceb0b2be35755624`  
		Last Modified: Fri, 23 Oct 2026 17:10:54 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c534d99f50c05a4705ba384ea1ee972efba74205215543c8cd2a98f0358991`  
		Last Modified: Fri, 23 Oct 2026 17:10:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ed26e5a4faf9a0e81fa785aa76eb05c850b49d37319241177689968c71c843`  
		Last Modified: Fri, 23 Oct 2026 17:10:55 GMT  
		Size: 4.2 MB (4162887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea203b9341464b997810cdafc3f82927f946daa0e5f17860a04d4fbb9f78a8b9`  
		Last Modified: Fri, 23 Oct 2026 17:10:57 GMT  
		Size: 110.4 MB (110444925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8b6af248cbb51b021c6ad57c76c4b3828d593a69c14d05916c9c8bfb81bfad`  
		Last Modified: Fri, 23 Oct 2026 17:10:56 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine3.23` - unknown; unknown

```console
$ docker pull redmine@sha256:ce070bc4bf1a5283087790310c2b3f289f60d8023931ea5be183247131b0bc75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed0d6940cda7800c1a7cf3c48640236b7ff6ea30db13cdb8502826978e20c9b`

```dockerfile
```

-	Layers:
	-	`sha256:2ccbd3f2f302ab3da07b4fa0f3b6f9aaa92ea169d1428d3813922814080a164d`  
		Last Modified: Fri, 23 Oct 2026 17:10:54 GMT  
		Size: 39.6 KB (39568 bytes)  
		MIME: application/vnd.in-toto+json
