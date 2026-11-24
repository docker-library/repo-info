## `redis:8-alpine`

```console
$ docker pull redis@sha256:5af80107c1eeecb484a2269b80a26d12bfa6521787da4663bd9f19f60a163483
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

### `redis:8-alpine` - linux; amd64

```console
$ docker pull redis@sha256:bf33e63600ae8240c9f8b553c8fae427550dae17042bc24b06bbe06d3057c9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42958118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78195281e51dbd6fe9bb58e1d804282afa7092b7f6eaa2312423729f56276c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:59:49 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:59:50 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 19:09:58 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 19:09:58 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 19:09:58 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 19:09:58 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 19:09:58 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 19:09:58 GMT
WORKDIR /data
# Mon, 23 Nov 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:09:58 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 19:09:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68e0ea8556a9098e6fcb53ec788db36082b639fba815840b733ec20faf06d3f`  
		Last Modified: Mon, 23 Nov 2026 19:10:07 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64e3b7194b8dfd66aaaeda0a2e76f74b27f609c6dcb99527373c2f71c02990a`  
		Last Modified: Mon, 23 Nov 2026 19:10:07 GMT  
		Size: 201.0 KB (201042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1165e7f2c7824dd9c803b7e1e90ef6fd22e3a2644e54e501b645f67bffe2478c`  
		Last Modified: Mon, 23 Nov 2026 19:10:08 GMT  
		Size: 38.9 MB (38901224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723fdea02639229716ceef77f3e0ecc1d7d12d4378ffdc19b25f40559929b855`  
		Last Modified: Mon, 23 Nov 2026 19:10:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7089b9810dced32291bb0dd342d53991841140064a2c2fe3f1599c6abc649b98`  
		Last Modified: Mon, 23 Nov 2026 19:10:08 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:a32e6989882c9ebf496844471472146a9850d53fa3e82affe6b1402eebddd75a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.0 KB (502016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cae2b7bd31457f6c0172b2f65c9884eb17920fd26781ee7d7363a909d2cedc3`

```dockerfile
```

-	Layers:
	-	`sha256:5735c588045c0e5ff1136811dd7b2df86c3405da6e18d110a0d690deb8f2a1d5`  
		Last Modified: Mon, 23 Nov 2026 19:10:07 GMT  
		Size: 470.7 KB (470718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:742ece1012676c0c28987b045392fa65aafdef41968c371b76749477409c142b`  
		Last Modified: Mon, 23 Nov 2026 19:10:06 GMT  
		Size: 31.3 KB (31298 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:0deaec8e81565444c108404ed4541db3be1aae135b7c8f0af186ff22398fc78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20178366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721a15c9ae1b3db750f39e413337e44e520ed5c6bd744cd7ed904ae1cdda5b3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:56:00 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:56:01 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 18:57:33 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 18:57:33 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 18:57:33 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 18:57:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 18:57:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 18:57:33 GMT
WORKDIR /data
# Mon, 23 Nov 2026 18:57:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 18:57:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 18:57:33 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 18:57:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb06168682f50f7e086a2edb3fb34385685f55d96ebce083828798820ab224f`  
		Last Modified: Mon, 23 Nov 2026 18:57:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321f0fa0ea9d5d0340eb071a839135a876da13b9b3d818c05c787fd1ccb79a95`  
		Last Modified: Mon, 23 Nov 2026 18:57:39 GMT  
		Size: 201.3 KB (201318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520d89e534fc95ece7c192c2ab94195b5ce0cf87af5a80ec3b3672c7c9be1ecb`  
		Last Modified: Mon, 23 Nov 2026 18:57:39 GMT  
		Size: 16.4 MB (16415537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b677ae18e9155672c61bce665ac01776332e2b39d3614712b73ddee2d421a5`  
		Last Modified: Mon, 23 Nov 2026 18:57:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8ae6d48af41b36e3a5a1dc325114aefc98ed8925cfe13892e95c9411f2f86a`  
		Last Modified: Mon, 23 Nov 2026 18:57:40 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:7654278ffb2ccd79aad1962b0e0b1776c6918906c4397431776ee0f9c92e3537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.2 KB (31237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fff12a8f2b2ca3a527f8b056af58521ebacfc8883526c746ba76fa679cefe13`

```dockerfile
```

-	Layers:
	-	`sha256:8cdedab07c485b4de02fc7b799152b3eaf50b2c35952a2175291ed565b0b33a9`  
		Last Modified: Mon, 23 Nov 2026 18:57:39 GMT  
		Size: 31.2 KB (31237 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:0a58f252d3ffdd3f584a54e50422b731d605786706139534ced8ed465dda3689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19641323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409af5123db82ca6169d5ac23cdc23a02bcd6def732db8c4d676eb0fb87a1e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:55:54 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:55:55 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 18:57:27 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 18:57:27 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 18:57:27 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 18:57:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 18:57:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 18:57:27 GMT
WORKDIR /data
# Mon, 23 Nov 2026 18:57:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 18:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 18:57:27 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 18:57:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce56f8813b6db02a12bfe11ce773680a8406e01c4b9995c03bc9089280bc322`  
		Last Modified: Mon, 23 Nov 2026 18:57:34 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6892aeed45e8264d935c607b317d45f163eaa8053213baf86b6b6c4832381f75`  
		Last Modified: Mon, 23 Nov 2026 18:57:34 GMT  
		Size: 199.6 KB (199634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc99e65edc555df6059458e7046673f5cca52295263358203f4da9085bcd42a`  
		Last Modified: Mon, 23 Nov 2026 18:57:34 GMT  
		Size: 16.2 MB (16171600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11a7447279282f0d37f71633549d0c4e4d5e77240d9dc32ba6318c231008aa8`  
		Last Modified: Mon, 23 Nov 2026 18:57:34 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf08c853ae953a00bb1d1a5cda898c14326e010c0e911bd32d2b67fbc543628`  
		Last Modified: Mon, 23 Nov 2026 18:57:35 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:06df79cb8d9e2ccc3e3b6722485b7101130e847310fb492cf3a047c1f50c4147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.6 KB (499600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76bdc5b1f9ce2bdf3eae16ec51f95896a8a32d743e4cb4fdaefe3541d4af7893`

```dockerfile
```

-	Layers:
	-	`sha256:e3ff04fde339c2ce1350f8c2859d365ce39cba21971e0b8fde30265cbce5a7e3`  
		Last Modified: Mon, 23 Nov 2026 18:57:34 GMT  
		Size: 468.2 KB (468152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f5595c31be3c9bfdb61325d9501ace18475bf22386b4f6380115c8a62cdad31`  
		Last Modified: Mon, 23 Nov 2026 18:57:34 GMT  
		Size: 31.4 KB (31448 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:95f35d033e2a07b986450bd9c6191fd5ca04adf3a9ff1ba815f087059ee120c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42503917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0c453ec2f712af2dd84861feb7ac1d3a082f21ca08a8dde52d5d1e1bf69e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:59:35 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:59:36 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 19:10:45 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 19:10:45 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 19:10:45 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 19:10:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 19:10:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 19:10:45 GMT
WORKDIR /data
# Mon, 23 Nov 2026 19:10:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 19:10:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 19:10:45 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 19:10:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acfe44bd113929daee2a517b227bdfd52971cd56183a1ef590da126ec5902ce`  
		Last Modified: Mon, 23 Nov 2026 19:10:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26a0e1af77f7d0ccdf70b1c394271410a5e00b7cc35a99b8c23a034be7f5f5d`  
		Last Modified: Mon, 23 Nov 2026 19:10:54 GMT  
		Size: 203.0 KB (202986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41fc580f2c0b81e644af4f7ae2b58a2ed152d65a4de0586768e61c4d45fc35ac`  
		Last Modified: Mon, 23 Nov 2026 19:10:55 GMT  
		Size: 38.1 MB (38107446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb493a634c13dd007d4e3a0da572194c2207a8f24a6b025584636051a5ff86ba`  
		Last Modified: Mon, 23 Nov 2026 19:10:54 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93151587e43908e71e339ec2c2e0d2a97adc18d9edbb2853e38caac28c91eeea`  
		Last Modified: Mon, 23 Nov 2026 19:10:55 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:90b09919f9ba465d2c38b523a8acdb36b2ecef379c4174f4015c1d9ae5952e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.7 KB (501670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5909772e68df06d05dae6d9052cc8ad5ec39e3a112e3c2395ae8d9e8c1f05ad`

```dockerfile
```

-	Layers:
	-	`sha256:8c1a91ae399c765e0b230149e79c949d8d6e1583c842bf631f62ca2063734532`  
		Last Modified: Mon, 23 Nov 2026 19:10:54 GMT  
		Size: 470.2 KB (470172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49fe7067a896df4d628fd4c802ccebc08376719df69cbe880f358972f6d5d2a9`  
		Last Modified: Mon, 23 Nov 2026 19:10:54 GMT  
		Size: 31.5 KB (31498 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; 386

```console
$ docker pull redis@sha256:7ab9a0fea4bebf8c07ac803a7bae8dba27e80a8eb6ed1731910732f21daa9329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20025573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5eb3ebce141d982b81818a989b88a22613496d310a530d0126bdb2f5c371b62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:57:56 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:57:57 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 18:59:40 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 18:59:40 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 18:59:40 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 18:59:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 18:59:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 18:59:40 GMT
WORKDIR /data
# Mon, 23 Nov 2026 18:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 18:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 18:59:40 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 18:59:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69239a844445e5376c70baff5b67da177ee1c58bff493055548cebdcb9ec1652`  
		Last Modified: Mon, 23 Nov 2026 18:59:50 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676df7aab719eb9983d8cd46a3bdf69ce1d9c66b6550cfda7ec219e5f11657ba`  
		Last Modified: Mon, 23 Nov 2026 18:59:50 GMT  
		Size: 201.7 KB (201696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17dd9044b8ec5de27eff5d3a560c9c9d17c08b48e35d3639332446f5afa589`  
		Last Modified: Mon, 23 Nov 2026 18:59:50 GMT  
		Size: 16.1 MB (16142031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf893efa662fa23e93b6a69dfcd4fc937210b891f79629a4746c3a7dad908a7`  
		Last Modified: Mon, 23 Nov 2026 18:59:50 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc61f1e8f856cbbf869bd13330a1b94b78809adb68b7953ae0970c6d9a3df680`  
		Last Modified: Mon, 23 Nov 2026 18:59:51 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:8ef086635208fc7222051841be2c17f562c2466bcade5ec46026fc3f93184e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.9 KB (496942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb81c5e7a82871045c54446edf5cbfa0308cfba82f3a903c7be4458f3a6e22d`

```dockerfile
```

-	Layers:
	-	`sha256:277c2c0123237cfa575a7c46df5fe77492705b382f69ac2be6612629cc45cac2`  
		Last Modified: Mon, 23 Nov 2026 18:59:50 GMT  
		Size: 465.7 KB (465699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b0b15b6fbc8763389983c7c9bb2de85d5a1de594f7f964b2d97613f4b470091`  
		Last Modified: Mon, 23 Nov 2026 18:59:50 GMT  
		Size: 31.2 KB (31243 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:faca6b140f7ae740157273dec11895dbd4d94f67f576ec0efd18994b785f57ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21798377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ff63011ccfb370d5efddaa859d9fa29979d76fa6f94b33f75b90783b1e82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:55:27 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:55:29 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 18:57:43 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 18:57:43 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 18:57:43 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 18:57:43 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 18:57:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 18:57:45 GMT
WORKDIR /data
# Mon, 23 Nov 2026 18:57:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 18:57:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 18:57:45 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 18:57:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ab2b950caf51eaf01d8bb18601578332e3e33f23c0a24af37e665af6dfd877`  
		Last Modified: Mon, 23 Nov 2026 18:58:03 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19dc9b9e8ebca1f50628062b67cd670140e80138438c8df37590bbfbe952cde4`  
		Last Modified: Mon, 23 Nov 2026 18:58:03 GMT  
		Size: 204.0 KB (204025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fde4128f4faef03e5d76ad81b1be70f8de4e992354d9f8ef5cfccc06c9b7147`  
		Last Modified: Mon, 23 Nov 2026 18:58:04 GMT  
		Size: 17.8 MB (17772086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10f36c591aa05a20f47be076abf42722d62e4583147ad0c7f94d493b0f7c619`  
		Last Modified: Mon, 23 Nov 2026 18:58:03 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8f28218f23bef20f1a4033cdb24be4f6c171e74a2a3d95bd066bc0b0168624`  
		Last Modified: Mon, 23 Nov 2026 18:58:04 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:5ebbd089afac83a415b19e0c65188ebb3fe1b04a5eb9bfe4c16b687a9435452a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 KB (496522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff4a28aaa73604f0d0bcdc4f821675f6cd80e0ab2fcea80b8662467f74beafb`

```dockerfile
```

-	Layers:
	-	`sha256:754ffa1ad1ea137b43d029b59fbe0806141cb2f835d1548afd65709a935bed59`  
		Last Modified: Mon, 23 Nov 2026 18:58:03 GMT  
		Size: 465.2 KB (465151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46efb6f5172f67461c5a61abd0b4c46e865be316c188b2add67098fddbe75d81`  
		Last Modified: Mon, 23 Nov 2026 18:58:03 GMT  
		Size: 31.4 KB (31371 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; riscv64

```console
$ docker pull redis@sha256:d094fa51a4573775b6cc8847a3e38e7707c8796be502a8e0ba00cc9b5ad1c91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.3 MB (24300434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31744a6cafab0ddb9da03813695a14b974ed44c5baa25f15d1b896f3e72988f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 18:57:25 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Tue, 24 Nov 2026 04:33:35 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Tue, 24 Nov 2026 05:06:36 GMT
ENV REDIS_VERSION=8.12.0
# Tue, 24 Nov 2026 05:06:36 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Tue, 24 Nov 2026 05:06:36 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Tue, 24 Nov 2026 05:06:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Tue, 24 Nov 2026 05:06:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 24 Nov 2026 05:06:37 GMT
WORKDIR /data
# Tue, 24 Nov 2026 05:06:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:06:37 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 24 Nov 2026 05:06:37 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4dc669a328ca1b3b016467665dddd042f74bc086d2544749f327d159835b8`  
		Last Modified: Wed, 11 Nov 2026 19:32:01 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c5d19ff61ce472002431aa47bd7c62acaad12a98ee38e68dafde3a59482e02`  
		Last Modified: Tue, 24 Nov 2026 05:08:09 GMT  
		Size: 201.2 KB (201225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fa7d9b25dc8530f32893bc002712daa725f5417ae236044c0bf3db9dc05447`  
		Last Modified: Tue, 24 Nov 2026 05:08:12 GMT  
		Size: 20.5 MB (20515816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beef6919391933647ad043bc4943e1c6a388c864d5e18a9ad25a71d92f81c3e`  
		Last Modified: Tue, 24 Nov 2026 05:08:09 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b515fbafd054222513bc61a377bb60f8985e66ff94c5927bf87936b66095da22`  
		Last Modified: Tue, 24 Nov 2026 05:08:09 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:76c8bc1f23581b674299a7c1db213c45b736e84c6ad8af6124d10c213285f71b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 KB (496521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c673921e1c2eab5626164e0d0ec885e413380c071fabd0dc9cfccc42ad75a50`

```dockerfile
```

-	Layers:
	-	`sha256:0cd1c74f1d4ec58325d609ee79989982987c5aa1e731eac8d7378e0137422b3c`  
		Last Modified: Tue, 24 Nov 2026 05:08:09 GMT  
		Size: 465.1 KB (465147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69e8c4c36a0eb7af07ab2d88faac2e3791a289856beaa9f433a64d6370f49cc7`  
		Last Modified: Tue, 24 Nov 2026 05:08:09 GMT  
		Size: 31.4 KB (31374 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-alpine` - linux; s390x

```console
$ docker pull redis@sha256:7920880049a600f92b7ce7dadf0ed0a3fe5418ab96969361849e71011d050d49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21103674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47febfe36aaa3630bb8f9dd3ea765392bcc519652207e0e3a703876da873515`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 18:55:21 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 23 Nov 2026 18:55:22 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 23 Nov 2026 18:56:42 GMT
ENV REDIS_VERSION=8.12.0
# Mon, 23 Nov 2026 18:56:42 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz
# Mon, 23 Nov 2026 18:56:42 GMT
ARG REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
# Mon, 23 Nov 2026 18:56:42 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		zstd-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 23 Nov 2026 18:56:42 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.12.0/redis-full-8.12.0.tar.gz REDIS_DOWNLOAD_SHA=e9d9fb3a6e62960f064f5281fcb42e99692d2c420701d151fbe4327ff57e30bd
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 23 Nov 2026 18:56:42 GMT
WORKDIR /data
# Mon, 23 Nov 2026 18:56:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 18:56:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 18:56:42 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 23 Nov 2026 18:56:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9906c91104a3d4bb31ccbc048ea3a6e77357a0300554262719996dce7c277efd`  
		Last Modified: Mon, 23 Nov 2026 18:56:53 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433d85560cb9eb8ad80ba3a8a73f604f2f05648528e82a5040def14942e4b04c`  
		Last Modified: Mon, 23 Nov 2026 18:56:53 GMT  
		Size: 203.3 KB (203294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482d619b92635801d87c44c15bb12dbe29609d87d61f3688c490eca26b01c58d`  
		Last Modified: Mon, 23 Nov 2026 18:56:53 GMT  
		Size: 17.2 MB (17178773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620bc03421fc7e1efc068a5eba9a6ee662ff697ba6471a2e68821fa28f4f75a3`  
		Last Modified: Mon, 23 Nov 2026 18:56:53 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1936385f2347d79b4e5c324c33b006c5b3f9d8a9021fc295a169659b2b81034c`  
		Last Modified: Mon, 23 Nov 2026 18:56:54 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:74cfceba9db6694ce973f274aff30366ee6934d28bc88c84c8ca5aa85e11d167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.4 KB (496394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734e1074b312de4c3efe747df64a9232231c76335d0086077ecd78de4d7a4941`

```dockerfile
```

-	Layers:
	-	`sha256:2b88dd504606f61237240c032ad9472db03042865e551b9875100a0e3d556f7d`  
		Last Modified: Mon, 23 Nov 2026 18:56:53 GMT  
		Size: 465.1 KB (465093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e4b6793231977452a9e62790ec592f4ec479890526693f039d2b2dc728273e`  
		Last Modified: Mon, 23 Nov 2026 18:56:53 GMT  
		Size: 31.3 KB (31301 bytes)  
		MIME: application/vnd.in-toto+json
