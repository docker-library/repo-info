## `redis:alpine3.23`

```console
$ docker pull redis@sha256:0bf6577d7774e592b29d093e3ac9390eb91e13d72c21e506afce736de5e0eeb0
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

### `redis:alpine3.23` - linux; amd64

```console
$ docker pull redis@sha256:16b124a2d3eacd620d917ead6fd26cbf1f1d7117fa94122398971931cfe2d403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39106726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfed4c686145bcd5807ef3ac1d2bf3384503cb3da30b0d308b4f25eb50dc373`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:12:28 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:12:29 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:22:18 GMT
ENV REDIS_VERSION=8.10.2
# Wed, 21 Oct 2026 21:22:18 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Wed, 21 Oct 2026 21:22:18 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Wed, 21 Oct 2026 21:22:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:22:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:22:18 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:22:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:22:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:22:18 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:22:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab57655dd4318e77adea37f7da519be70863c691c1ce665eb41413a2a9362ed`  
		Last Modified: Wed, 21 Oct 2026 21:22:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc83258eb3aced8f07a75541294ad0745e4020e3b8a4fac763e1f4ecbc22930`  
		Last Modified: Wed, 21 Oct 2026 21:22:28 GMT  
		Size: 201.0 KB (201047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e7cb82bdcdf7621c24c213d3a3b5726e8798d5203b8382d89148103bdb191f`  
		Last Modified: Wed, 21 Oct 2026 21:22:29 GMT  
		Size: 35.1 MB (35050270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44306a022043342276355ca30cee8aab73af88bcef749cc6b7b0516b5f109a1`  
		Last Modified: Wed, 21 Oct 2026 21:22:28 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93b11c828a59be98a41bf15485547ea65ed546a7707512f2cd7e48ae804b642`  
		Last Modified: Wed, 21 Oct 2026 21:22:29 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:f79a7876c6644b273e4eec899344e51c66959237a2f71188db8cb98d7311521c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.6 KB (498619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c743b1b8763046fa7a06fd243837da24dffc6b5e73250d62d08d2d8846dc55fb`

```dockerfile
```

-	Layers:
	-	`sha256:743da377bfc8ab3ec43cdccade6f30c302bd7ece029bff64bff5a8aa3964bb17`  
		Last Modified: Wed, 21 Oct 2026 21:22:28 GMT  
		Size: 467.7 KB (467671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5dd3e44bfcc11a4bd568657a9583c67a8817507a66da27f7b2009e7f4cd4513`  
		Last Modified: Wed, 21 Oct 2026 21:22:28 GMT  
		Size: 30.9 KB (30948 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; arm variant v6

```console
$ docker pull redis@sha256:877e73ece6138771a041efc6af9f0004123e0fe581d7deddc1b7c1b230a9632e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18001331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbea8c216425c1f84762e1d79e9eb116922c4f345086e541c958dfe96581a2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:24:15 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:24:16 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:25:40 GMT
ENV REDIS_VERSION=8.10.2
# Wed, 21 Oct 2026 21:25:40 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Wed, 21 Oct 2026 21:25:40 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Wed, 21 Oct 2026 21:25:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:25:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:25:40 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:25:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:40 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:25:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb927e9bdc4eeb5f23540f12289f259319f0e5953ea296e8ce03286a5d0a3e3`  
		Last Modified: Wed, 21 Oct 2026 21:25:46 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0047cc844bec670926ff734d5548ab7f154493f604cdce030b8f367ba733e7d8`  
		Last Modified: Wed, 21 Oct 2026 21:25:46 GMT  
		Size: 201.3 KB (201320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f590207ff7b831d76a2533d1a7573c46d24851d4c4aea97c451e1019b46bf5d9`  
		Last Modified: Wed, 21 Oct 2026 21:25:46 GMT  
		Size: 14.2 MB (14238639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b52606c004a47a2d1525129db0d22fe6ce776e223b5f62a0512478630794ba`  
		Last Modified: Wed, 21 Oct 2026 21:25:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785f8762e91bbb8832cacd4425a32399c0a49dadeef5b22bb1ac4a2a3da45aa1`  
		Last Modified: Wed, 21 Oct 2026 21:25:47 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:2f1a67285209ad29073b25e0d5bc57bd0b3aeda54e81a0b53bd528a5d19920ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 KB (30884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357d1a40af2a278c875a51d83c22ef51e5a94530711962dee39f2582169ae638`

```dockerfile
```

-	Layers:
	-	`sha256:926738edc1a796a28201f0627a96a0cd17142e048cb582560cea09270edc7f95`  
		Last Modified: Wed, 21 Oct 2026 21:25:45 GMT  
		Size: 30.9 KB (30884 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; arm variant v7

```console
$ docker pull redis@sha256:92d1b3d859ce2e7244e7f2de6fd227faa1a1626183d69a178e2f1fba5023966f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17534332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f88fa1ea685c45cd258eb15e0482705a6655f28e3e5463c36e0fa0a9e50d70f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:26 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:18:28 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:19:52 GMT
ENV REDIS_VERSION=8.10.2
# Wed, 21 Oct 2026 21:19:52 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Wed, 21 Oct 2026 21:19:52 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Wed, 21 Oct 2026 21:19:52 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:19:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:19:53 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:19:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:19:53 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:19:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d69227a0656e888bbf5081a11bf5e1b7f7bdbcebaf557b7d10ef2dc011b08c1`  
		Last Modified: Wed, 21 Oct 2026 21:19:59 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa837e879e0207eb4be091fdfc26909eeade704653c811b961b2120b6e64d172`  
		Last Modified: Wed, 21 Oct 2026 21:19:59 GMT  
		Size: 199.6 KB (199626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42071a01e7c5a6c0909c714871397564b03d3b0209c6d34e7b44e5d6742020e7`  
		Last Modified: Wed, 21 Oct 2026 21:20:00 GMT  
		Size: 14.1 MB (14064479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac02449f65145481944f9b13296f25ee16b254e321ffd1e433a0463bff0f9e3`  
		Last Modified: Wed, 21 Oct 2026 21:19:59 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc655785e3b3e76514c6c9639b2d24de5d00424bf032e2654099c66dcecdf91`  
		Last Modified: Wed, 21 Oct 2026 21:20:00 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:271f98eebdd5a137fbe9c045fb5f115c2dd3b04a45a784a1fccb560914a102e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.2 KB (496198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90979dba368dec1703abca21607fd7f20f55ff849a74a7ba0633ae6d472c5cbb`

```dockerfile
```

-	Layers:
	-	`sha256:fceeac7e51b70f2fcd2bbbb7be00e6679e725dc385dac81871a988c31ec14322`  
		Last Modified: Wed, 21 Oct 2026 21:19:59 GMT  
		Size: 465.1 KB (465099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0aa43d8961e63705565f335ede1fffd53ce0883baf5bf84de18354c0d6dd0c63`  
		Last Modified: Wed, 21 Oct 2026 21:19:59 GMT  
		Size: 31.1 KB (31099 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0819246a2bb1979f7745a8bae2559a2ffa49071ef7a5e7213b3e347e162aeb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38762177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eba214ac186cd19f8675fd248d92db3bfef0180773990b304b378cbe384c45f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:35 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:11:35 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:22:06 GMT
ENV REDIS_VERSION=8.10.2
# Wed, 21 Oct 2026 21:22:06 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Wed, 21 Oct 2026 21:22:06 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Wed, 21 Oct 2026 21:22:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:22:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:22:06 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:22:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:22:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:22:06 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:22:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6dd03c9e2cdaccf105638f1f38d2444a9e0be8d4da29114a69424d0f2dffd9`  
		Last Modified: Wed, 21 Oct 2026 21:22:15 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f39093eb406c6b5d8372bbf68d1155d6d15cb3f69ee5f4b80b7c528f8ef65f`  
		Last Modified: Wed, 21 Oct 2026 21:22:15 GMT  
		Size: 203.0 KB (202971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416fec0000fa05c569717296fc56ae43b543abdf6d97082dd53082bfebdc6156`  
		Last Modified: Wed, 21 Oct 2026 21:22:16 GMT  
		Size: 34.4 MB (34366530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c75cda532a30b42f225e4706e2eefc0664e23543cd5cf83fadd692d6121f1b`  
		Last Modified: Wed, 21 Oct 2026 21:22:15 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737cee53af13946f4f071b6c81f6fc495333a211fec11f9a222450ed8b6ceea9`  
		Last Modified: Wed, 21 Oct 2026 21:22:16 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:a172bd2206527eabb12e88556d3741a447db003d4a7c3c8081549e6fb2089b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.3 KB (498270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc390dcd30ff9f08d50d75ffb788e1a4dd402e649d09f6497594d47d5159a40e`

```dockerfile
```

-	Layers:
	-	`sha256:1dc9db43bbbf06c3c683a3aca9ff828f4557b3fe7bc09ac426438029e8b71125`  
		Last Modified: Wed, 21 Oct 2026 21:22:15 GMT  
		Size: 467.1 KB (467125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4d3b3431882bb9707d2ed29faf62ef9a005b198eea93f9d6b747e8ef84f126`  
		Last Modified: Wed, 21 Oct 2026 21:22:15 GMT  
		Size: 31.1 KB (31145 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; 386

```console
$ docker pull redis@sha256:26e2996b8f8bfaaccf2a8ac63995528d64faea5132f7057c0073614c8365360e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17844488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f4eac3218b78b0eafdbfe69b64431327b48c1e97728fdd6f9383732ae7137f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:56 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:11:57 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:13:27 GMT
ENV REDIS_VERSION=8.10.2
# Wed, 21 Oct 2026 21:13:27 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Wed, 21 Oct 2026 21:13:27 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Wed, 21 Oct 2026 21:13:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:13:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:13:27 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:13:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:27 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:13:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:570f370095d411da5c2d7ae844c1ed729c8662c31b5ddd50798e757c70960346`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25dcb5503976bd792d0ba5a4399781620b213cd7bbb621b877a8ffa82866b3ce`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 201.7 KB (201680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc0bcfe42521b9c05445fdfb7700b402e4dad263c649dfb163fa8ff60afb3cf`  
		Last Modified: Wed, 21 Oct 2026 21:13:34 GMT  
		Size: 14.0 MB (13962315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9a0d398f7354382d5860f9b198a661dbb80bef3ec2af69fb1c04f9e769e98`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af93fa4abc3205bf17e9cf0d2b3f40bbd25f4380f077cd35b06f716bc9694e14`  
		Last Modified: Wed, 21 Oct 2026 21:13:34 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:76193f40a856d0b697f81228b9e40aaae13db9ec62791cff9d784a54b971f6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.5 KB (493536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20110b0ae84ce03b72b5e2c8b89a165893d7e89caeb2b56a21b53e03706dc936`

```dockerfile
```

-	Layers:
	-	`sha256:ae44ba7465c632ba4e68854c7f2fef80cb70e3603547bb3a6dbec2e51bfba79d`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 462.6 KB (462646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:155df95eb9f7eeeb91d6a58f6c7ac637be5cc53d183ed1e2808695c37567ee00`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 30.9 KB (30890 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; ppc64le

```console
$ docker pull redis@sha256:e3040302f3dc2029a1ccaa49c9c763291286c5869f6e264c43875665f6d36515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19396504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a5fd33d2b07db5fc556e617452268e0592d46c327c1154bd512cf8666be8a1`
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
# Thu, 22 Oct 2026 13:26:50 GMT
ENV REDIS_VERSION=8.10.2
# Thu, 22 Oct 2026 13:26:50 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Thu, 22 Oct 2026 13:26:50 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Thu, 22 Oct 2026 13:26:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 22 Oct 2026 13:26:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 22 Oct 2026 13:26:51 GMT
WORKDIR /data
# Thu, 22 Oct 2026 13:26:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:26:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:26:52 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 22 Oct 2026 13:26:52 GMT
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
	-	`sha256:4e7e1955b0d924647c4e06857945ce765e773bbe3c69796a465ead96ea0cc7f5`  
		Last Modified: Thu, 22 Oct 2026 13:27:10 GMT  
		Size: 15.4 MB (15370903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9f2477333f71afc54d23639e1c27383931f26380f6cda09c9e314aaafdbdc1`  
		Last Modified: Thu, 22 Oct 2026 13:27:09 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cde554ce7ffe05ea5f2582789997e7872bdc86c5378c4f9891231d0ae2c2ea4`  
		Last Modified: Thu, 22 Oct 2026 13:27:10 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:6eabdc0b29a2ad86951bc04c90085d482e1a8a8bcc3f48eab1b1a0da581e4698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 KB (493120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381f34cb00cee997516a1dff9365785b8a19fc654d5be7ca7e66fff1e9708091`

```dockerfile
```

-	Layers:
	-	`sha256:64f05658487591667a689495a804153679d37c2a61a5285434039c25ee589aa5`  
		Last Modified: Thu, 22 Oct 2026 13:27:09 GMT  
		Size: 462.1 KB (462098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebc711e8bb1abd4c069da133dad7e9bbe49bdb41c7283cf6d8078f329082ae0`  
		Last Modified: Thu, 22 Oct 2026 13:27:09 GMT  
		Size: 31.0 KB (31022 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; riscv64

```console
$ docker pull redis@sha256:718505e2000e260253c71054268e65062bcd19eef642c78ac9f54b0d031d5aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.7 MB (19686861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3b255a9208a76e630e1e95b12eb0606b0b20aa6e1fc290d4b2e1a0ccf8513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 07:00:54 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 21 Sep 2026 07:00:58 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 24 Sep 2026 20:12:38 GMT
ENV REDIS_VERSION=8.10.2
# Thu, 24 Sep 2026 20:12:38 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Thu, 24 Sep 2026 20:12:38 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Thu, 24 Sep 2026 20:12:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 24 Sep 2026 20:12:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 24 Sep 2026 20:12:38 GMT
WORKDIR /data
# Thu, 24 Sep 2026 20:12:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:12:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 20:12:38 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 24 Sep 2026 20:12:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca9eaada3d7b802e65d18bf5d27f9e200f63f4111f4775b29a8e9b688b5da4f`  
		Last Modified: Mon, 21 Sep 2026 07:32:14 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3eef4af05a206a484d7bfcf916960c56ad9989ee2c0a1302bc1527492afc61c`  
		Last Modified: Mon, 21 Sep 2026 07:32:14 GMT  
		Size: 201.2 KB (201193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfdacae0a28d6bd40552aebd81c1a678f0007f6596f1a7a8650ca4970987ae5`  
		Last Modified: Thu, 24 Sep 2026 20:14:05 GMT  
		Size: 15.9 MB (15906157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e0e22c132df4287e7cdd408a8185e6a7083f22d2204380dad440b3a833ec72`  
		Last Modified: Thu, 24 Sep 2026 20:14:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07000fe023d1e2e306419e13db04f04989633d016e5a80e25988d5ad1fa1292`  
		Last Modified: Thu, 24 Sep 2026 20:14:03 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:fd262166e77cb8b622e0b96bf1080623ff2646b66a97c42e83d38fa1f8ebf88b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 KB (493113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b6e868fbf4111f81ed0626d7f6ad2088101c9d112839d7d269ec8448bf04ca`

```dockerfile
```

-	Layers:
	-	`sha256:d170e0d2aecf49f8c7b460a5f0e81f57b7858cfc9bb418e7537e8187fbf24f37`  
		Last Modified: Thu, 24 Sep 2026 20:14:03 GMT  
		Size: 462.1 KB (462094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303ca63e0e6b977f76b425b3dbfe5fc1b653578e04c9eaf8ce64e09fb1d0c423`  
		Last Modified: Thu, 24 Sep 2026 20:14:03 GMT  
		Size: 31.0 KB (31019 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; s390x

```console
$ docker pull redis@sha256:5be8b7e307feb9809e4f25cc8facf87e0bb50ff6f94a2773226ec940de54530a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18688894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a0006e4c002d24e830f3e70d0e19666c2662431560aa4663220f0c1686a283`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:27:08 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:27:09 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:28:51 GMT
ENV REDIS_VERSION=8.10.2
# Wed, 21 Oct 2026 21:28:51 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Wed, 21 Oct 2026 21:28:51 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Wed, 21 Oct 2026 21:28:51 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:28:51 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:28:51 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:28:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:28:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:28:51 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:28:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335421dd38015f6d3f980c8ac3d4cd19dbcd64bf5f237e35363c002b01db2aa3`  
		Last Modified: Wed, 21 Oct 2026 21:29:01 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa59b18eb4cae8f1fe4c5b6c067133ac6ac76225db0cab97de5719f316516c8`  
		Last Modified: Wed, 21 Oct 2026 21:29:02 GMT  
		Size: 203.3 KB (203276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466cf7204aeceb3a716cc373b08334f3939c85532d9c93401ee5cbaf90d40f65`  
		Last Modified: Wed, 21 Oct 2026 21:29:02 GMT  
		Size: 14.8 MB (14765316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4874bc3371070a871aad2c14e0d2002fabdd2cf30d69a5b405b10afd48ec6f3`  
		Last Modified: Wed, 21 Oct 2026 21:29:02 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158537fc5bd37917cd1c3203a510f6a5a49d2022176dde14b4539d049af26504`  
		Last Modified: Wed, 21 Oct 2026 21:29:03 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:9faa7cfdb18c3e2a40e2160d67ca8475048085270b0806e0ad0e935c9eeb172a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.0 KB (492988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc05f5e9735128cd8c77564c7f91dd470f01037c9a7f0cdc6cb459be9a65188c`

```dockerfile
```

-	Layers:
	-	`sha256:260121312465936118e787121ae322f4425c246c0f5d969853e3725a5a2c0992`  
		Last Modified: Wed, 21 Oct 2026 21:29:02 GMT  
		Size: 462.0 KB (462040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:265d1c7a39a4c104c0ce7c6c355dd07f3c834867b90ae9f3fe7a785c308fe311`  
		Last Modified: Wed, 21 Oct 2026 21:29:02 GMT  
		Size: 30.9 KB (30948 bytes)  
		MIME: application/vnd.in-toto+json
