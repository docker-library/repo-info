## `redis:8-bookworm`

```console
$ docker pull redis@sha256:0394897c939cf67acac084b1b96c984ac0c4b92a85b4a8f06a245ff11f0a6c22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `redis:8-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:c13389a69fa54b26002fb052b062be6175f915e314d38969f7293ffc27b02d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52851620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b7b321afaf33aec617ed42b5b5429dd173b01e2ea86df9b24018bf1974c666`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:31:13 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 07:31:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:37:54 GMT
ENV REDIS_VERSION=8.2.11
# Thu, 05 Nov 2026 07:37:54 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Thu, 05 Nov 2026 07:37:54 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Thu, 05 Nov 2026 07:37:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 07:37:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 07:37:54 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:37:54 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:37:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:37:54 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 07:37:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0fcbfbfd13e32222986f5a9e83d9646ef88240d8f40afbeabf96a228dedd74`  
		Last Modified: Thu, 05 Nov 2026 07:38:03 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de401d84088560f6ab08cf422aefa515b24b8703c1508ec510775e9beb037888`  
		Last Modified: Thu, 05 Nov 2026 07:38:03 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac27e7330dd4adddbfdcb9a2b408ccc96c99ca294643527771bed3452645a2ec`  
		Last Modified: Thu, 05 Nov 2026 07:38:04 GMT  
		Size: 24.6 MB (24599422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba71901fcefdd8e41fb3d4522800fa44f2fa9b73769bce1c4281defee51655c`  
		Last Modified: Thu, 05 Nov 2026 07:38:03 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0194a72debd6e82115960283d6727aff906037f0a667342d955f30bbaf3857`  
		Last Modified: Thu, 05 Nov 2026 07:38:04 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:cda7ead00643e624e4f8958796b7bf7420e87ba34e29b3c2aef0d5c58ff8dacb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea38f7f14d5a176e6c2d9049328d97e91e3ff84a9b01d3e38b2d59b1239125b`

```dockerfile
```

-	Layers:
	-	`sha256:b593c8993884680ab6e44555a697c257447139ee24d8dbd716d1ec1cf84c2c0c`  
		Last Modified: Thu, 05 Nov 2026 07:38:03 GMT  
		Size: 2.4 MB (2373168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4944298634311e4be2bf4354471fe188b6b9e954570cc9aa2875e5ca11db256f`  
		Last Modified: Thu, 05 Nov 2026 07:38:03 GMT  
		Size: 27.7 KB (27724 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:55a39022eadadd5ea95fa942d2fd4eb365ce201c83895f4951c745cec4dab156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38974721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88ac49858facc83a485a38d79d42ec3ac6be0ce1a7594560cf9b48c73dc4b3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:16:16 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 08:16:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:17:15 GMT
ENV REDIS_VERSION=8.2.11
# Thu, 05 Nov 2026 08:17:15 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Thu, 05 Nov 2026 08:17:15 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Thu, 05 Nov 2026 08:17:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 08:17:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 08:17:15 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 08:17:15 GMT
WORKDIR /data
# Thu, 05 Nov 2026 08:17:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:17:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:17:15 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 08:17:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7289f56e946de1101f8db0eb9da069b939f30253771548b665337e41cda46a43`  
		Last Modified: Thu, 05 Nov 2026 08:17:22 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad27de54193b949dfca201b649ace99e40d909820193f22c29d7f4b5eec0ad`  
		Last Modified: Thu, 05 Nov 2026 08:17:22 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fdafc8e623a16941a63c43c3fdd293be7001bc0daecf916d1a707bdb193922d`  
		Last Modified: Thu, 05 Nov 2026 08:17:23 GMT  
		Size: 15.0 MB (15009153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872ef11b21424870a33aa8a1fbf6556a66deb6980061308c1b95a2eebfae2c93`  
		Last Modified: Thu, 05 Nov 2026 08:17:23 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf102aabb81bfa45cbad529dc226b17149c89fdf8b0cb523408a8b12bc44e3f`  
		Last Modified: Thu, 05 Nov 2026 08:17:24 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:c4d73a6e1937aa929e32ac540b57124740943cf5c9ff4cc1ed5bba57374216e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7b789a074799b8d5485dab4f9d8ba2fb83f0725a491ad7f2cc781232ed79cc`

```dockerfile
```

-	Layers:
	-	`sha256:e352314084206629625fd301a2728138baa3b627f55f594bde3a8a386a2f1382`  
		Last Modified: Thu, 05 Nov 2026 08:17:23 GMT  
		Size: 2.4 MB (2375405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb1dda4a747a54ef47ad9307ca4bd17941425fe74dc0d2506c0eaa99a954b3cb`  
		Last Modified: Thu, 05 Nov 2026 08:17:22 GMT  
		Size: 27.9 KB (27859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6cabc3cc474cb60b00e2a664ffa6ea08ea7486ef6ae3a6cf8e912e3287077a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52310572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6ef18782531ebb972072fed5b0a09b2f9d3fccef288ab1cadaeb0ed49b59e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:34:27 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 07:34:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:08 GMT
ENV REDIS_VERSION=8.2.11
# Thu, 05 Nov 2026 07:41:08 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Thu, 05 Nov 2026 07:41:08 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Thu, 05 Nov 2026 07:41:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 07:41:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 07:41:08 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:41:08 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:41:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:08 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 07:41:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39fae047fedca45eca97b3e8750fb1eecf5f7c82bd908a228259a7d0986d2caf`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829f227fea85e1f209f9f5f731a9658ce362a30592f13a81211015f3b09f8c66`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8481a1cb6f89fc1b847e69b1bf070524ec5f7208e4844c65a66291a0b74d4a`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 24.2 MB (24161995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bd45cbda0efeefcf4ee08710c1aeb51fdd0f6699fff742a9021b6704d3d382`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225235cbf82927e415be18a451c8420f3b16b7bf3fd4d31350947dfd4540a13`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:5178bf1b826ca5f39ca855aa0329ab0371097ccb4be45fb8a22cfcc880527619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b09c88f4b816dfb5d402828523374c515d374b162dad372fe5a830a3685d138`

```dockerfile
```

-	Layers:
	-	`sha256:4755e6a3795a1d98a1f63be567d6d01520ca59176e8d9af0044aa18cc72ffbe8`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 2.4 MB (2373449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89bc980447ddf4aa8a033a0726ab317acd3fb155901a0429b66c77b07e9de269`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 27.9 KB (27897 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; 386

```console
$ docker pull redis@sha256:1db9fe27adb58b167d85dd4ba95b76bb0f0832c605c27426e64d3d0fe18b9160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44423347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f73c56ff2bbf47a4f450974ac3a97bbea767ddc2d0fb99143a82add72c2e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:39:58 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 07:40:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:53 GMT
ENV REDIS_VERSION=8.2.11
# Thu, 05 Nov 2026 07:40:53 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Thu, 05 Nov 2026 07:40:53 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Thu, 05 Nov 2026 07:40:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 07:40:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 07:40:53 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:40:53 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:40:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:40:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:40:53 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 07:40:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fc1cd612b8de714be7139834f4d171a52d5d52cca8c97289e2ce1467aad478`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d1d8cecbb3f2f4b6c8bae29286cc14950a8b90e86fd2a5c706a1d02bcd6626`  
		Last Modified: Thu, 05 Nov 2026 07:41:00 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fc66b3f125364a8ab346eb671b9f38392e97c25291edd61417657cf053a92d`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 15.2 MB (15179924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27629b41d77170a7d406bd87372c4fe77a03dc8b6844b3fdae5661b37a949603`  
		Last Modified: Thu, 05 Nov 2026 07:41:00 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ddb0c3d03bd4e4a22b823e1d7e52cc95538d5980d040cf173947f3b2f76599`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:65d5f021266374f98590a184c57e899c612aaa23117dcc89f559013e8155065f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5893f9a8b5cbb717abb5fc47c18f0db27422125a269e3b8a04fa3376bad4c199`

```dockerfile
```

-	Layers:
	-	`sha256:84ece779d362e52ea89ae01f7af2a8b1a14a7f4591677732fd9161d0e904252c`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 2.4 MB (2370341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae1e443643404e2d64856eb8b420e46134e467f0346f55a47001f074140740e2`  
		Last Modified: Thu, 05 Nov 2026 07:41:00 GMT  
		Size: 27.7 KB (27676 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:f0b6538dc8293d45ec286c849e6a1caa4fe0cae6e7fee629552e227305e62045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48949114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34b59c22b05114c4ca69f7a931c74861cc318875d7cbb7cb0f98e2cb15ae8aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:12:48 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 28 Oct 2026 04:12:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:14:28 GMT
ENV REDIS_VERSION=8.2.11
# Wed, 28 Oct 2026 04:14:28 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Wed, 28 Oct 2026 04:14:28 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Wed, 28 Oct 2026 04:14:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 28 Oct 2026 04:14:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 28 Oct 2026 04:14:28 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 04:14:28 GMT
WORKDIR /data
# Wed, 28 Oct 2026 04:14:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:14:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:14:28 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 28 Oct 2026 04:14:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3413857b11a7784d53786dfb88ba4bcfdc3fdf419a908eac21b56b24a554f31`  
		Last Modified: Wed, 28 Oct 2026 04:14:45 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ecfb8da4761e54131b2c434d073044b8bee90d3dbc460c0c7c07bfcc201271`  
		Last Modified: Wed, 28 Oct 2026 04:14:44 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d22b2c8e4e32ce7bd5e98b697c60b946e8a291cbac6bce703c09dd1683636bd`  
		Last Modified: Wed, 28 Oct 2026 04:14:45 GMT  
		Size: 16.9 MB (16852059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a1f819d5dcac7593a0377b2390f881f162a50bb64e5cbfc3dfea9434cbfc1e`  
		Last Modified: Wed, 28 Oct 2026 04:14:45 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a3a225c0ab0d0693462f4adb62604a2cca8b5bb1eec849f7104359d5548d1d`  
		Last Modified: Wed, 28 Oct 2026 04:14:46 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:4177fd3db15a67eb1cebbf09231dde1c36fa3aa2e52bf30abacff8fe929bde95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2405348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa58a6ea21fd0cd906748fe0814079252ed583bf8826c7c5e19689f4ee730392`

```dockerfile
```

-	Layers:
	-	`sha256:1ad21dd4bee259dea1d2bf750634549c681fe173fbde8fc1a70f68b7dad348af`  
		Last Modified: Wed, 28 Oct 2026 04:14:45 GMT  
		Size: 2.4 MB (2377562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c91373faec6d84f6d5a4f2aafa65afc2d61a8707bef334ea355acd5146b27f4`  
		Last Modified: Wed, 28 Oct 2026 04:14:44 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json
