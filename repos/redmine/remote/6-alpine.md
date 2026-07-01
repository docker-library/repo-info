## `redmine:6-alpine`

```console
$ docker pull redmine@sha256:fd1af1678aa94e4c76f77e1899476fb8203db889a931d15befec50fb0676989b
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

### `redmine:6-alpine` - linux; amd64

```console
$ docker pull redmine@sha256:aeac0a0b20b957451b77a0fcd63897a8c448eaa420177d6d6343b90da9466290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201153016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2fd7e64a730411d255acd78802d161f8dd85c50ad0b8e4a213747ec6847cf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:58:58 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:01:13 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:01:13 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:01:13 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:01:13 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:01:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:01:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:01:13 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:01:13 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:01:13 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:14:46 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:14:51 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:14:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:14:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:14:53 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:14:53 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:14:53 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:14:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:14:54 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:14:54 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:14:54 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:14:54 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:14:56 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:15:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:15:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:15:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:15:39 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:15:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b23947d7a97805dc145cb87cb5552fe8093e40af219e58a810b8cb4cb4b681`  
		Last Modified: Wed, 01 Jul 2026 00:01:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4fc3d3e01c15b412bc0c612fc046c8b71bb6b9e97c012832b0e070898bd5543`  
		Last Modified: Wed, 01 Jul 2026 00:01:21 GMT  
		Size: 39.2 MB (39245127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b52365d7706a257f6d7dfad21a886daf80bf1a43fd8eb064cc01faa55a0c1c`  
		Last Modified: Wed, 01 Jul 2026 00:01:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7282838df356329e1a6d6aec61042f0f2224cd88c18841f60315a36d7a0ab16`  
		Last Modified: Wed, 01 Jul 2026 00:15:50 GMT  
		Size: 907.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83dba0ca5c7c8e9ca04c88e548c810b799f5d63b69ba8d29f7581b7d8b339a05`  
		Last Modified: Wed, 01 Jul 2026 00:15:52 GMT  
		Size: 78.9 MB (78863723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de86f194529aa010884af6d4a7e70ef6cda1adbd57874e7156df798858821e73`  
		Last Modified: Wed, 01 Jul 2026 00:15:50 GMT  
		Size: 978.2 KB (978203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b02c131266ea725c24539e85ee5a4545ace2b408885d25383a3c5024ceb985b`  
		Last Modified: Wed, 01 Jul 2026 00:15:50 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea8e0cb5bfaf71ffa0c4c2dbbd0b21ba76c7f7eea559f43a28f8cc100451bf9`  
		Last Modified: Wed, 01 Jul 2026 00:15:51 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d35271fe6e4d044188eb6bc1a903aa20e3e03e5a05171e4e8757277d9720408`  
		Last Modified: Wed, 01 Jul 2026 00:15:51 GMT  
		Size: 4.2 MB (4155622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef2ad10f78a6e15dd81880a1f6a524a90bb6a42981d7ab4611ad4a7489755f7`  
		Last Modified: Wed, 01 Jul 2026 00:15:54 GMT  
		Size: 74.1 MB (74060042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770847de9b94922c2c66652eb1647c7088e3f966a89a9395b00fe3bda95b7c73`  
		Last Modified: Wed, 01 Jul 2026 00:15:52 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:895a6852e0356093097f0e0f2dda70185dd83e4e91f4ed6284565eff2417ac13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c11193609e97e74a67ee1f013e553d540bac02a8c16ffd0eaca5d32d6ca154`

```dockerfile
```

-	Layers:
	-	`sha256:9e1ca53a91b4ff76e69652dc4b98452135b30a1461a9817b7b2192378d51ecc5`  
		Last Modified: Wed, 01 Jul 2026 00:15:49 GMT  
		Size: 38.3 KB (38273 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine` - linux; arm variant v7

```console
$ docker pull redmine@sha256:e52e2bf251b55bff5fda6d52f526b84c4855a92c552af6b524da27f00a8d7ef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204404668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06aacec5e910d2fd7b5db2f41c79f25e5cd61b8b13d32bd7af80fe94b36fb19c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:03:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:05:59 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:05:59 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:05:59 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:05:59 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:05:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:05:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:05:59 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:05:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:05:59 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:05:59 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:08:39 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:08:47 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:08:50 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:08:50 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:08:50 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:08:50 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:08:50 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:08:50 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:08:50 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:08:50 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:08:52 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:10:28 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:10:28 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:10:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:10:28 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:10:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d62c44c4361bd66b18cedaa0ff52aa5e42c7b12ee7f7e5646a438f45bc20e2`  
		Last Modified: Wed, 01 Jul 2026 00:06:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dfdf441d8deda06f89c9dab0a7641be0365bde91061fe3e1f6c1f84a9157c1`  
		Last Modified: Wed, 01 Jul 2026 00:06:07 GMT  
		Size: 34.7 MB (34726858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf02abd387c6dc0c97e176476f9a970527702f92b1e4e1e920ecfce523263e7`  
		Last Modified: Wed, 01 Jul 2026 00:06:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2ed3037522ce8d0ddb488cd8c8319f5b6fa9b12005c198b0a51d7ff4f18520`  
		Last Modified: Wed, 01 Jul 2026 00:10:38 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8a40782fc0a3d1c1b4f6b863224f785ec9d6a8b0f3e97a098c733413779e05`  
		Last Modified: Wed, 01 Jul 2026 00:10:41 GMT  
		Size: 72.0 MB (72027011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5228c27521d8c0844949720be2a4c98288f62b868f3dfda6545ddff2fe2d32`  
		Last Modified: Wed, 01 Jul 2026 00:10:38 GMT  
		Size: 943.4 KB (943378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51020a1627877d3cfa7713ba704874bd7367706f7ad8515a733e00514f83f436`  
		Last Modified: Wed, 01 Jul 2026 00:10:38 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:debe214441e66a2fe64660db900b88ad1d93ba240ce4811b76d7a7deeebf7251`  
		Last Modified: Wed, 01 Jul 2026 00:10:40 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c729bbaba1c8e5a1a4c4fd75925106d16bfb0940a52bceb6267ed72bd8db2cdb`  
		Last Modified: Wed, 01 Jul 2026 00:10:40 GMT  
		Size: 4.2 MB (4155809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131e484095054f20c662a8d94abe7d20a5ce18a284e179d85c56566fd25f929f`  
		Last Modified: Wed, 01 Jul 2026 00:10:43 GMT  
		Size: 89.3 MB (89287087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0696a52091e418c486023505f624fdc61b8f4ff39733ac494c537b14a1f5bb81`  
		Last Modified: Wed, 01 Jul 2026 00:10:41 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:92fb2e38759c87623a2c50ee4bf8f8271bad8d8ddd5e22cac50dc4dd269b97b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 KB (38450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91608794b41ced68478f5bb0b2f28f3d37fc47c546a9f1a020c46d59a8dd698e`

```dockerfile
```

-	Layers:
	-	`sha256:7910928ffc63e5b1e2eb0164fa1150d2cc33cc57ff35a0e29a1e41d5c816cec8`  
		Last Modified: Wed, 01 Jul 2026 00:10:38 GMT  
		Size: 38.5 KB (38450 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:c4fa4349f227ade2aa43748638810231193994e3c3687d7048c3d14ac5a27deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200793839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e17a41ac8879c488e06f0661bb1bd26de0ab28218970e3f261a0eb314e4a90`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:01:34 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:04:14 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:04:14 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:04:14 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:04:14 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:04:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:04:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:04:14 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:04:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:04:14 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:04:14 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:08:40 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:08:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:08:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:08:49 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:08:49 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:08:49 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:08:49 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:08:49 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:08:49 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:08:49 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:08:49 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:08:51 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:10:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:10:08 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:10:08 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:10:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:10:08 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:10:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfaeddc56bdbd5e2393b0f5f63b828f445dc6df0f9c0a165fe8b5fc24c06a3b`  
		Last Modified: Wed, 01 Jul 2026 00:04:22 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4e230ab9eacc17586d51bdc35e876887f3077dc19eb27a858781f1b1e18152`  
		Last Modified: Wed, 01 Jul 2026 00:04:23 GMT  
		Size: 39.3 MB (39311170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b25c6db142e8dd4cbefb62abae16a36f514a6b21c929e543ed6439bad6a234`  
		Last Modified: Wed, 01 Jul 2026 00:04:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3d607e0ea3395b6be190b6dc6deac803a5627324567ff620645f1cba60fc6`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e847ef6ff38f545f4e7e8967239e62300e4044a6319dc5c5bba97c69b63cf39`  
		Last Modified: Wed, 01 Jul 2026 00:10:23 GMT  
		Size: 78.4 MB (78358466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0628ac05f931bb1d276d7b8b74fb4cfc28c195b7b860efc8789701981ec9785`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 930.7 KB (930661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29d4d929aff3bd4fb423af3be83dba3b50ae6404869fc9f710c44da1eb148cf`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44894bd30d79b332a9bac5b935b02cf8d01452671e4723c0567ec388aed1ee75`  
		Last Modified: Wed, 01 Jul 2026 00:10:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3047804cfdf6a7cb32ad20c0d2028c6644e6993bccfb955c2c56e451782384d4`  
		Last Modified: Wed, 01 Jul 2026 00:10:22 GMT  
		Size: 4.2 MB (4155779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e2283dd38de32bfec83dc1ed10ec50593c479f31aed3b8c173d306ca73e403`  
		Last Modified: Wed, 01 Jul 2026 00:10:24 GMT  
		Size: 73.9 MB (73850815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138a71c35bd99cc484d177f44125c1ab237c7aa5554e44e8fb13ce8cd254b9b7`  
		Last Modified: Wed, 01 Jul 2026 00:10:23 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:e0d8992f092a3ea23ae1dff39dcc7e44c73c4f3fcbad0b1afd76d30555e33dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 KB (38500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644dc4bd5c05c910e904706b6abb96b6e2b8fa497966e3c88551798a3ddfd058`

```dockerfile
```

-	Layers:
	-	`sha256:860ceeed35528a3a07a1d7283e785f28bdea127b7977322d209acc7c98d8b1bb`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 38.5 KB (38500 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine` - linux; 386

```console
$ docker pull redmine@sha256:4b334f56182d4df48b2d15201680ed2adbba6119c52716888f2ff02ee2125e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218684697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315852326823937ecd606c09d7d4f9cea7030dc47a4d9165afcf7c69c3af2af3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:01:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:04:02 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:04:02 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:04:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:04:02 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:04:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:04:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:04:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:04:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:04:02 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:04:02 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:08:39 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:08:49 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:08:51 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:08:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:08:51 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:08:51 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:08:51 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:08:51 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:08:51 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:08:51 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:08:51 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:08:51 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:08:54 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:11:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:11:06 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:11:06 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:11:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:11:06 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:11:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0247e8159d17bc9c3d588a4317590f33af9cffdf6882fdeee0a451a4156eb00f`  
		Last Modified: Wed, 01 Jul 2026 00:04:09 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbb69dc6b9129017ddf6afd091eb7ed49274017d2e1357e804cd7a5aed6cf33`  
		Last Modified: Wed, 01 Jul 2026 00:04:10 GMT  
		Size: 34.7 MB (34707771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fb227382e555c78302bb90374afcc00bde1b8f2bf624dd54720d4f03bf8e5a`  
		Last Modified: Wed, 01 Jul 2026 00:04:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a061d2e678e6969e6f792e8238999937006a18261fff9454dd292e34a4760d`  
		Last Modified: Wed, 01 Jul 2026 00:11:17 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96501550c63a974e2fb5a8881c049cb981664540a4d4a006371647a24578dd84`  
		Last Modified: Wed, 01 Jul 2026 00:11:19 GMT  
		Size: 79.8 MB (79845479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5678c0b5655056b7c1306ec31a6919487617a6d5e42d8f71f7cec9985a8a971c`  
		Last Modified: Wed, 01 Jul 2026 00:11:17 GMT  
		Size: 946.7 KB (946690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3f5fd1aa249d1438f9f98474e17a0aa5552f92f052cf963f4db09e9aef3c31`  
		Last Modified: Wed, 01 Jul 2026 00:11:17 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f297ba4b1972f8640b039da7290e21832c034b0cd969231e64baef780ae4dfd`  
		Last Modified: Wed, 01 Jul 2026 00:11:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4b903ed2a22bcb412c2d31f7d468987eda7e4a8322cd6933539a2d9062728e`  
		Last Modified: Wed, 01 Jul 2026 00:11:19 GMT  
		Size: 4.2 MB (4155798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec676c139d077f13374e5344561785c9baa9e3c0c9b0bfd35aebb3a4469a5a1`  
		Last Modified: Wed, 01 Jul 2026 00:11:21 GMT  
		Size: 95.4 MB (95354906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0696a52091e418c486023505f624fdc61b8f4ff39733ac494c537b14a1f5bb81`  
		Last Modified: Wed, 01 Jul 2026 00:10:41 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:f29a5b5ae3f3bbc8a1c50ab5226426023099452c5799ace448ae9340dc52e8cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebcaa3426df9334ea30246879aea412ffdb914ed2d832856e552c35e8cb7eac`

```dockerfile
```

-	Layers:
	-	`sha256:d7ecad7eb8839bf83e22a229fcd706daea57305a710d0d63bcd5e4cda4311d3b`  
		Last Modified: Wed, 01 Jul 2026 00:11:17 GMT  
		Size: 38.2 KB (38211 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine` - linux; ppc64le

```console
$ docker pull redmine@sha256:8c46d03c34732da63041c8b535aefe5be0e4635c2a34a4e6a9fcc584aeff74ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237732315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96835a55a6cb8273c01927b112a9260dee827fe508da11ec8fd7531ebc03054`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:54:48 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:58:27 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:58:27 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:58:27 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:58:27 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:58:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:58:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:58:27 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:58:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:58:28 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:58:28 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 01:22:53 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 01:23:04 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 01:23:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 01:23:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 01:23:08 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 01:23:08 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 01:23:08 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 01:23:08 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 01:23:08 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 01:23:08 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 01:23:08 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 01:23:08 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 01:23:11 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 01:27:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 01:27:47 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 01:27:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 01:27:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 01:27:50 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 01:27:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030eebd3e177c6fc50c7f98c7173d0f7db25e259c1dad922fff07c3698d3d955`  
		Last Modified: Wed, 01 Jul 2026 00:58:43 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4860671dd63ad09bd61cfdb3bc7d8c9e9b1f176137468749095ef3e8aa7dec71`  
		Last Modified: Wed, 01 Jul 2026 00:58:44 GMT  
		Size: 36.6 MB (36617105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b86c72157a3d363a6422e8d868100a74f5986e8dd291ce3f0a377442ce7467`  
		Last Modified: Wed, 01 Jul 2026 00:58:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ad771ef4d3bf652c19da82ef4ff9d6d2123b577a688c941e9131ea2fc10461`  
		Last Modified: Wed, 01 Jul 2026 01:28:25 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100fc9064bbaa628719abbdc40094e6679d67f307abe3ae22e0b3368c183d36e`  
		Last Modified: Wed, 01 Jul 2026 01:28:27 GMT  
		Size: 81.2 MB (81243776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11014ebe0f7dea9cdf85d0759770c3e8915f807b6e13a3f9cf8c5236fed99f5f`  
		Last Modified: Wed, 01 Jul 2026 01:28:25 GMT  
		Size: 935.9 KB (935918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2802541dbad69c50c240807095fb52f654b228f199958f824e7aec1e1ea09db3`  
		Last Modified: Wed, 01 Jul 2026 01:28:25 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b309ac925bb8299356c3f6a25c0de17452de827a26015a81c59be4ab56dfd4`  
		Last Modified: Wed, 01 Jul 2026 01:28:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd355a9d861ec7d66b3de4b6d7d37d63ed46394f8225a328e064b3b1a233992`  
		Last Modified: Wed, 01 Jul 2026 01:28:27 GMT  
		Size: 4.2 MB (4155796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836345dedf1662442902da9ec9c180d74758068576281164393c3b153848c616`  
		Last Modified: Wed, 01 Jul 2026 01:28:29 GMT  
		Size: 111.0 MB (110962408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0364495cba1969d08e96562d34881cdf9f910d868640a7f40021f3fe64a4f0c4`  
		Last Modified: Wed, 01 Jul 2026 01:28:28 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:94bf53cb66d97acff8f978aa83ce052637787caa74c138d0c464c72cca909639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941c3b818afd3a330bfc24c915634acb5c82b5172927563017f94e5a12d584d7`

```dockerfile
```

-	Layers:
	-	`sha256:54d509ba338229498a1148bcab4da1a3af2678c407110d9a0a381a4d6913d601`  
		Last Modified: Wed, 01 Jul 2026 01:28:25 GMT  
		Size: 38.4 KB (38353 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine` - linux; riscv64

```console
$ docker pull redmine@sha256:61d1ccc2a7a346b7aa4989a2805dcd6ad6c21a8f97cf0c7d6a06bb889b49f5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (236980384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5551192e5c3eb20cca5a236c9f22a20ade7ab516175a07ec7090570e00ed212b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 11:30:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 19 Jun 2026 13:13:15 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jun 2026 13:13:15 GMT
ENV RUBY_VERSION=3.4.9
# Fri, 19 Jun 2026 13:13:15 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.9.tar.xz
# Fri, 19 Jun 2026 13:13:15 GMT
ENV RUBY_DOWNLOAD_SHA256=4231c54072601a171faed1699f105985e9971c94cd382b78feb4eb44eec2dd1a
# Fri, 19 Jun 2026 13:13:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 19 Jun 2026 13:13:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Jun 2026 13:13:15 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Jun 2026 13:13:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jun 2026 13:13:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 19 Jun 2026 13:13:16 GMT
CMD ["irb"]
# Wed, 24 Jun 2026 11:47:06 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 24 Jun 2026 11:47:38 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 24 Jun 2026 11:47:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 24 Jun 2026 11:47:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 24 Jun 2026 11:47:49 GMT
ENV RAILS_ENV=production
# Wed, 24 Jun 2026 11:47:49 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jun 2026 11:47:49 GMT
ENV HOME=/home/redmine
# Wed, 24 Jun 2026 11:47:49 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 24 Jun 2026 11:47:49 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 24 Jun 2026 11:47:49 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 24 Jun 2026 11:47:49 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 24 Jun 2026 11:47:49 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 24 Jun 2026 11:47:54 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 24 Jun 2026 13:09:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 24 Jun 2026 13:09:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jun 2026 13:09:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 24 Jun 2026 13:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 13:09:39 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 24 Jun 2026 13:09:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d198879d005263b5ae956d5e1e5fca2180d56903fcca76adeba29efdf0c374`  
		Last Modified: Thu, 18 Jun 2026 13:49:08 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc221184073da2e331540a84f521d7562cee5727e951d86d94c67c9db98cd1d7`  
		Last Modified: Fri, 19 Jun 2026 13:14:33 GMT  
		Size: 38.2 MB (38164783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2c0cb0a982c2814ef5757031b980bdf9877db85e2f9ef0decb86cfbf09092c`  
		Last Modified: Fri, 19 Jun 2026 13:14:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b3f70b9847cc46dff405f99bf80b708de75841175c6fabf371dd5b297573ca`  
		Last Modified: Wed, 24 Jun 2026 13:12:07 GMT  
		Size: 910.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf8a8c3ce4b0bfaf4a4080a5a4ca00feb353b0a60d0a58e2c29353544b95c64`  
		Last Modified: Wed, 24 Jun 2026 13:12:29 GMT  
		Size: 78.8 MB (78808062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671baa32c53f83d8a40957a42d8a4539366a44db827f98856136b1835cff06ba`  
		Last Modified: Wed, 24 Jun 2026 13:12:07 GMT  
		Size: 923.4 KB (923414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41619f8c88f5e0e19121979e670c179eb3791d00b8fc22dcbc1a3ff8b7bd254e`  
		Last Modified: Wed, 24 Jun 2026 13:12:07 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa670a7b6faf932e8790699f8f22d75e1af1965467db961519a770e5cff5282`  
		Last Modified: Wed, 24 Jun 2026 13:12:08 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1910caf6c92568603d0821e0bad1ba9ebab15c3a9eb63321ee86ba668e26ee`  
		Last Modified: Wed, 24 Jun 2026 13:12:10 GMT  
		Size: 4.2 MB (4155673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72112d78af2eda9aa93069e807c971aadaaec6d395ff2b102edcc7827b6223cd`  
		Last Modified: Wed, 24 Jun 2026 13:12:35 GMT  
		Size: 111.4 MB (111350184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d60c4db411f5dc89caeaaf44014f83887a0f30c3f166768f6df237d14f96e5`  
		Last Modified: Wed, 24 Jun 2026 13:12:11 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:9b68e9c5d47dfe25b1217ce2d5af33c8fc9e89066ade605f9175bbc4cf94a6aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9f8c9d4c8fa41c2efb8d0eb5a793b865d6f81f6019039236e0a68af6cbc742`

```dockerfile
```

-	Layers:
	-	`sha256:d897929ceebc82c888aff27fe8e8f6e893fe1f4417e7119cf28ba96443c82f06`  
		Last Modified: Wed, 24 Jun 2026 13:12:07 GMT  
		Size: 38.3 KB (38341 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:6-alpine` - linux; s390x

```console
$ docker pull redmine@sha256:b4579fd0853ee98ae5f26e84cac3456e753ea3e9fa0c84f4a3d261c594023d46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235436358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd97971e3fc9e57df1aea9e4f95fff01270fafebda55956d3d325848430e4b11`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:07:40 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:10:05 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:10:05 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:10:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:10:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:10:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:10:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:10:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:10:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:10:05 GMT
CMD ["irb"]
# Wed, 01 Jul 2026 00:19:35 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 01 Jul 2026 00:19:43 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 01 Jul 2026 00:19:45 GMT
ENV GOSU_VERSION=1.19
# Wed, 01 Jul 2026 00:19:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 01 Jul 2026 00:19:45 GMT
ENV RAILS_ENV=production
# Wed, 01 Jul 2026 00:19:45 GMT
WORKDIR /usr/src/redmine
# Wed, 01 Jul 2026 00:19:45 GMT
ENV HOME=/home/redmine
# Wed, 01 Jul 2026 00:19:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 01 Jul 2026 00:19:45 GMT
ENV REDMINE_VERSION=6.1.3
# Wed, 01 Jul 2026 00:19:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-6.1.3.tar.gz
# Wed, 01 Jul 2026 00:19:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=61db3008c7fd18a3afc559ed656fd38fdf8df8220ac69598b319095183190b7a
# Wed, 01 Jul 2026 00:19:45 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 01 Jul 2026 00:19:47 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 01 Jul 2026 00:23:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk ' 			$1 == "libc.so" { next } 			system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } 			{ print "so:" $1 } 		' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 01 Jul 2026 00:23:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 01 Jul 2026 00:23:37 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 01 Jul 2026 00:23:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:23:37 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 01 Jul 2026 00:23:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97889a54cd9b76f7fa4043b7482d74c602b36d2d9cb8924eed2ed5d3bd81a236`  
		Last Modified: Wed, 01 Jul 2026 00:10:17 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aee9c190e3824f9f4cb2c4a4df19cfc68ba4d1bf9717ec895c1ebaff985d2b5`  
		Last Modified: Wed, 01 Jul 2026 00:10:18 GMT  
		Size: 36.1 MB (36120519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62dde197fcf07e7f84870e67a7a6c8193b31c3f6cbd5262e158012e293d6cbe1`  
		Last Modified: Wed, 01 Jul 2026 00:10:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523c2fb2668cbcd32260a401fc5eeebcf5c16f47fed7c3737609a99f5058f90d`  
		Last Modified: Wed, 01 Jul 2026 00:23:55 GMT  
		Size: 908.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58085d274c8c45dd193bc0bcdd13d5ee107d37357567a6b4da0985a15f9b5c59`  
		Last Modified: Wed, 01 Jul 2026 00:23:56 GMT  
		Size: 80.8 MB (80783380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69fbda67265de8e10a4750a1511d7ca41758ca3ed8d0c07e45de689a89d78e7`  
		Last Modified: Wed, 01 Jul 2026 00:23:55 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1084c4322a4197ca759dc5869b2d0c68f330aa0123f0cf208b9952c66379fd4f`  
		Last Modified: Wed, 01 Jul 2026 00:23:54 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d5fad09a7ac6ab62bea542f93c203b1c888f8c0c114ae5776360d08b497446`  
		Last Modified: Wed, 01 Jul 2026 00:23:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f0dd5e677430ae31fbfea8d130fd07c698e525d086eb91ef23a2a8f6a70f56`  
		Last Modified: Wed, 01 Jul 2026 00:23:56 GMT  
		Size: 4.2 MB (4155854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba007aec10a3bd1a7ae53f7aff611883210cf18a1e8a08e695b0d7449d86948c`  
		Last Modified: Wed, 01 Jul 2026 00:23:58 GMT  
		Size: 109.7 MB (109711293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d58e3cbbdbb6af2d26e3301f401cae2976109059df09da383f2a5871491aa5c`  
		Last Modified: Wed, 01 Jul 2026 00:23:57 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:6-alpine` - unknown; unknown

```console
$ docker pull redmine@sha256:479af49c379e7a7933a84eeb53ee4cf4ae40cc85d4d93fafdd482583e02803d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79c89fd0b22559d031b57697c9f582a1c299f4f0de33e99e28038ae4c0b6e4d`

```dockerfile
```

-	Layers:
	-	`sha256:12fc3f1a9d8977a3132d98b5f19d90f849bbb6a73f232ead252606e81378ecc8`  
		Last Modified: Wed, 01 Jul 2026 00:23:54 GMT  
		Size: 38.3 KB (38275 bytes)  
		MIME: application/vnd.in-toto+json
