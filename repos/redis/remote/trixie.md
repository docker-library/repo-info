## `redis:trixie`

```console
$ docker pull redis@sha256:0a014ae5c04f55c82aaad2314de411c7a203de1c4312c3e526939226a0185dd9
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

### `redis:trixie` - linux; amd64

```console
$ docker pull redis@sha256:754570e29b41d9dd240adfafc5f66ebdf8b659710b8e9cdd5a5e411ce0776e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56290826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5080cbad1633c0f52d81916bfda76a8d4b685a3e62779f93e4c09bdcae1087`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 16:33:20 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:39:22 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:39:22 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:39:22 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:39:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:39:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:39:22 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:39:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:39:22 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:39:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fceac5ad446b835b3f4ba3debc5c0e161bb0a9734ab399c9fae682ee7463b8`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ab30938e8648e804fe2476f242079689af8fb53e95e84d210640f8913ab600`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 704.2 KB (704179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae612b23e090f1b1f452956a044e9fedaaeadd7ad6d6ccc17b1d0eb94c88b137`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 25.7 MB (25739729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95538635d40d7153d8b099b856082c13d484c7986a64727878e3de59fcb966`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc02d02021a13ab6f7e5665a3ab021e9c5ec5a085a21d8f9ac518ee794a6ca0`  
		Last Modified: Mon, 26 Oct 2026 16:39:32 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:6a449cf6cf040f609ad80f361883d9f8adf7f9f10f4ddd93f6e67a0d4c1839c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2016112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e169b39edede0e1e0809b373c52b0f7b3b754e0cd5d77821c31118d7b56139`

```dockerfile
```

-	Layers:
	-	`sha256:55c6a064e893b9875c58cc4cc1566c32102d450c1b5c049e78b10c2b218c0a17`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 2.0 MB (1985833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c400ec7b10c94b04688c95fccaca32a813a21b05a73d65a6cc121bc253742381`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 30.3 KB (30279 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; arm variant v5

```console
$ docker pull redis@sha256:3b53379a93df85ab04a6f48d41cebbbb56d63d0f529b96b3e39c1d0833be528e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43206691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d07e284d9515ecc95e17560a5c5dd6755bf2891ed7ec23bddffe7edb910342`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 16:33:11 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:34:58 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:34:58 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:34:58 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:34:58 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:34:59 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:34:59 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:34:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:34:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:34:59 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:34:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fd0ea719fb374fa67f35f5587254326a5f6d14c7be32ed74fb89d07cd39c00`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03a1a15ddad13058381c4ed1ce86211942601030bd4c8404a259a48d03a4aa9`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 704.6 KB (704622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb31354d6895a79b22fb6e167f29c1d991a8402d49b3082d3b4041aeb5f3dbf8`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 14.5 MB (14490935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960fe66c43f99b04f9224700b4e264b9454db286b40e119050a9dd13d3aa4fa1`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f346e23a4a75bed132899d38090846c6b9449b58d2e2365a5c4618982e4374`  
		Last Modified: Mon, 26 Oct 2026 16:35:08 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:63ddbf816b964b9d440e81a4b4c5fcf4fb1f6408a1e3368d104ecef1e6a5d993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2019257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243f5c140f12fd7d972cadfd9814ae0d70188f16d910a8dea406692d47aced6e`

```dockerfile
```

-	Layers:
	-	`sha256:16ab65ac9f40eb3a61bcd713a6f5a6a75f17545f1dc80bc184b8e5a18800fe75`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 2.0 MB (1988826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6b7702184ec9b10a0d4a6405a919601b6bfb7f20d702dc8c441f0f53dcca02e`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 30.4 KB (30431 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; arm variant v7

```console
$ docker pull redis@sha256:0910ee906ca347655ff7b543910b54b53be499d778f0edb7019d1fba8d7d98fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41201390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cb2356dd059921c68c9bbaabf5a320caab0f8a827997baf3c0cb38ac3db384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 16:33:10 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:34:43 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:34:43 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:34:43 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:34:43 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:34:43 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:34:43 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:34:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:34:43 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:34:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e0562154b85e2dbc62a035246dc12ccce327ebff07ffeb4b162a9a2daf7d6c`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a74d3d32a2f432a5d7f1aa76e0df952abad9836752f5770022ce8d1bb3b8a38`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 704.4 KB (704438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1ec58683d07d6006017a0eb4a1d1b364f4712feee51ce052de3febc1d7b7`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 14.2 MB (14235219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd3ce835b75bf1d9b6d69e6b0a02aa5f551b862a1677177e6842fb8bf613f51`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af598d0bea58ebeb6efbe14e99dd790a0ac74a38af146986f2802986a83aa8ec`  
		Last Modified: Mon, 26 Oct 2026 16:34:52 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:e6b92653f222c81725c656964bd5d6bf146d2819d8680be9864238b8cca13a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2017694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c3989818f78745d4508011bf41834e4d9cd5732e638374dcd4f8615ba78be9`

```dockerfile
```

-	Layers:
	-	`sha256:1c1fab00f772d71f28c7e271f72c4ea1ed8f5740b5be62813c2abf3bd790193b`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 2.0 MB (1987263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c071fa6c988cfe5d6112c90e15d358457ab3e669aba546d609e9c15edcf29626`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 30.4 KB (30431 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:fe94735c45bd9b8aa7aff225cb0f7b26c638db0dc7fed3830ee3a8ebdcc2cb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56084631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b856cc231b3abe75369800c4f70878fc1b339964b60d0d27f1d03f12b90f0db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 16:33:11 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:39:21 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:39:21 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:39:21 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:39:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:39:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:39:21 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:39:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:39:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:39:21 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:39:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fd0ea719fb374fa67f35f5587254326a5f6d14c7be32ed74fb89d07cd39c00`  
		Last Modified: Mon, 26 Oct 2026 16:35:07 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fe4ef5fa543dc12467835367765878036d60bc1da6f3a7aa9fe6b971d3bb5d`  
		Last Modified: Mon, 26 Oct 2026 16:39:30 GMT  
		Size: 704.3 KB (704314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bef956b611656f30e4462020a7a40d5a54c59628e75587ed0cac384a35ba43`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 25.2 MB (25176500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7922c36e5b1461f30135a5dc5b6df28a7b1e5523e9df08d7c72c539cdb2e26`  
		Last Modified: Mon, 26 Oct 2026 16:39:30 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4cc8102dbb47dd59b0c86b2f114982064efe3620436c5f27bc7edc896fe1f2`  
		Last Modified: Mon, 26 Oct 2026 16:39:31 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:be219c7821a4a581b2b4071d64b7de834dcab458ea8dca1e99f37ccc9d08f55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2016606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0110846091f000dca04ea4133b6d344dc76e365e7b8098960f7e89a1e44e71c7`

```dockerfile
```

-	Layers:
	-	`sha256:fe28a8cf3cb2ff055ed6836098ffd3c5862191e7d2aee7274e7da8af0e927373`  
		Last Modified: Mon, 26 Oct 2026 16:39:30 GMT  
		Size: 2.0 MB (1986131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b14f1dbdce029b8498074fb0338778ad87bab05c20723bfc5e2d68c9c901160`  
		Last Modified: Mon, 26 Oct 2026 16:39:30 GMT  
		Size: 30.5 KB (30475 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; 386

```console
$ docker pull redis@sha256:ad840f675ad7c92473b3c721d0ffebfa1ead59c21a2b3441d043572cfb4c67f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46257163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee237945e911ef407c4910e727f100077f6738dfd4a46cb7d3159a2dc65d3be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 16:33:15 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:34:44 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:34:44 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:34:44 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:34:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:34:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:34:44 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:34:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:34:44 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:34:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b68dc9c7732341147fcf92335ca40407213477f69f57c72519154cdb45547ca`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92df5147d7961149221f22be4002d6e04ce26240a919b2d89ac229fa61bbbca6`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 704.3 KB (704337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c948b5801873e4f9335fda6e047e088f63a35263bd28935dfbeb5d0c84419f40`  
		Last Modified: Mon, 26 Oct 2026 16:34:52 GMT  
		Size: 14.2 MB (14195953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e868026092eb4d6b8df450d92bfc84da3a300abb8ffc2bf09d26e1e9ff3e13`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d990a7d8e2ceb61e215f50f7b538531d6efe35b093b3e7ce64484201a00293`  
		Last Modified: Mon, 26 Oct 2026 16:34:52 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:a273848fe8b65624f07140dc0c2fa6d41bb102828d249316520ad0cf509371f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2013232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8f3b81a5c3aa09408fe4f9114d431ba08db609205d81a3ed5307ed3226b625`

```dockerfile
```

-	Layers:
	-	`sha256:a2cc7ab1b439010ab9f5267bfbba9f8d4e10aaeaa002b4ff16dde9ceedab538e`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 2.0 MB (1983010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3752cb7e56f04447ac6a0ed141bec0a896fea3fa08287d6d1335d7a69fa7fec9`  
		Last Modified: Mon, 26 Oct 2026 16:34:51 GMT  
		Size: 30.2 KB (30222 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; ppc64le

```console
$ docker pull redis@sha256:92cbfb2a09093d03aab2d404a4edbf111bb6b65c8ae19aec7a0eece599879d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49168221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e70e83088eacaa714b7f0c35ad9c475404bcaf23058ec07c13f015608f481`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:03:54 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 04:04:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:35:54 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:35:54 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:35:54 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:35:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:35:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:35:56 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:35:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:35:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:35:58 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:35:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e331f76bab8ac74d825fe31b2a09112ad4777bd9fa037f69209a3cda604e1fcc`  
		Last Modified: Wed, 21 Oct 2026 04:07:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fc71f5f9364d92f2454a347232b29eed5cc6be208a4ef8535859f4f65d27de`  
		Last Modified: Wed, 21 Oct 2026 04:07:52 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1116e9d9700208f058632b6d694a99b8e8f60c5c174c80d0b5d6ead90d9e3571`  
		Last Modified: Mon, 26 Oct 2026 16:36:21 GMT  
		Size: 15.5 MB (15512123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a8cf085b8b00bead520ceab85fe31613fc17ad386f7c6fb9f9f0223741f5ca`  
		Last Modified: Mon, 26 Oct 2026 16:36:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44f41957629c618da79f91edabfbf8908b4aa81791a51ecb9eceb6fb81af4a3`  
		Last Modified: Mon, 26 Oct 2026 16:36:20 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:6e1d014c433f51250a83c6db4526f018a7ac42a3e12383b7e37a8a866e3e54da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2019704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63d64b11092ddfaeba423ca5af0913d7131bbc819a61338caa5272ba982a40c`

```dockerfile
```

-	Layers:
	-	`sha256:e97a697ec4a782eb195b97573e0672c753d494392ec04a4762528b828f0539dc`  
		Last Modified: Mon, 26 Oct 2026 16:36:20 GMT  
		Size: 2.0 MB (1989368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f08899888fa1696b5412466c091913d3632dfca6291047965d8b6dcd7453edc3`  
		Last Modified: Mon, 26 Oct 2026 16:36:20 GMT  
		Size: 30.3 KB (30336 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; riscv64

```console
$ docker pull redis@sha256:24d100068f05fa2f6199b41633119d16dd94311e4f6b6e0cb7ba0089ab3f28dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42412446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2582125247e2237120c4dca29d0aeb91b57c02b74d6e8a30efb0e1d1ee98ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 03:16:06 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 22 Oct 2026 03:16:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 03:43:22 GMT
ENV REDIS_VERSION=8.10.2
# Thu, 22 Oct 2026 03:43:22 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz
# Thu, 22 Oct 2026 03:43:22 GMT
ARG REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
# Thu, 22 Oct 2026 03:43:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 22 Oct 2026 03:43:23 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.2/redis-full.tar.gz REDIS_DOWNLOAD_SHA=ae6973de9b6ad8e6cf21b1e764abccab59200689af6aabce10d4cf6bbb2e253f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 22 Oct 2026 03:43:23 GMT
WORKDIR /data
# Thu, 22 Oct 2026 03:43:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 03:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 03:43:23 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 22 Oct 2026 03:43:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ee089dd9d0333a030fc74acbb4c1a69134ddd328efabdbb99a1a402736010`  
		Last Modified: Thu, 22 Oct 2026 03:45:14 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c81ba6dfe1ccfe0ab165d9f1cb1d30273bc92dc987bb7f0bdd6abe24bb04a1e`  
		Last Modified: Thu, 22 Oct 2026 03:45:14 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688c01d71166a46a99e537ef3b30a6c838dbd9c32a9821c7e7d181a95ccdab47`  
		Last Modified: Thu, 22 Oct 2026 03:45:17 GMT  
		Size: 14.1 MB (14074408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862938e58d8e52c45c24bf446ad985032a2747559244f2a4b59e4b63b14513ff`  
		Last Modified: Thu, 22 Oct 2026 03:45:15 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfb7909fa5b93c627ff0e23913fbdd0960d169e9f51e92243635939a3cb1a39`  
		Last Modified: Thu, 22 Oct 2026 03:45:15 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:7afbc4bd85c182ced03414bbfd4466762b359dadf9b661d5e95028d30e6a70e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2009772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b09d2b0da5dc05cbce73242812e010e0b07fcdd6f9f138ad12f6766b7ca084`

```dockerfile
```

-	Layers:
	-	`sha256:28b9b930a5937e535bb2604d29900beda53986b4ca6a8315138e5e284b924c4e`  
		Last Modified: Thu, 22 Oct 2026 03:45:15 GMT  
		Size: 2.0 MB (1979771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07a97a39222df623c06134b24bf5471254fa416d6c663286ebd47204344fb2f1`  
		Last Modified: Thu, 22 Oct 2026 03:45:14 GMT  
		Size: 30.0 KB (30001 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; s390x

```console
$ docker pull redis@sha256:96d61b5cf3273a273139b6b81048c0799101f133d9460fa979c1f3228b8728ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45045161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97d57a7078c9774cd086f0bbb92e5a0cb17dd86fdc50f180fc588ae87f17ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:04:31 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 01:04:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:34:49 GMT
ENV REDIS_VERSION=8.10.3
# Mon, 26 Oct 2026 16:34:49 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz
# Mon, 26 Oct 2026 16:34:49 GMT
ARG REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
# Mon, 26 Oct 2026 16:34:49 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		libzstd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	export BUILD_COMPRESSION=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:34:49 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.3/redis-full.tar.gz REDIS_DOWNLOAD_SHA=5e0c00ed77f789fb1a4a30f1fbb58a793cc88c41c0f11f0e38e1b4f192991188
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:34:49 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:34:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:34:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:34:49 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:34:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165d927f159fa63eeb32ea95f3dfbac7c93b5006512b2fd5e898ce20ccf397ce`  
		Last Modified: Wed, 21 Oct 2026 01:06:13 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c58687f78bd286fa865dfb3f869e5a8f5cbacf55ebfa0b2ca2c60b599539eb`  
		Last Modified: Wed, 21 Oct 2026 01:06:13 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90f05a1538034b0aa034c273d740d6db52147b47aa8739cd3dbb34aea943ac1`  
		Last Modified: Mon, 26 Oct 2026 16:35:02 GMT  
		Size: 15.1 MB (15129561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a6a1867d88708e0f60ab0edf3829a5047cd2738eeb4081eee0f1edb7ecb038`  
		Last Modified: Mon, 26 Oct 2026 16:35:02 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b20d470e99d29ff829dc86e7be5ce86bb913f9fbe31ad14cdf516f4c1e7020`  
		Last Modified: Mon, 26 Oct 2026 16:35:02 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:c9254fef315462ec563eabfa58f64720adbfca4426ba8b8bbf8dfd2b9aec6144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2017545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d592021db6ed1ed03748dca62d0ad1f1969d66abb29ee63b483251c97bf406c5`

```dockerfile
```

-	Layers:
	-	`sha256:7fda71305ebc70e924dd0bb97c51e1b0793dffded41db6e886a5c21f3d8060f9`  
		Last Modified: Mon, 26 Oct 2026 16:35:02 GMT  
		Size: 2.0 MB (1987280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf2756a70a324a6d706c621b8df3a9db828af790d4294decf5a6af437b9265c`  
		Last Modified: Mon, 26 Oct 2026 16:35:02 GMT  
		Size: 30.3 KB (30265 bytes)  
		MIME: application/vnd.in-toto+json
