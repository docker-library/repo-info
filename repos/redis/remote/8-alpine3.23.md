## `redis:8-alpine3.23`

```console
$ docker pull redis@sha256:21090af93f8324db2f0f0f4f38a7c60369d47d917e000c3423d89d2ae2883537
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `redis:8-alpine3.23` - linux; amd64

```console
$ docker pull redis@sha256:be7c1cada5a6eb1656adfa2635b99296af725881301b21f84f35a71fac072c7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39521828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9722accf3e8eeaeb7cd74a86256d6a41b83deb44d508c2988c8e5776bfdb7694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:33:24 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:24 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:42:40 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:42:40 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:42:40 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:42:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:42:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:42:40 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:42:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:42:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:42:40 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:42:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea19da2b3611b8db9be40ed38877a1d91f4e0ec448f76661cd3080c88899581`  
		Last Modified: Mon, 26 Oct 2026 16:42:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc92976dd0707c02ee18cfd6acd7a0ac99bf4c85c0d20389abd41f10b2be74b5`  
		Last Modified: Mon, 26 Oct 2026 16:42:49 GMT  
		Size: 201.0 KB (201033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7379ba8f71f2bb8ae1608020c9d37d7b372d046a955a1bc48008ff974ba2bcff`  
		Last Modified: Mon, 26 Oct 2026 16:42:50 GMT  
		Size: 35.5 MB (35465386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232fbf3af8e0ed6a935d282e004fd75d8d5daecd470b4495d8fbce34b02f20b2`  
		Last Modified: Mon, 26 Oct 2026 16:42:49 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c3c7a694d3cbacd93171791aa8e2911653f0a1514be5af223bf457a2d4e02a`  
		Last Modified: Mon, 26 Oct 2026 16:42:50 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:37666898b10f51d05750bee05dd86b276855c3229dc9dcc802dec58b0668fea4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.0 KB (501999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74109e346e86a152961aa5102527412decf800b2f434fd3332fb6bd3d3981b7f`

```dockerfile
```

-	Layers:
	-	`sha256:241fa7950fe7952b1be584139d4a77a7e5a67f3aa68e69bcdb70d08759cf5353`  
		Last Modified: Mon, 26 Oct 2026 16:42:49 GMT  
		Size: 470.7 KB (470724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb01768357e61354b0191330fdd61cb487e357d1188da7f13b144df83dda689c`  
		Last Modified: Mon, 26 Oct 2026 16:42:49 GMT  
		Size: 31.3 KB (31275 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; arm variant v6

```console
$ docker pull redis@sha256:737ed1bdc0b5f171865389789ac996925d136f37e9ca8d12342e84251bd8345f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18411854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bae9a938bb1ff0d09cb420612afd8ada0e3e091dd550ccbccaaf4652cd539a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:33:04 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:05 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:34:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:34:32 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:34:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:34:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:34:32 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:34:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afce4535dc04256c1a0cdb5d2bee4ab8df9e8f6abb821cb3921b027fac84f48b`  
		Last Modified: Mon, 26 Oct 2026 16:34:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387f810376a318bbb5555cb04aabfb6289780c2f683b52dcdf8536affeb1c06c`  
		Last Modified: Mon, 26 Oct 2026 16:34:38 GMT  
		Size: 201.3 KB (201309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1846c26bed8ebffdd83827689c9d515a0d73f72d30b5c0a7e043fb562ad879a4`  
		Last Modified: Mon, 26 Oct 2026 16:34:38 GMT  
		Size: 14.6 MB (14649173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c717a4ff6f21749cf9001278f59fa994eb0725d2e67d691921d43e63ee8e299`  
		Last Modified: Mon, 26 Oct 2026 16:34:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cf9ac8a2664ad0c037b04c367768ba614daf0d71709f1b9900ecf1b2d7f57e`  
		Last Modified: Mon, 26 Oct 2026 16:34:39 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:6cd86206948eff9b6c5cbcd04b7404a36b9f1973797a66c9bebc69ee45d2668c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.2 KB (31208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e8d39abbf4b49f950d1b69d2ad685f32810a54f31d7d051bce28f6c79319e6`

```dockerfile
```

-	Layers:
	-	`sha256:69d7c27c35d91dcd62a0d3f2df5e6a56183ad1ca5296d4815fa77d3fad2cc7cd`  
		Last Modified: Mon, 26 Oct 2026 16:34:38 GMT  
		Size: 31.2 KB (31208 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; arm variant v7

```console
$ docker pull redis@sha256:c0aaf85c7fabea34d8697d9569bf99a04c9246c7c757b7f289cd9c14a7c0a261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17908946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce997288d08d4762e865560bce11628d0bfc0ebf6f976de312b52456e28dd51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:33:05 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:06 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:34:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:34:32 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:34:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:34:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:34:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:34:32 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:34:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ac0fd1cb164fbb0de342af0cc11e3c8781f244e0c9bd4cea3d78a5b2d5da27`  
		Last Modified: Mon, 26 Oct 2026 16:34:39 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09af58a66936f75b51fab782ffad0936dca676e91c6a2e20a97fdc7e18b22e50`  
		Last Modified: Mon, 26 Oct 2026 16:34:39 GMT  
		Size: 199.6 KB (199641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc0d47d37fd857cce40680d97b2642178b17f9c8002aa5d44dbb1d0e6361b1e`  
		Last Modified: Mon, 26 Oct 2026 16:34:39 GMT  
		Size: 14.4 MB (14439081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c717a4ff6f21749cf9001278f59fa994eb0725d2e67d691921d43e63ee8e299`  
		Last Modified: Mon, 26 Oct 2026 16:34:38 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41eabff7ea3d6281543b7a9c8edead8d6d86fadafe9efe37a622f3117415412b`  
		Last Modified: Mon, 26 Oct 2026 16:34:40 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:4b9d17152ae22c41c699c77a1d0895a9509476a95a97d9c8b7cb0611f9a07627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.6 KB (499575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89834b36b375fd3c48daa4201a9e2769aa99583d1f855dc241be91c1e024b5b2`

```dockerfile
```

-	Layers:
	-	`sha256:cfea1c5830903e73dc8568925fa38d91690027f34173d8b7f714ca1cf869741b`  
		Last Modified: Mon, 26 Oct 2026 16:34:39 GMT  
		Size: 468.2 KB (468152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:107a899d67d9adb1b187cddbb27a2bfbfb051b225390ccdb1612c26eb62d25b1`  
		Last Modified: Mon, 26 Oct 2026 16:34:39 GMT  
		Size: 31.4 KB (31423 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b8d831cd7faefb56db98e77ad421379ec35f6b5342a8cff9c8cde2cfd02ec837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39182498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e56fb2dd578827a6a711af0459ce130c8d4ea9ab640f752ffa542ec57e8d89d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:33:05 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:06 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:42:37 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:42:37 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:42:37 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:42:37 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:42:37 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:42:37 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:42:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:42:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:42:37 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:42:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4cf3fd67ae4a0ecea380dc02902186beefc0af15db12466ccad7ff1673f6f1`  
		Last Modified: Mon, 26 Oct 2026 16:42:46 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72a46ef4aac83f2d6987fd8022742aa2449c52fcca87257da3acd63e1db5a2a`  
		Last Modified: Mon, 26 Oct 2026 16:42:46 GMT  
		Size: 203.0 KB (202979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8b70e186c6175a78580e5e4cf04064e6d062a851e6a04179a0294dc87fa35e`  
		Last Modified: Mon, 26 Oct 2026 16:42:47 GMT  
		Size: 34.8 MB (34786841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905823fbcfaedb682e73d7752bc3f3a72a59ec4ba094ce946d4cc1cf72170ac5`  
		Last Modified: Mon, 26 Oct 2026 16:42:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc03f4d0b046574bbd96d0a07a08671d3b9cd11f7f43d78544e5bcd35347443`  
		Last Modified: Mon, 26 Oct 2026 16:42:47 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:b2902bd3c6b099bd99d92fdff8e6c8649a1402acba2185aef9db8cb2ca261fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.6 KB (501649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f8144ea82ca9dc374746454ccafccde7c52eba25f8e6dd2e9fd03c79275b28`

```dockerfile
```

-	Layers:
	-	`sha256:88b708662e36c52521e6ad295a7deb61346bc5ca0c13e37616c30f445fd989e0`  
		Last Modified: Mon, 26 Oct 2026 16:42:46 GMT  
		Size: 470.2 KB (470178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96d1a6f63377958e7beaa567cb8ed9ff8088114f9706f8ee0c7db661fd1f0f58`  
		Last Modified: Mon, 26 Oct 2026 16:42:46 GMT  
		Size: 31.5 KB (31471 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; 386

```console
$ docker pull redis@sha256:92b188e24b21a92d674a92a6bd056fa9cabdf582c68f14c4e9f00cc33374af3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18248043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa1b304c394fd207186b394e544cdc9409cb47b310f6827a982903e6f1cb73a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:33:24 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:25 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:35:04 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:35:04 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:35:04 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:35:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:35:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:35:04 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:35:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:35:04 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:35:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736abceda8cee8b49a3be8366e2dd802d5cefa14f92fc1befb8a303b86f67c8d`  
		Last Modified: Mon, 26 Oct 2026 16:35:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841b81b29b80b1e6056795bc89d1f7ca0a92149e5918fad92665a4bf482ac5c`  
		Last Modified: Mon, 26 Oct 2026 16:35:11 GMT  
		Size: 201.7 KB (201685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ad80c0887d7cf406a966b843350f7e8800c763d5d53d3e381b58c4b841d068`  
		Last Modified: Mon, 26 Oct 2026 16:35:12 GMT  
		Size: 14.4 MB (14365863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac53ec66e2dc19a432c0d47117c1a1990a159e6be8e022478207c479f2cfebde`  
		Last Modified: Mon, 26 Oct 2026 16:35:12 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e889ee954d7cedb7502c741869d956b2e9a6c371a1364b1b360edaf8e88a15f`  
		Last Modified: Mon, 26 Oct 2026 16:35:13 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:68808a491444e557099d541876b1e21a452c2f98ed48b672d8fd3c57c6c4f6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.9 KB (496916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8275d003f368a56d898429574445d45d8a5962edd6b9df2446b44f2e99cfe5d0`

```dockerfile
```

-	Layers:
	-	`sha256:16cfa6e0326f00332561f7ea203170f41fba1159440e0e381983b45598f0ae09`  
		Last Modified: Mon, 26 Oct 2026 16:35:11 GMT  
		Size: 465.7 KB (465699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a6a2e08c7911008b322cec738648e6af09ca34aa4a3ab0ff9521ac94ca8c4c6`  
		Last Modified: Mon, 26 Oct 2026 16:35:11 GMT  
		Size: 31.2 KB (31217 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; ppc64le

```console
$ docker pull redis@sha256:d3bd22a6750dd05d19ab1f7361c761069b30950919940e9540cb978fa631f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19842171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46944704581c0c8d7cc3b8d0fb580074b92de16c142783de46cfeb071490c6b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:24:21 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 22 Oct 2026 13:24:23 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:35:26 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:35:26 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:35:26 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:35:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:35:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:35:27 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:35:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:35:27 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:35:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663a925b4272ceb5be3841761d0a04f2edc927f090f558c56e1e58fad65f9a97`  
		Last Modified: Thu, 22 Oct 2026 13:27:09 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619c4fa07dbbcc3f4eb087fe097fa4bb047428a535634105963ca81d57cd1d78`  
		Last Modified: Thu, 22 Oct 2026 13:27:09 GMT  
		Size: 204.0 KB (204033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8a014c2e57cced401c0f8fbe4377cdf1b2a1e936037a202d8c9feaa1d4eafb`  
		Last Modified: Mon, 26 Oct 2026 16:35:46 GMT  
		Size: 15.8 MB (15816575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f84f3af35ba1289722111edb295893fc389da7d7980d6843db6096f88a103e`  
		Last Modified: Mon, 26 Oct 2026 16:35:45 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbf259dbd6a4dce531560608ad56565bfd549614722f2365e88b23ab45174f4`  
		Last Modified: Mon, 26 Oct 2026 16:35:45 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:dad95e4b7a30ca969e3eda6bebfaa0787c5691703eab1869f4ec67b628ae86b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 KB (496497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a68ffb0cb60d9eb19e04b0a096759bd1a76147d678701b0d5a0f4c4b0e0f21`

```dockerfile
```

-	Layers:
	-	`sha256:ece537f560e002359945a5cff725aafc8182a6f30262ebf5562aedabe0ef7b0c`  
		Last Modified: Mon, 26 Oct 2026 16:35:45 GMT  
		Size: 465.2 KB (465151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:874bfed89756708dba7b2f4ffc6d6dcf8d1a0fa27f9ff88a2731bf33b5d87057`  
		Last Modified: Mon, 26 Oct 2026 16:35:45 GMT  
		Size: 31.3 KB (31346 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; riscv64

```console
$ docker pull redis@sha256:d9a24de02af08bf4fe90e1e27676b8ac38e4cdc5599a3527a1c9da297d5a1863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825f053f641fe31a7c590c7890aedd51735b9914c253ef2019a08e52558b770f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 10:38:10 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 10:38:14 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 29 Oct 2026 00:23:30 GMT
ENV REDIS_VERSION=8.10.3
# Thu, 29 Oct 2026 00:23:30 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Thu, 29 Oct 2026 00:23:30 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Thu, 29 Oct 2026 00:23:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 29 Oct 2026 00:23:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 29 Oct 2026 00:23:30 GMT
WORKDIR /data
# Thu, 29 Oct 2026 00:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 00:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 00:23:30 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 29 Oct 2026 00:23:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974b072aad618d649fb3b4a1d2137068ff9a61d99330d3966970afba6a800494`  
		Last Modified: Mon, 26 Oct 2026 11:10:40 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3bbf1971ed86d9442c4b99604ae49480aba4879de3f810735fae2cf9f3a804a`  
		Last Modified: Mon, 26 Oct 2026 11:10:40 GMT  
		Size: 201.2 KB (201213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16312d28322c9e315a722a2905d2ace3001bc6f9f7bb45459a2a50e367a734d7`  
		Last Modified: Thu, 29 Oct 2026 00:24:57 GMT  
		Size: 16.4 MB (16388914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b1e14da023db0584ef82eff95edc5f3ed24c335f81aee7b90e827ef59b20c7`  
		Last Modified: Thu, 29 Oct 2026 00:24:55 GMT  
		Size: 98.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ec88a26ad9824d9fb4de6d3183712df92d65ead2fae861ee070bd0812e0251`  
		Last Modified: Thu, 29 Oct 2026 00:24:55 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:0a4f042abce6fb994cec5d88d1aa2ad4e613eca8e585c8760244a0ccb5d034b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 KB (496493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a91df924104aee439f50379daee7711ad613a3100295e3ef5d01980e3f20c`

```dockerfile
```

-	Layers:
	-	`sha256:5ac4eec5d62f09bdff1f541bcd322b3235536982f89219c38b63198403b46bf5`  
		Last Modified: Thu, 29 Oct 2026 00:24:55 GMT  
		Size: 465.1 KB (465147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a6ce4815d13a31518a6367c54c79798034dc997f88d3079a96c0d43efeff497`  
		Last Modified: Thu, 29 Oct 2026 00:24:55 GMT  
		Size: 31.3 KB (31346 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine3.23` - linux; s390x

```console
$ docker pull redis@sha256:91395c37d79b32262310144716b88a73343a9ca8218eec68ce5f7b3d4c8fc76f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19114107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8eb701609d8d86d8f52736fd6cf9ddff76e82f12b7ddcef9ec511627010e87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:28:25 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:28:25 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:33:56 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:33:56 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:33:56 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:33:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:33:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:33:57 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:33:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:33:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:33:57 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:33:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90065e430322a32acd6c5ef9392d85d7e7bba09ee2ac569ba33cff04f309cc7`  
		Last Modified: Wed, 21 Oct 2026 21:30:33 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1877b4f9e485d4ea37224465fd182f86474e1e50ba68a677ed09b8fc85f907d4`  
		Last Modified: Wed, 21 Oct 2026 21:30:33 GMT  
		Size: 203.3 KB (203267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fddfc5125fc326e7f47e74be7937dfbdc0ca0a49e880eeb94f0b4f82a22c649`  
		Last Modified: Mon, 26 Oct 2026 16:34:22 GMT  
		Size: 15.2 MB (15190537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c9ce5dd64eca7a2f9f605ad885d6f15fae0065ac39d14aed0a7888604c8019`  
		Last Modified: Mon, 26 Oct 2026 16:34:21 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ecedca326169fe5cee07b5912afe4c81d7d4f5e0ba7ee186a7c0e82d3909de`  
		Last Modified: Mon, 26 Oct 2026 16:34:21 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:9132a0024bee44ea2bd47008c4324aa688a291f203e8dcd1c4a0f91ec507343b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.4 KB (496368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0c6539201ca017811b62c299fc577bc0c846c0599dffdefa220b7e51ee822d`

```dockerfile
```

-	Layers:
	-	`sha256:0cee1aa8aa5a7d6bad3aa1e69bf927b85892c83ea5f692707190580507ddff28`  
		Last Modified: Mon, 26 Oct 2026 16:34:21 GMT  
		Size: 465.1 KB (465093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:690441fa7b9908ffb29febc96afcd74c0e27119110f47620230b0947b624d8ef`  
		Last Modified: Mon, 26 Oct 2026 16:34:21 GMT  
		Size: 31.3 KB (31275 bytes)  
		MIME: application/vnd.in-toto+json
