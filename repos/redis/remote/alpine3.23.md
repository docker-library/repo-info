## `redis:alpine3.23`

```console
$ docker pull redis@sha256:8096655e437712b07503796fb64d81359256cfcff0ab29d95a7da72863786efb
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
$ docker pull redis@sha256:465aff338d817971674ff1ec3c0d59182e2b687018e87bf94b6e1491d0bb79e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37625976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a597386e6d2ef50b536ae3c77aa77e8c3772631abe949882f9f2a7d1a3065b79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:09:18 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:23:12 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:23:12 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:23:12 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:23:12 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:23:12 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:23:12 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:23:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:23:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:23:12 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:23:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1482bef073765a0b9e1b5e9808b583886ba6bb50e1e66276bf3e02b75ea9c021`  
		Last Modified: Fri, 24 Jul 2026 17:23:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21eb5d520fdfc6a3ba1864f953d649c39001569acebde542b49cbb5a5ccd08d0`  
		Last Modified: Fri, 24 Jul 2026 17:23:22 GMT  
		Size: 196.9 KB (196893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7875107c0dd781051e5f7745117a2062fb86d534b8275cf227a36c84fa27cce`  
		Last Modified: Fri, 24 Jul 2026 17:23:22 GMT  
		Size: 33.6 MB (33581479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6412740623291710b71ff0752852115a2be7c645c9fb69f095453932481b84`  
		Last Modified: Fri, 24 Jul 2026 17:23:21 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0e94228b6980742f3fd389f009bb94a213fc405b08013ef6b6b8adb277cb2b`  
		Last Modified: Fri, 24 Jul 2026 17:23:23 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:c6d543f692d0c548f38d4aa5aaf88398789ed47bce3650ddc995ad3cf5779823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.9 KB (498941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1906ad951f30899fc04038e13408d20f72d6fe57df5389d2be0573ead0e4dbf`

```dockerfile
```

-	Layers:
	-	`sha256:e42cdff79175fa30ae6af541c42d1db8a7438bb8f3e92d6f7fbf11ff11974c79`  
		Last Modified: Fri, 24 Jul 2026 17:23:22 GMT  
		Size: 467.7 KB (467661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89c6ff7bc393788d2575ae59ce8b5783da4bd306981f56c91c3d8c7f6b4ce15e`  
		Last Modified: Fri, 24 Jul 2026 17:23:21 GMT  
		Size: 31.3 KB (31280 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; arm variant v6

```console
$ docker pull redis@sha256:a587dfac1a06194b028343b02463310572e4ce03fe6749050a73ab711aeb9194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17661334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817b423a822e3bde1364079de46890c30d7bc2cf71214a32c242c955b88567fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:08:45 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:08:46 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:10:14 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:10:14 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:10:14 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:10:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:10:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:10:15 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:10:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:10:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:10:15 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:10:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36c01c45d6645a0835a40df9422cf94dfe518d8fd4b1dd11b2aa59f16e4f2e6`  
		Last Modified: Fri, 24 Jul 2026 17:10:20 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf9aad87c3e4f97d90c7a1479cd69e6d43bd2f6d11e8b32915533d17b3952b2`  
		Last Modified: Fri, 24 Jul 2026 17:10:20 GMT  
		Size: 197.2 KB (197183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a942c5338bbde57e78f25d792ce35c7a7ad58b8971d1883e85e4442dd780aad1`  
		Last Modified: Fri, 24 Jul 2026 17:10:20 GMT  
		Size: 13.9 MB (13908367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f07bd56dd2763f7da4f1438e8390794b75417908a70fcc7c7d38ef21399919b`  
		Last Modified: Fri, 24 Jul 2026 17:10:20 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2275aa3fbdd3cf4e4a275dccbdfa176144d1c70f277df2b830e17dfdf950436e`  
		Last Modified: Fri, 24 Jul 2026 17:10:21 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:29ce2fe037d0d2bad302c4af07eb084b3fca1a608f433d55c5c136e5cfb9ab76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.2 KB (31220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc86a093c4f709ab418b177cc9f03fc153971f40e33ff643f6d889cb088bb06`

```dockerfile
```

-	Layers:
	-	`sha256:eab83ba24932ba7c9d11f95dd752b707ff14f6d1c912146645919ee63ade7e20`  
		Last Modified: Fri, 24 Jul 2026 17:10:20 GMT  
		Size: 31.2 KB (31220 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; arm variant v7

```console
$ docker pull redis@sha256:cc443359136dde31c292f57a6c9a6199e8bd2482ede29fe662b527106157d027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17193033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e7407edbff66996dc0a88bd539b56431b58b0c71154d51147aacd37ea7ac03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:10:50 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:10:51 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:12:20 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:12:20 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:12:20 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:12:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:12:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:12:20 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:12:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:12:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:12:20 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:12:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd27f6955410446752094b140e9d5fa84bb93342b68e4b8cfe2ef67089a46a03`  
		Last Modified: Fri, 24 Jul 2026 17:12:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a4ccb25fa9384fdf1965f34a5a822cf5ec5903f94c231bd237d964e58944ae`  
		Last Modified: Fri, 24 Jul 2026 17:12:27 GMT  
		Size: 195.5 KB (195519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2437515f729df0bb929f6a7a397c277d5d91043b8781df94e17f385c06908ac7`  
		Last Modified: Fri, 24 Jul 2026 17:12:27 GMT  
		Size: 13.7 MB (13732473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504912777a76bb36c8c0096d94920704f7b7377fef9a36d4037c796384a76bf1`  
		Last Modified: Fri, 24 Jul 2026 17:12:27 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2aad5eae7f622b2b39990cd5c59171826afca215359e3f635afb288f5b0be9d`  
		Last Modified: Fri, 24 Jul 2026 17:12:28 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:f21dbbf55f9155ee2faf1d4971a48e05f9c35e738a7b50b476e387ed6d050028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 KB (496523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c352c6b404dcd892850d06f0eda84519b438acb3e7a5c2055903398ebcebf092`

```dockerfile
```

-	Layers:
	-	`sha256:2f250334408e6f16903cb00af98c673b28771b01b7645bc2ce01aa98d571fef0`  
		Last Modified: Fri, 24 Jul 2026 17:12:27 GMT  
		Size: 465.1 KB (465089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37cab572c157357a09dd6666282926771d435053eb06deae4186b4dcdf9dfeca`  
		Last Modified: Fri, 24 Jul 2026 17:12:27 GMT  
		Size: 31.4 KB (31434 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ca5075df9552da2423c20c691a0208d60106f2ea71b47406d52c396bf0a6bd65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37283295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b6608ced2c02ed2a55e36a5774133fffb867ed1a072a77969451fe5faed728`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:09:02 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:09:03 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:22:03 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:22:03 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:22:03 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:22:03 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:22:03 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:22:03 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:22:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:22:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:22:03 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:22:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d8f3025e7ab8c867aec9b42fd4f2690a2d35b51b37f9058acc2cb89e06e507`  
		Last Modified: Fri, 24 Jul 2026 17:22:14 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c76c725c1aa6e0fc4e800e7d85dba870d00d59541ce76f9808a51bec7db428f`  
		Last Modified: Fri, 24 Jul 2026 17:22:14 GMT  
		Size: 198.9 KB (198948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978f3ed673926f8bf8d2293460431010fae8b1e1f11c29d178c9f9c8b0534bff`  
		Last Modified: Fri, 24 Jul 2026 17:22:15 GMT  
		Size: 32.9 MB (32899302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07553f34b37bbb5ebefb130397108f22d1d0a17b84689d1b36ed0ae7bdfca088`  
		Last Modified: Fri, 24 Jul 2026 17:22:15 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637a8445ee0719816568d70206d9596af1417e801f9b86fa970c203fb5cc996f`  
		Last Modified: Fri, 24 Jul 2026 17:22:16 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:5c377e78eafa2df5e9a40e9be12d3a2e55e3fc0636a9399235b4855a816c143b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.6 KB (498593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41c4cdc222309e87c674a930ccfe95f39c7ecb55de83d0ef91326535356dc79`

```dockerfile
```

-	Layers:
	-	`sha256:21c5d20d164adad7d4d0d8e1753f9c2ef3898a9e0217f5506e8642f064b82c6a`  
		Last Modified: Fri, 24 Jul 2026 17:22:15 GMT  
		Size: 467.1 KB (467115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a9f69ca8625913ee7e9304da87aacfa571bbe17104d9e5d77af323eaeb5bce8`  
		Last Modified: Fri, 24 Jul 2026 17:22:15 GMT  
		Size: 31.5 KB (31478 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; 386

```console
$ docker pull redis@sha256:6990ed5f04d5a6c27bf996e1245374e9eeea5eaf08344bc2ce6b5fff5ec0b6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17475878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fb587b96868d77813a43e6813d3d14ee128e2bbf2dc623f74f6bf8dc545805`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:09:16 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:09:18 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:10:42 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:10:42 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:10:42 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:10:42 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:10:42 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:10:42 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:10:42 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:10:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60a37f17a3be213ac960999e01c298256112ee5ee27bfad3b83a219c8309fc9`  
		Last Modified: Fri, 24 Jul 2026 17:10:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31703a8b74a1e03e4ad0d961d1c2778ce41185f54f02d2586b073486244579a5`  
		Last Modified: Fri, 24 Jul 2026 17:10:49 GMT  
		Size: 197.5 KB (197521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81f72120a300009ce09a7191ee60389cbbf4f13410f13209315c6f477b91915`  
		Last Modified: Fri, 24 Jul 2026 17:10:49 GMT  
		Size: 13.6 MB (13607179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac2effe2774cf2d33dbc0970c9e72d65bc316e6ace99f2d37fafc357054919d`  
		Last Modified: Fri, 24 Jul 2026 17:10:49 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c081909b86f124a4117415ccb41a27627c5fabcb6dc39231f512769e9b9016`  
		Last Modified: Fri, 24 Jul 2026 17:10:50 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:1a505a9c336277aa7c93bce5cceef7a85afb8085ae0c405164b3445eb762bd0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.9 KB (493862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bb69383129f1f62d8cdbeb61bbc8ed18eea64bdeebab098334a1d52b4201d9`

```dockerfile
```

-	Layers:
	-	`sha256:a56c10c9ccebbc48b6136edb3b857f69805508e0d7da4396754d4d85a63eefa6`  
		Last Modified: Fri, 24 Jul 2026 17:10:49 GMT  
		Size: 462.6 KB (462636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8c8b6ae45090ac88f3e94ae4272e8ed000f53cc8c53ee85b24dca2cc0ac658`  
		Last Modified: Fri, 24 Jul 2026 17:10:49 GMT  
		Size: 31.2 KB (31226 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; ppc64le

```console
$ docker pull redis@sha256:29dabdb07e07fc341b9066ded86d66e92a36b0b42bbcf8311d889dbafe13df03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18998798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a55d27561e9f23de38cd79e75e7bb4f414a40623bedc128debb4fd258c5a1dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:07:50 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:07:52 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:09:53 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:09:53 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:09:53 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:09:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:09:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:09:53 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:09:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:09:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:09:54 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:09:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a691b904fb01bcf467f089f6d1b0fccdfc499ca36018d7ddc25e9d897144223`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fb10537f584d891c4da9de0f7e5357287bd650ffff36e3b3d2e3e641d8636b`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 200.1 KB (200067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3232fd8ec6210e9ad6ff150e5dc95383b195c28db9514f65792ebd443a58e8f1`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 15.0 MB (14983240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a19beeddd42d1e04e2261350c7ea42214e0ba9dba835eae451ff8877638a232`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9bd2afe5f75a10b1484ea21c789915d3e82933b2ce0120908ac652eb6c62cb`  
		Last Modified: Fri, 24 Jul 2026 17:10:11 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:2b7f64e2e720270d47a12f7a26550d2639721313e924a1cb1ff31277b8845712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.4 KB (493446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d77de29690de45c353dc41210b3c44ce173d25ed9847bf695c7603785bc25c`

```dockerfile
```

-	Layers:
	-	`sha256:2a2ed2925e79e4c0af0608b65a9cd0ff45f1441ebe0e9966d829e5e9991b1b5d`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 462.1 KB (462088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ad85893fec20b050a5ab7add8eee651f2d3a139f08c9f578fba0d47c22b1409`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; riscv64

```console
$ docker pull redis@sha256:ebb4ee6c1741ba32e14c47b3000d3564df8231d4da2ee026601aa51f7772a9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19298605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8f77dc6faca7bcb4bc614d78a62cb6f85719841d4c7810e11bc8c33b8e7d7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 21 Jul 2026 18:06:43 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 22 Jul 2026 14:01:55 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:37:02 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:37:02 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:37:02 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:37:02 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:37:03 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:37:03 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:37:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:37:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:37:03 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:37:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498c3c4332b4f72a28bd39a6589fc9347891d25f2dd4cb13b3835b48244015fe`  
		Last Modified: Wed, 22 Jul 2026 14:32:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59a3ef5d9d0e30c668360a624c5c6ba6503f4598dd0c631fafaffc738f32767`  
		Last Modified: Wed, 22 Jul 2026 14:32:15 GMT  
		Size: 197.1 KB (197128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b4d4f123ecc7838e1093bd8797a61361838b74b9989052c9354575bcb89b2c`  
		Last Modified: Fri, 24 Jul 2026 17:38:26 GMT  
		Size: 15.5 MB (15525047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0493914ccc1622c6c5c4cc59bb94e3b935fd370bdf5ca74fe5bc47e6814875`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60db18460efc96d8d3456cd94d3aa1f8eb9a3f7a2078a00b676382d842f192e`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:2bdad6803ed6d3bea757f931e66fde8bdb2ae47e2a2690cf6126108ad2f97535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.4 KB (493442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4cb0d5c1730e23a2b17b4956f3b477c9a97090093a8cd4d61fb232dbb54dbe4`

```dockerfile
```

-	Layers:
	-	`sha256:2a38e27dc0c06f31e7d76c148fecff587ebbfbd9c0fa492146ca92aec463af5b`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 462.1 KB (462084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a531243e473e78560637f260bd891af5535447b5cb952f7458ab96e84f42561f`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.23` - linux; s390x

```console
$ docker pull redis@sha256:c4ebc39479f1c87384578a3d73cd2eef76971ef21e5eca106f2541c547fed3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18296467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca7314b73fc14fab927054cfcc7e269e98500e2435337033f3fe149135114d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:07:49 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:07:49 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:09:56 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:09:56 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:09:56 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:09:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:09:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:09:56 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:09:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:09:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:09:56 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:09:56 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb942271d848ec217363b55f47204a959a798027a1a8021f44cab62b59b4e1b`  
		Last Modified: Fri, 24 Jul 2026 17:10:07 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929931d8b976d8d30c7f0b41cee355605eb507e6ec00243396e38f22de9b41ca`  
		Last Modified: Fri, 24 Jul 2026 17:10:07 GMT  
		Size: 199.2 KB (199164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c0278e842db7ebacc65747f2e34f803a5cd41df7e0b1b228cf619246004fb8`  
		Last Modified: Fri, 24 Jul 2026 17:10:08 GMT  
		Size: 14.4 MB (14386865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b0ce4ef7662f12602e335b857c608dbd0df70a8e919c39435caa4de3e52b03`  
		Last Modified: Fri, 24 Jul 2026 17:10:07 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5895cf3e8224a5474e4314be62eca451bf4bcb02ba5929780f8a5f713b2df797`  
		Last Modified: Fri, 24 Jul 2026 17:10:08 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.23` - unknown; unknown

```console
$ docker pull redis@sha256:49a672bf1d12ba857209666fb9f7d0ae7a02ffe0f79341cc02581748c8b8ec4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.3 KB (493311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7999fecf1df5d2633b05f080cb4942033531fba03a33ef3360011ff9e51a1b64`

```dockerfile
```

-	Layers:
	-	`sha256:d75da5c1de32e6b97ef64bb870df71f507089712adb8c9fe71a99ed49513386b`  
		Last Modified: Fri, 24 Jul 2026 17:10:07 GMT  
		Size: 462.0 KB (462030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2efefa194f244bdb2145e7497f380d4b94eba9497bb3d8b23e93a415c49a094d`  
		Last Modified: Fri, 24 Jul 2026 17:10:07 GMT  
		Size: 31.3 KB (31281 bytes)  
		MIME: application/vnd.in-toto+json
