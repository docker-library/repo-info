## `redis:8-trixie`

```console
$ docker pull redis@sha256:c94085d298b738be22c9ccdc0ac3761fa6649df7dd82ad1d42367f3cb9714935
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `redis:8-trixie` - linux; amd64

```console
$ docker pull redis@sha256:6e9101032a2126aeeb4b1e862ac77d2fcf26b831ae37e5ff2e69169f82ddd411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55569153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992eb34c6118138585e0d651b256e0085d1b6aaecf39dc16df5ba50cfbe1609e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:33:41 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 01:33:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:39:38 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 01:39:38 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 01:39:38 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 01:39:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 01:39:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 01:39:38 GMT
WORKDIR /data
# Tue, 06 Oct 2026 01:39:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:39:38 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 01:39:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac6ba6b019eeefe2c087322934b2945f58aa4169b924c003623644f96eeae7d`  
		Last Modified: Tue, 06 Oct 2026 01:39:46 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55e02ea8cde44fe42bb3e4e39e460e7d71e4e4a331de8ae6546de23bd242fd6`  
		Last Modified: Tue, 06 Oct 2026 01:39:45 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30201c9cd3caf0a122c32e2ac3eb73b7444b3fe8e2c5577dd90ce3300199f61`  
		Last Modified: Tue, 06 Oct 2026 01:39:46 GMT  
		Size: 25.7 MB (25721635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc611c1ed1167da64a93b443b7f6ec50f11e8f7d5d26983205c0dd1a4803ed57`  
		Last Modified: Tue, 06 Oct 2026 01:39:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3621ec1dd43b4fb0624c5b9524f357ea94193282732c131c04b113170fd872`  
		Last Modified: Tue, 06 Oct 2026 01:39:47 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:236a09e26ff2b8d879ebcbb12ab6bdf626f36a8365e374022557e2dd60a0b6b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2015760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c6a8e8e6e32a285db43cc5dd1e564375f9721141e73d9076ade3dcb3620823`

```dockerfile
```

-	Layers:
	-	`sha256:edf7d95c5d27553d906eb100e1bf7055ea1c481e31f4590e88fab51782dcde25`  
		Last Modified: Tue, 06 Oct 2026 01:39:46 GMT  
		Size: 2.0 MB (1985833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6c2a7c7d56e0fdf85b2920598277a8db67930bc904b34b646754f3b91c3483c`  
		Last Modified: Tue, 06 Oct 2026 01:39:45 GMT  
		Size: 29.9 KB (29927 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm variant v5

```console
$ docker pull redis@sha256:dbd8eb2ca0422838734ef23ae7a4007d9eabbe0b9b9d4ca8a672f886887494d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42470806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975c54ffcb8c9aa6a3fdb74a1d2a8e2c9dfbc18d08ae962db3add4bb1eac7750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:36 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 01:41:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:43:14 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 01:43:14 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 01:43:14 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 01:43:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 01:43:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 01:43:14 GMT
WORKDIR /data
# Tue, 06 Oct 2026 01:43:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:43:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:43:14 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 01:43:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed12d63238ccb6784ffc1a0c0afde6dee72f5b86f730f02d7fb267e16ac39eea`  
		Last Modified: Tue, 06 Oct 2026 01:43:21 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa9998d86eb524d96a161b5cc28bff0d3a7fb9402a888b181fcf0bed3d37ec3`  
		Last Modified: Tue, 06 Oct 2026 01:43:21 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a71ef57704c84e56be9985750680aa3d32de18fc53b5d6d2ec991debe41209c`  
		Last Modified: Tue, 06 Oct 2026 01:43:22 GMT  
		Size: 14.5 MB (14459152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2dea7350a3f6a3fea718c99505838d071af3c4fd2cfecb9cfe5bea34923b4d`  
		Last Modified: Tue, 06 Oct 2026 01:43:21 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def02ecfcdfc16cf4b7aad8b5fbe82e4b1d8e66f345fb2a14fea398e096fb94e`  
		Last Modified: Tue, 06 Oct 2026 01:43:22 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:1803f9f3d972c0c0ac9113a6f4ab0e1c68026c60b7d451fa7b0f461f73eec901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2018903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d81b005de40900fb3c7077713623b78d6b2399ebb183003eaa8595007f0aa94`

```dockerfile
```

-	Layers:
	-	`sha256:74fc0f906b51796d71817a73a3c4b24c8e750d3935d5cb444fb98ad9af2f70bb`  
		Last Modified: Tue, 06 Oct 2026 01:43:22 GMT  
		Size: 2.0 MB (1988826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17bc40d5f36f61adfe684ff9de292d403308edb9f0c0c7629fb74945890bfb68`  
		Last Modified: Tue, 06 Oct 2026 01:43:21 GMT  
		Size: 30.1 KB (30077 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm variant v7

```console
$ docker pull redis@sha256:0fcbeb3509784a43eda14c8fbaa1bef8e15d6d1d0d6f95fffb7b99dbd9472731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40484914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce284df69cc8ead5899f1ad9760cd1d6e61720479779e7395096a82c799120f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:49 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 02:19:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:21:15 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 02:21:15 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 02:21:15 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 02:21:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 02:21:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 02:21:15 GMT
WORKDIR /data
# Tue, 06 Oct 2026 02:21:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:21:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:21:15 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 02:21:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b20465c7cbc9daf82adf6117b96866a113406f37fefc5562a8c1b56016d3ae9`  
		Last Modified: Tue, 06 Oct 2026 02:21:21 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0c1f9b043fae54f0c3f5f2c3e7c9e0ef343d554327202836d217727a71fa51`  
		Last Modified: Tue, 06 Oct 2026 02:21:21 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d448c2a9c506785fae843a9983f447ac2bfc739d32a16894bd5a29cf2919212f`  
		Last Modified: Tue, 06 Oct 2026 02:21:22 GMT  
		Size: 14.2 MB (14222574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def2856bcc5fd199a3aead3ec29549f6ec9eb8f8173d2ae34eaf49b55936a926`  
		Last Modified: Tue, 06 Oct 2026 02:21:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c49e3c8b09dfb0765138b7578e2dc961accec054a570c5db4c12f2e92460e88`  
		Last Modified: Tue, 06 Oct 2026 02:21:22 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:adeb46ef4183f413c7eccbf95a82e5be8e398c8ef22d3cc0fde6c46e4b4dea10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2017341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b957372545ac491622e60de6aee8199d4e1f979b138ffc7a59f8e1ccef466935`

```dockerfile
```

-	Layers:
	-	`sha256:57e21143b7490864c00673d6473f72bbb899e3a0b0bd4657aa12e83b4a38f81e`  
		Last Modified: Tue, 06 Oct 2026 02:21:21 GMT  
		Size: 2.0 MB (1987263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97d60e1067d59a2219fcd6eaf3d09c39044bb947c86d6bda53c2a0bad9242446`  
		Last Modified: Tue, 06 Oct 2026 02:21:21 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ec87069acc319552b908ba0709277d17a0fe768fcfbdd78b7271d77b4a1bd3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55351710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd2e561aa8ab3aaf9d40021f90d845342b979250f12edac423d80137125c022`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:37 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 01:36:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:42:48 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 01:42:48 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 01:42:48 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 01:42:48 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 01:42:48 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 01:42:48 GMT
WORKDIR /data
# Tue, 06 Oct 2026 01:42:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:42:48 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 01:42:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbce0b02cac7c4cfc066f252ad82a9cd2b5a3da46992d78db9bb99cca07b6486`  
		Last Modified: Tue, 06 Oct 2026 01:42:57 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adec69eeaf25bc23ee04ba7a83a8e42b4ebbf6d594c95099120d859e4bf69ad`  
		Last Modified: Tue, 06 Oct 2026 01:42:57 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c2f9166d69591dab305cb2678ea7b46d62f2a20dd67515de9c00c4141ca906`  
		Last Modified: Tue, 06 Oct 2026 01:42:58 GMT  
		Size: 25.1 MB (25147264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d58206b798c4214b9e29a65262bbc53b588b2a5c065579457b3ca0edd3bffec`  
		Last Modified: Tue, 06 Oct 2026 01:42:57 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393f1d59f88cfaf972749f821cc1414eac46d07565b4b7f89bcf5dc57c205f9`  
		Last Modified: Tue, 06 Oct 2026 01:42:58 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:f1a656764da759f147aa3d1fb41eeb82526919a6ee215fdd564b6856ef089f2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2016255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c59f21b6d7c8874d06b43349f296c91079deef8efed91b7b44ea6abf20dd85a`

```dockerfile
```

-	Layers:
	-	`sha256:0b853f118c26058af59411204d0380b2d5d868288d47c1f73c592017670dfa64`  
		Last Modified: Tue, 06 Oct 2026 01:42:57 GMT  
		Size: 2.0 MB (1986131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1cc9d4db17d563aee3f3ff5d666d148430253795858d5e9a845d8521b918d9c`  
		Last Modified: Tue, 06 Oct 2026 01:42:57 GMT  
		Size: 30.1 KB (30124 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; 386

```console
$ docker pull redis@sha256:548ba47ba91cf7aa875546e6f50f8a2746f3421cb0becd818fab36798d0d5f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45531831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a100c268500c7b67af8972322cb2083016581c63c7a1cf46d1d210313aea0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:15 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 01:43:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:38 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 01:44:38 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 01:44:38 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 01:44:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 01:44:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 01:44:38 GMT
WORKDIR /data
# Tue, 06 Oct 2026 01:44:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:38 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 01:44:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de8e7d338d45b4355719a73d2cf4776c46e21b6ee892cd01163fa4b3e5d5737`  
		Last Modified: Tue, 06 Oct 2026 01:44:45 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d473ea381974c13509e7193f5aba969f2028b991c3f3c75194b7b6e6110104`  
		Last Modified: Tue, 06 Oct 2026 01:44:45 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c24189ce1945df35367b3572552271b6a38e268e45ada91778056714d772d1b`  
		Last Modified: Tue, 06 Oct 2026 01:44:45 GMT  
		Size: 14.2 MB (14174370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df460ac8523a8d0b974ff74a4eee40bd18701c788c797663ac07386c9dcc12ea`  
		Last Modified: Tue, 06 Oct 2026 01:44:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40397d32500377a2ea3092c8a1957a644c26d5ef486cdaadc0f0ff5aa304229`  
		Last Modified: Tue, 06 Oct 2026 01:44:46 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:a49ffa8a7dc058665a0f68cc5197c0eaad2f0d918c8e312a86dbd2b26132c3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2012879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6f618fa9628de948d48f9d48c95ad84618d505f397981bcf9472ef4e5f56c3`

```dockerfile
```

-	Layers:
	-	`sha256:76742bd2e172186a641bd3fd45ac290333e67089d62b4637302a3301f92bf4be`  
		Last Modified: Tue, 06 Oct 2026 01:44:45 GMT  
		Size: 2.0 MB (1983010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bacf94a9563289630982c177b1fe258dfd70a8ab900d2495f57d4d5f135d093`  
		Last Modified: Tue, 06 Oct 2026 01:44:45 GMT  
		Size: 29.9 KB (29869 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; ppc64le

```console
$ docker pull redis@sha256:f1b4aad6e79017e11fdbbe14b4331ff605f301f82c440efbcc011bebf64761eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49144245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f037ad625d897e2076c3b36c65ea5dc42f30aebb352cf2a2169eeb9fd351d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:23:01 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 04:23:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:26:11 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 04:26:11 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 04:26:11 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 04:26:11 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 04:26:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 04:26:17 GMT
WORKDIR /data
# Tue, 06 Oct 2026 04:26:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:26:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:26:18 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 04:26:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cceaddf7bf03d8925a8a535e3d70c8e6597527dbbf9515a7acfc34911b822d`  
		Last Modified: Tue, 06 Oct 2026 04:26:39 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b00d129f19647aeda94a0f0323708d82182ff9016d7ee680d2cce86b8a717b0`  
		Last Modified: Tue, 06 Oct 2026 04:26:39 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68eb6de41028bded045ca9f6a542e5a34d1de8a028b913660f1ac70a59c2b858`  
		Last Modified: Tue, 06 Oct 2026 04:26:39 GMT  
		Size: 15.5 MB (15488479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d889e0c217e2b10d485db901260ac26fb3c25e315feaf3ecb4e08bcfa6f62f4`  
		Last Modified: Tue, 06 Oct 2026 04:26:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd0e247a80aabb27545e64170e904a6d7ff4a41da3d2d7cd9b9e3f10c7e28dd`  
		Last Modified: Tue, 06 Oct 2026 04:26:40 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:95b5efeeed1647c8b44b35eeacfa095bf9970e226bc46d1477923b9c115f266c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2019368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f202b20eeaf93312282270eaefb91cbaec1f54de621e14236952f911476dc49`

```dockerfile
```

-	Layers:
	-	`sha256:f87b593c0206c5318f9967ed9f905e7ebe5b9cdb714366ff220fba385c6e678c`  
		Last Modified: Tue, 06 Oct 2026 04:26:39 GMT  
		Size: 2.0 MB (1989368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4974f1187ee830cbbc90cea038b63169d8dcf2f679c02814dfdf90d3bb5d6458`  
		Last Modified: Tue, 06 Oct 2026 04:26:39 GMT  
		Size: 30.0 KB (30000 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; riscv64

```console
$ docker pull redis@sha256:ab8a2505bc75119a39d76eb2791d4c018d6d1012623f36d2d8e28cfb5fe1c833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42402966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b61a779963adce6d3565092a4cae78b6f25e67eb50903c7385c667f39bbd193`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:39:54 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 24 Sep 2026 19:40:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 13:14:05 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 29 Sep 2026 13:14:05 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 29 Sep 2026 13:14:05 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 29 Sep 2026 13:14:05 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 29 Sep 2026 13:14:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 29 Sep 2026 13:14:06 GMT
WORKDIR /data
# Tue, 29 Sep 2026 13:14:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 13:14:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 13:14:06 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 29 Sep 2026 13:14:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e561ffb255ab301fa08cb0dc44560ec8d09f4906aed4fd0eebfdd41cc4a466af`  
		Last Modified: Thu, 24 Sep 2026 20:42:40 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40939380ae7d7c8e97cf2ba031270c46e3a6106f55648e8175665345ee39d46`  
		Last Modified: Thu, 24 Sep 2026 20:42:40 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a288b86e834bdda5e50fd38b293b1acc2cd1fb848e19865d9d06f065c631b17`  
		Last Modified: Tue, 29 Sep 2026 13:15:50 GMT  
		Size: 14.1 MB (14074419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac78b8e69efd30b84f6afdc6cf327ea68223b15ac58a9b30782c6d3a9831dc5`  
		Last Modified: Tue, 29 Sep 2026 13:15:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3187e5ca9a12725d673da6e505e5a014c48d2ba0a5c2373a163d05e52c0b2b5b`  
		Last Modified: Tue, 29 Sep 2026 13:15:47 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:e2e9bce82618d8ef38c2c7994778d0e466a5c1ddcb8775b58bdcbec89bbce651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2009771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e866ebbe8df87c2ef91a234bf73f0b644cc9c6c181151bb285908e1d3666aa8d`

```dockerfile
```

-	Layers:
	-	`sha256:2ade9d1429471829203b345d51d8d610e59c3c9b97c400e1df9d0e6f98d39881`  
		Last Modified: Tue, 29 Sep 2026 13:15:48 GMT  
		Size: 2.0 MB (1979771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa79ca57633e8214fddc4ae7a198630a6a0f6018e4421b76fd0148a64ff9adc0`  
		Last Modified: Tue, 29 Sep 2026 13:15:47 GMT  
		Size: 30.0 KB (30000 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; s390x

```console
$ docker pull redis@sha256:6d66ae883430400aebd5ed572df11a5238d252696269d1272700ed300c98fa02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45017068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cf01cdf275ecb67251f557b04f273e50ec2aab0f53b256cc4ca414f791d0bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:52:17 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 01:52:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:53:44 GMT
ENV REDIS_VERSION=8.10.2
# Tue, 06 Oct 2026 01:53:44 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Tue, 06 Oct 2026 01:53:44 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Tue, 06 Oct 2026 01:53:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 01:53:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 01:53:44 GMT
WORKDIR /data
# Tue, 06 Oct 2026 01:53:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:53:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:53:44 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 01:53:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0555cf62041ef5180808b287db6cc949ff5303a0706f6b25e20aed45ff8ceb1`  
		Last Modified: Tue, 06 Oct 2026 01:53:55 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697b38dc5470a3d15261f489e994950830bbc0f36aa4059412097e6b57f1c9cf`  
		Last Modified: Tue, 06 Oct 2026 01:53:55 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c3ef9d56207f128d11d678725702e8ddd434995adee9707dee3f00eca58996`  
		Last Modified: Tue, 06 Oct 2026 01:53:56 GMT  
		Size: 15.1 MB (15103657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5375c567369599bf0a8fea60b59f6ee86edf9acb4d75e7b3be89b8b22c0480d6`  
		Last Modified: Tue, 06 Oct 2026 01:53:55 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d780651bdd9bcf299248f4be1751b23591f45ff1837a0d8003dff712b69b40b`  
		Last Modified: Tue, 06 Oct 2026 01:53:56 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:d9088d9619c14b677a5c448934f554af5b4391e058236379a246f3bffed71044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2017207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f5c4e33f4861efecc7cb1e64610e44c84ab1031430302326473a8bfd4c2a1f`

```dockerfile
```

-	Layers:
	-	`sha256:e57a9e4725e6f994dc5e726f2dc457c5a8126b68dd88c3edb4862ced16f8b949`  
		Last Modified: Tue, 06 Oct 2026 01:53:55 GMT  
		Size: 2.0 MB (1987280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:087f68e557b1a3212ac452625dd0bad87f2b75b5ff53e4fbba3a5424e013c2f2`  
		Last Modified: Tue, 06 Oct 2026 01:53:55 GMT  
		Size: 29.9 KB (29927 bytes)  
		MIME: application/vnd.in-toto+json
