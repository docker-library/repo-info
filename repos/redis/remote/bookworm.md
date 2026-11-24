## `redis:bookworm`

```console
$ docker pull redis@sha256:bb302517211721bf85ae3152b663c848a7cb36e79b02d69239ce20b5ddce95be
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

### `redis:bookworm` - linux; amd64

```console
$ docker pull redis@sha256:0e125214188816ac08e22435c7a5f58c61b8cbd3251d62e380d14fdf7659cd87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52851631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443f407d5d5a3ab81be78ebb136791c5d90f4e469231bc922dd187f55660fac6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:31:25 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 24 Nov 2026 04:31:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:38:06 GMT
ENV REDIS_VERSION=8.2.11
# Tue, 24 Nov 2026 04:38:06 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Tue, 24 Nov 2026 04:38:06 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Tue, 24 Nov 2026 04:38:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 24 Nov 2026 04:38:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 24 Nov 2026 04:38:06 GMT
VOLUME [/data]
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /data
# Tue, 24 Nov 2026 04:38:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:38:07 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 24 Nov 2026 04:38:07 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4e9a86c65070e80cfa17312e0042deb5202ba2281bd53a780ef9966a4352bf`  
		Last Modified: Tue, 24 Nov 2026 04:38:16 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6d094dc975fd2efca483c2948280dc50b728a4b264a6ec13d46c843a60bdf6`  
		Last Modified: Tue, 24 Nov 2026 04:38:16 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876961222337a28abfa9866748078bf42c26bedbf854aa8b3f9d37eb8249f447`  
		Last Modified: Tue, 24 Nov 2026 04:38:17 GMT  
		Size: 24.6 MB (24599458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43facb174343742d4d52d8c809fcd532078fd6bf141844ebcd44b325c3e7dacd`  
		Last Modified: Tue, 24 Nov 2026 04:38:16 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68f99625e9e48309c19bb89ad79f6fbf40c78078b9e6ce7b1c023f8000d170a`  
		Last Modified: Tue, 24 Nov 2026 04:38:17 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:9db09fd8b0ac452cfdd7a8d5ffe64f6ba01a0b49fb0e3c8e7b8597fbd0cfa3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0404dc250d95b8ced6f4181c1fb9b36e38ba346ed601dbf3636c69eb9417a7e7`

```dockerfile
```

-	Layers:
	-	`sha256:192a95019df741e7be4321e6eaf35466fe739735e962aaf413108ea63bf3c774`  
		Last Modified: Tue, 24 Nov 2026 04:38:16 GMT  
		Size: 2.4 MB (2373168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:562d342593aa7ad87fc0cc70010c690061704c1187ebc382ce2426a1631dfdc9`  
		Last Modified: Tue, 24 Nov 2026 04:38:16 GMT  
		Size: 27.7 KB (27723 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:980682ca74dce6c84beacdfc849aca52c6d6dc5b2928f633ffc657a7b3e81b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38974647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08f3fdf482ab43fc3c08edd0f6d2d9a055b031c82c0696dfa3bbd76dfdcf656`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:14:39 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 24 Nov 2026 05:14:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:36 GMT
ENV REDIS_VERSION=8.2.11
# Tue, 24 Nov 2026 05:15:36 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Tue, 24 Nov 2026 05:15:36 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Tue, 24 Nov 2026 05:15:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 24 Nov 2026 05:15:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 24 Nov 2026 05:15:36 GMT
VOLUME [/data]
# Tue, 24 Nov 2026 05:15:36 GMT
WORKDIR /data
# Tue, 24 Nov 2026 05:15:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:15:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:36 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 24 Nov 2026 05:15:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cf2ac9ae62df2c875397c66dff93b26d388c4339ab40406eff674a1c1c00a0`  
		Last Modified: Tue, 24 Nov 2026 05:15:43 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da16936149cf6ef7b1a991406255fea1d61af480251fe149e461e9f5848f770e`  
		Last Modified: Tue, 24 Nov 2026 05:15:43 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067edf98aaf0ed107d9f62a35273fff9050bb91e4d97eb544be14359415e496d`  
		Last Modified: Tue, 24 Nov 2026 05:15:44 GMT  
		Size: 15.0 MB (15009112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b46100cd07567192cedd14e66dfcc60babb622a55d56e5c287bb4629bdb2c0e`  
		Last Modified: Tue, 24 Nov 2026 05:15:43 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc097633cfc0b1488836c8a09943a261843e742be687c457a3a866c2334a60af`  
		Last Modified: Tue, 24 Nov 2026 05:15:44 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:f046bc12d1905e7c6591edab90c4b129397ec03a16fc32b0851616cf02ed0172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:959633659606255874073b879ad90cf899930eee563af2e512d411ce3cbaa69d`

```dockerfile
```

-	Layers:
	-	`sha256:7e57e21a009b826d7142eef0c87eb4b5bf743f2489cea59c2cc3992a5d33497f`  
		Last Modified: Tue, 24 Nov 2026 05:15:43 GMT  
		Size: 2.4 MB (2375405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51f7d24163d2655b093b67d1b94b4bc45e8538d850f1e5d67f814320d1ac20fa`  
		Last Modified: Tue, 24 Nov 2026 05:15:43 GMT  
		Size: 27.9 KB (27859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:cfea2d0cec5d1b7b650b73f3d495eaa9391c3ee29a3fbc96fe4c5c71e7ce2381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52311167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd01ee2dfd4c712a3da7fe34f293a311faaa96083f48ba22a3454918c19a99b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:35:37 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 24 Nov 2026 04:35:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:25 GMT
ENV REDIS_VERSION=8.2.11
# Tue, 24 Nov 2026 04:42:25 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Tue, 24 Nov 2026 04:42:25 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Tue, 24 Nov 2026 04:42:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 24 Nov 2026 04:42:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 24 Nov 2026 04:42:25 GMT
VOLUME [/data]
# Tue, 24 Nov 2026 04:42:25 GMT
WORKDIR /data
# Tue, 24 Nov 2026 04:42:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:42:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:42:25 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 24 Nov 2026 04:42:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c96749e93e025b746c1d934adce53f8a3ab9c4847552875f6f892954cbe5d6f`  
		Last Modified: Tue, 24 Nov 2026 04:42:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f6a6df33409cfa4b253c919567e23bccb6a079ea61066d35b45f9e285d0074`  
		Last Modified: Tue, 24 Nov 2026 04:42:34 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32a291e814ae63c4ad8361c05ea9330f2ed505ecbb1da8dcc2257729c92a666`  
		Last Modified: Tue, 24 Nov 2026 04:42:34 GMT  
		Size: 24.2 MB (24162652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:406d53af16f0d2aaa010e8f5561062549e0eadce1dd92c9c2263a48b7952da44`  
		Last Modified: Tue, 24 Nov 2026 04:42:34 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff2ef2c9885355c9dbacbb9b18682bcb262e19f4789fbd1e32bbad8d05b7082`  
		Last Modified: Tue, 24 Nov 2026 04:42:35 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:c6b8b4568daf39523675546ad766f1733bfe4ced30d432b445e121a425c62d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c65312532f63ca361cb9663abf8ca0f502762675540b25f50d4936112c6850`

```dockerfile
```

-	Layers:
	-	`sha256:7b5db51cdf74f2c5b3ca3d875b741e3c656eb9a30a3e4c2afd9491e4418a44d1`  
		Last Modified: Tue, 24 Nov 2026 04:42:34 GMT  
		Size: 2.4 MB (2373449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2a51d8dee5c7d3d2ec2df2ad1a80d06a3a17875eae42a0a70ada8d366ba6f5c`  
		Last Modified: Tue, 24 Nov 2026 04:42:34 GMT  
		Size: 27.9 KB (27897 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:bookworm` - linux; 386

```console
$ docker pull redis@sha256:bebed3e3eca4aa4283e7a8b1e229dccae3c7bcd0a26b678c1dbc8bc6bf2c108b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44423417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1305c943c516b501bf95dc8bda40b765a199a0362c0a568bc2787c7b659583`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:26 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 24 Nov 2026 04:40:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:28 GMT
ENV REDIS_VERSION=8.2.11
# Tue, 24 Nov 2026 04:41:28 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Tue, 24 Nov 2026 04:41:28 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Tue, 24 Nov 2026 04:41:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 24 Nov 2026 04:41:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 24 Nov 2026 04:41:28 GMT
VOLUME [/data]
# Tue, 24 Nov 2026 04:41:28 GMT
WORKDIR /data
# Tue, 24 Nov 2026 04:41:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:41:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:41:28 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 24 Nov 2026 04:41:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b182dbfbb9cbbcbd084aafed73d5c80e476d1c91c2a5c0db818232b3340ab9cd`  
		Last Modified: Tue, 24 Nov 2026 04:41:35 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4211c9f5d52c58984f8fcd771198c04befde6fc2c527144826cdc2cdeca46a69`  
		Last Modified: Tue, 24 Nov 2026 04:41:35 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff420b0f5e4599c92f15034d3c52e7a40d39c05d3a8694c8c9f3f1c6b99e823c`  
		Last Modified: Tue, 24 Nov 2026 04:41:36 GMT  
		Size: 15.2 MB (15180001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1944d91a2f628f6ded103d41cc2b7e0ba5fff89d019c948f5645722b11cb934`  
		Last Modified: Tue, 24 Nov 2026 04:41:35 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e882ca68eb566d4e417717e76e9eabb4bbdb90da7864352fecbab549d36334`  
		Last Modified: Tue, 24 Nov 2026 04:41:36 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:4e645260c93ebf605c07b4130d23f8e8b8a16937b096a6bfcaf8a95662104ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083f80a7c795f62a72c597dd71b83f4c09d43e36bda4b61b9a3535a5845be41d`

```dockerfile
```

-	Layers:
	-	`sha256:e80975fdead35cf650a958d83a2f1876ae306994a32920289344712215c11281`  
		Last Modified: Tue, 24 Nov 2026 04:41:35 GMT  
		Size: 2.4 MB (2370341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:985ee4ba8bd833579c4522ce297721c8ca4487534b26e9429c6ba068da42b01d`  
		Last Modified: Tue, 24 Nov 2026 04:41:35 GMT  
		Size: 27.7 KB (27676 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:664333230076db3d0daf3b23345d7a736e7f38df514bc38e24067922520b975e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48949665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5685448ee11f915cb8351bb07879b188163a244e81d3af0bc5f092090e316c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 06:45:05 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 24 Nov 2026 06:45:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:47:07 GMT
ENV REDIS_VERSION=8.2.11
# Tue, 24 Nov 2026 06:47:07 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Tue, 24 Nov 2026 06:47:07 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Tue, 24 Nov 2026 06:47:07 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 24 Nov 2026 06:47:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 24 Nov 2026 06:47:08 GMT
VOLUME [/data]
# Tue, 24 Nov 2026 06:47:08 GMT
WORKDIR /data
# Tue, 24 Nov 2026 06:47:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 06:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:47:08 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 24 Nov 2026 06:47:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558c3f9f5941f0dda2e1fe77ef7721960e72aa657bd876b95f3ccff9d17ffe31`  
		Last Modified: Tue, 24 Nov 2026 06:47:24 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63483587bfef2eec2872c410436447ce9a3560b3ca0e31abeb1d41bd6f463744`  
		Last Modified: Tue, 24 Nov 2026 06:47:24 GMT  
		Size: 869.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06721450a80760b31d992cfe3c53bb7af718c93857826d82ab702a5c1098f809`  
		Last Modified: Tue, 24 Nov 2026 06:47:24 GMT  
		Size: 16.9 MB (16851958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a8866b709baf79c9c9487ecffef8f76921cec68905de2288410001ea157560`  
		Last Modified: Tue, 24 Nov 2026 06:47:24 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12e8ee5c3c1313f044996baf3eedf8d42db4c5f28c8d1e8d0fc43d88afbea3c`  
		Last Modified: Tue, 24 Nov 2026 06:47:25 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:7288f86e7ffd1f682ebaba363a14e934aa2c795053d3ed73b8794d2226f2acea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2405348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb974426c91a9d03b74b050c82a8fef5a912958fc408da24f0017dc0fcb5fc7`

```dockerfile
```

-	Layers:
	-	`sha256:26cd4e6e6423c85379c6ef96d243a254de931b9ce973e2719e86c0695bfe1a78`  
		Last Modified: Tue, 24 Nov 2026 06:47:24 GMT  
		Size: 2.4 MB (2377562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2de1be28055ef2b9ec72c6807b249e1a82181ccbbc035e2ffc727985232e31ec`  
		Last Modified: Tue, 24 Nov 2026 06:47:24 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json
