## `redis:8-trixie`

```console
$ docker pull redis@sha256:298e5b3bc566bade82f46ad5511777a4a07a294097ce16ada2f6a42be5239df5
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
$ docker pull redis@sha256:76961cd2a0f40ef6fdd334b6b1b3a76a2bad1848d89f3030ca30a7521d4a9493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55437546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923b31bc216c39d25b1c984d86704f49dbd5184f2ad949ca88fd4c23264c74e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:42:31 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 00:42:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:48:50 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 00:48:50 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 00:48:50 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 00:48:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 00:48:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 00:48:50 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:48:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:48:50 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 00:48:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b30195f536dd238e0cb439efa5f7243d14a1ef9f4c7b0308c5d726e9c3c2b36`  
		Last Modified: Tue, 25 Aug 2026 00:48:58 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0606565b61df7049a30a3c0b3eb6a00a903fcaf8ab62363df92ddfe0c3a184`  
		Last Modified: Tue, 25 Aug 2026 00:48:58 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87650244ec3e6580ebea8e066d2da8bfdc7c60b92e6ee87d85c04d0a1632fcd3`  
		Last Modified: Tue, 25 Aug 2026 00:48:59 GMT  
		Size: 25.6 MB (25640718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7942a2dab1958d1362c600d80ea07d853522cecdbc0037a26ba8b9b58a075b`  
		Last Modified: Tue, 25 Aug 2026 00:48:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1de9b9d5a817a02d1ecfe32acca9b8e8b7bb361185ef2d7752768b45fa075cf`  
		Last Modified: Tue, 25 Aug 2026 00:48:59 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:a7d0e3db9cef931626258a510068d6029cd8dbecc15a72efcad2052acb5ae3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2010050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf3a8f08e0d57c44af224b6081f7bddf1eea8f7ece61e765d5808ce61b4b4ec`

```dockerfile
```

-	Layers:
	-	`sha256:fce2fbb27b141860cfc10ae97999d5c80b49041c698e78fcc4296f2e42fc6ab7`  
		Last Modified: Tue, 25 Aug 2026 00:48:58 GMT  
		Size: 2.0 MB (1980123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc63621f644410267fff430394c0dd363d024ba92759f38a5d52779d5b4db477`  
		Last Modified: Tue, 25 Aug 2026 00:48:58 GMT  
		Size: 29.9 KB (29927 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm variant v5

```console
$ docker pull redis@sha256:5e2d7034423e04cdba887114987853573c2475f4721f13140d470d2bac15b344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42428213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2bc43b036af797cf60f3180dae83435c7cbaee28392b529c10660a7520d454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:40:07 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 00:40:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:46 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 00:41:46 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 00:41:46 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 00:41:46 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 00:41:46 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 00:41:46 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:41:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:41:46 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 00:41:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3015e6e15104f10c4a06e361b1091ca7e360f53d638c6209e72ae76938ec473`  
		Last Modified: Tue, 25 Aug 2026 00:41:53 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e5e4d1a524f305dd49d7feec425746805f26df1133f9c64edd23ceea78f8dc`  
		Last Modified: Tue, 25 Aug 2026 00:41:53 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91717c9e30363812863c3e32dfca46cfb38f6633bc183f5d0da8898852faa88b`  
		Last Modified: Tue, 25 Aug 2026 00:41:54 GMT  
		Size: 14.5 MB (14455098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e345fed2254d7eccdf1926af661f8d001f2aae262cd030f1d2a7229dc7b1fd`  
		Last Modified: Tue, 25 Aug 2026 00:41:53 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49722ddac20466ca9fbc7b2222de240d437c76bc0a0d36f76ae344d781fb12d0`  
		Last Modified: Tue, 25 Aug 2026 00:41:55 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:8989837d8378974b920e24953f97558b7484088c5ce672444d64a5b8724f9d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2013194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ff469b0677e722b18f344d82d582fed15e59a3a93911630eeb53da889d7a04`

```dockerfile
```

-	Layers:
	-	`sha256:77bfa6b6222897b9847d51cc50d1e43606f951c1e6536c65f341ca32cbdd0919`  
		Last Modified: Tue, 25 Aug 2026 00:41:54 GMT  
		Size: 2.0 MB (1983116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d554d42ef1d33e56eb5a582e78629b9db4fccea1995c7af6d37c7d294e3062e`  
		Last Modified: Tue, 25 Aug 2026 00:41:53 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm variant v7

```console
$ docker pull redis@sha256:5a3fc121b0e53983712f7e4826be648faeb92397a3c29f1bc5ef0641bb645f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40443114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205fc501a19949dd7f488ebc52b6aa31ca95d3126147321b92648d48ec75ed8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:08 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 01:30:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:31:36 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 01:31:36 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 01:31:36 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 01:31:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 01:31:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 01:31:36 GMT
WORKDIR /data
# Tue, 25 Aug 2026 01:31:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:31:36 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 01:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f8b6f87f20873aa9fa35334bbdbb6314b62eceb002144b63f6dd05f11b8b2b`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93654328828c71a4fca5c60a49ff1cf53fd406e7f32219f6767b6a0560a4f8e`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc01e87b57b5aba5e0fff2fdb02001038dc16b83b2ea79ec03d35b341adc8f57`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 14.2 MB (14219811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82928225a1dbebb9dd9b1e3cc41250f29146dafa5b401b2aa22e7f06b9cb3f93`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5278b6b29693b3481a42435c865d64be3e33c87dfc3a508c9414b622023ae46`  
		Last Modified: Tue, 25 Aug 2026 01:31:44 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:21fb42b4517bedaf30664a98096c702f5d09bf238a3afb9307176a9c3d158839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2011631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961e65906d28cc16787eb4b5dfea00f9f2bc31f1f6663e91d2e1c5e6f1a5230a`

```dockerfile
```

-	Layers:
	-	`sha256:aebac8f54fef2ce8cdbce7d2a14f4c96ef81e384027a0ecae8fc0c321cd020d2`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 2.0 MB (1981553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c6f76551a34ba9165ea6e99861b74f4b3db4c40905a34059c38d66336e0ea79`  
		Last Modified: Tue, 25 Aug 2026 01:31:43 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:1c92fd971cb4614d1581c7f0482108fe2d571c3debe88a655a15de97c151c8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55229757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f5674cdfd4588a3d8111f9771fb65471b093304fe11b45b47f0a29b6f42530`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:00 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 00:45:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 00:51:30 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 00:51:30 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 00:51:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:51:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:30 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 00:51:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c951a647a38ee4bdaf1c1d09074b617aef6ac22eb0c4ebc06914a1c791c0476`  
		Last Modified: Tue, 25 Aug 2026 00:51:40 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930c3f15557f1a325bb4c633964430dc13564568d6d0ca951fa85dc1330376e7`  
		Last Modified: Tue, 25 Aug 2026 00:51:40 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05dde4b9d38c2046803e3f8e2e4e4c0394613b47ce0f841e538a8f1dcf5b7974`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 25.1 MB (25066005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ca6605936e1c51339c2bdee41f47da02054198b98213e78f3e23de288317f5`  
		Last Modified: Tue, 25 Aug 2026 00:51:40 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971b8ed02ebbcac556d51a7c8cd1871da22037d53b77536438ad214cc187539d`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:98dec0b7fb8d353979f6868c17d476c197896e394d8ab1c39f7feca0de750800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2010544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ea625396cb294c9a2b520c0cd115512606b2a73d834edee9cc54e013c70ac3`

```dockerfile
```

-	Layers:
	-	`sha256:99e96c4c070ddc7694fec7422ec87168e210432d04a4ea294cf35e54f4d302fa`  
		Last Modified: Tue, 25 Aug 2026 00:51:40 GMT  
		Size: 2.0 MB (1980421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:416941ef51869ed9bfad1ea29d8f5eb90942958f210fb1ae3d667b6192b56da4`  
		Last Modified: Tue, 25 Aug 2026 00:51:40 GMT  
		Size: 30.1 KB (30123 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; 386

```console
$ docker pull redis@sha256:4a81ac268fb0cad305f0654ec80047bb018b9d2b411ec2d1d428ee1b841dfc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45478448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff60ec335786628fa8ad802d4656124d7dcf484266b39547578d7a5a4cb2f0ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:48:27 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 00:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:49:59 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 00:49:59 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 00:49:59 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 00:49:59 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 00:49:59 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 00:49:59 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:50:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:00 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 00:50:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386d7e2bda158e4786d42670196d2aa22180f062baa369e5fcf4f74dada89854`  
		Last Modified: Tue, 25 Aug 2026 00:50:06 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c3eb04f382ebe25adbfb4bdfd9236e61f85fee93d9fcec732f2fb3d9815032`  
		Last Modified: Tue, 25 Aug 2026 00:50:06 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4184cc67b559d0a71dd26c6edf44d0a725bda140f69e54bf6422b0ba2347e2bf`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 14.2 MB (14170885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd624297cd2dc810a1e31b4c3087ebb875ac2172c3101d5e59a876be3cd0eddb`  
		Last Modified: Tue, 25 Aug 2026 00:50:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd1ff5c17ffe8e60ad5920b6bc9307e55e002c2321117faec26348a2c304c17`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:73880a96fb7a57da6afbdafcbecf9ee9a44c2a1810f568e348065a5af0342333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2007169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe336470ee59a0b2124a9caa2bcd357de87c756c2ac27bfbc4c6afcbb4610c9`

```dockerfile
```

-	Layers:
	-	`sha256:f3371a93619fc5a08a1bfde930f74211f54b4bde544515bb95314cb6d5318d6f`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 2.0 MB (1977300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8223e6cc8f7be282d1725e2e36ab298fb55a9565ec24690a197fb126f0d334`  
		Last Modified: Tue, 25 Aug 2026 00:50:06 GMT  
		Size: 29.9 KB (29869 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; ppc64le

```console
$ docker pull redis@sha256:803b9c96d9d73ae17345a5fd359d0cfbdd1f4db12b49997e152aa580346ab434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49106376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1df02db7abe2e414fcb2d44c06fbaacfeebbcd172067612c39ff767ff6c1abb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:23:31 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 03:23:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:25:44 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 03:25:44 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 03:25:44 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 03:25:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 03:25:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 03:25:45 GMT
WORKDIR /data
# Tue, 25 Aug 2026 03:25:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:25:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:25:45 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 03:25:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c86d5725425202fa7773bb47f1a3e0deacf68d34178a96cadcbefa6d88d5bac`  
		Last Modified: Tue, 25 Aug 2026 03:26:02 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f226c3bec1d577f149e06fae2c687b8e61f3bc49721c91fbe8565401dac8dd72`  
		Last Modified: Tue, 25 Aug 2026 03:26:02 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6851081f24b7c585b18df54d9c5be45b6be743851a3dd7725350274e4879d4`  
		Last Modified: Tue, 25 Aug 2026 03:26:02 GMT  
		Size: 15.5 MB (15486750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249a763fec00c07ac39814e1c9faf2e3dc68469d148c290f0d59287dc93c82e6`  
		Last Modified: Tue, 25 Aug 2026 03:26:02 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53fcdc38f3c61acb9a52b752a6cbe43f2f4af1111478746cc4c82f7cbfba804`  
		Last Modified: Tue, 25 Aug 2026 03:26:03 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:0e281fc4993757de595054139139b9ca5828ffbf66b502fd819ce43f99687de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2013659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2842210c43728363c2de56e384e15dd2369d50fe0d9b6196f57beb707bb69366`

```dockerfile
```

-	Layers:
	-	`sha256:422f05d359a1e6e7d28c82b5529e5ccea0e4c8d2986bbb7426b587cbf5212950`  
		Last Modified: Tue, 25 Aug 2026 03:26:02 GMT  
		Size: 2.0 MB (1983658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3682bc83dfc9d7b53f5da689e64f596a769cc62aecfc1a21713082548d17be5`  
		Last Modified: Tue, 25 Aug 2026 03:26:02 GMT  
		Size: 30.0 KB (30001 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; riscv64

```console
$ docker pull redis@sha256:06584ca3406317c92e9c4191075ab24d5cab54659c5ad009ca75b5595fd89d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44993606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fcba88f7e59d15bab3818280d4450cdb4a9a46a86ebb854b9c9ab3c84e7975`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 26 Aug 2026 22:37:52 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 26 Aug 2026 22:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 26 Aug 2026 23:03:20 GMT
ENV REDIS_VERSION=8.10.1
# Wed, 26 Aug 2026 23:03:20 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Wed, 26 Aug 2026 23:03:20 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Wed, 26 Aug 2026 23:03:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 26 Aug 2026 23:03:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 26 Aug 2026 23:03:21 GMT
WORKDIR /data
# Wed, 26 Aug 2026 23:03:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 23:03:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 23:03:21 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 26 Aug 2026 23:03:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c947f323519562efbee260a0fe084fac20db96e8c34da1ca175dcebdbf12518`  
		Last Modified: Wed, 26 Aug 2026 23:05:01 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bac2bd70e138c19a7a68d6351e350fe59584c248b0cafdd66213021c480fd56`  
		Last Modified: Wed, 26 Aug 2026 23:05:01 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e8616167d54e54b0a8afe9af17d6b38b08957929e5784482ce6ed468579e5c`  
		Last Modified: Wed, 26 Aug 2026 23:05:04 GMT  
		Size: 16.7 MB (16692984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872901ceaa6088f5c704cb789cf0c05c889409f217bd005bcddd66ad7a9c0a31`  
		Last Modified: Wed, 26 Aug 2026 23:05:01 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542e94f6c339544fc716e45fa8cc8eea350f2ee61b8e0455b4370dc3e48f5209`  
		Last Modified: Wed, 26 Aug 2026 23:05:03 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:8c38b31b1d2f4d3a6eb023e6d0044c14746bc37723b233e3802062f76426a210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2004062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e4e462acdfb9b659f8e22450e53d7ea0ca751028fe6ed59b8d73d9572bd087`

```dockerfile
```

-	Layers:
	-	`sha256:6cbda17e16819a5243553a823d850bfcb8674bf19a6424027666d1b23840c3fc`  
		Last Modified: Wed, 26 Aug 2026 23:05:02 GMT  
		Size: 2.0 MB (1974061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab6707bf1259cf9a3187f4adc8b21bbdfc7975c590797c8f62fad1a8c95a96d7`  
		Last Modified: Wed, 26 Aug 2026 23:05:01 GMT  
		Size: 30.0 KB (30001 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; s390x

```console
$ docker pull redis@sha256:6c1939bfd7ad358dc1a80d1bd0d63ba57b3e9fca1d7e289d3dc67f2545d7b169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44971100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688a1357f3a0773792994ad57fe38118eaac8e044eab4c32687c4b8417b8f4f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:18:02 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 01:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:19:43 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 25 Aug 2026 01:19:43 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 25 Aug 2026 01:19:43 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 25 Aug 2026 01:19:43 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 01:19:43 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 01:19:43 GMT
WORKDIR /data
# Tue, 25 Aug 2026 01:19:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:19:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:19:43 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 01:19:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47329620479e9480e81beea5ab3db59487ff051b2f93266d42638b7f16f245d`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c24884ab88c917d157f17f99de7535074fd81849bf9a4bcf1898355850ccc3b0`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a6df03aef20054e3bee58c8cbde26cb3776f1ec88f492f7598bb83464c41c2`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 15.1 MB (15099216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba67c480ec5c9898e691f4badcc7eae6ebeb5eab778dc1bf6bf952d78a03f4e`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779ae12e94570b5e7c6d13e7b291ccdc38bcdae6721d3a32f4c89535155c5f58`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:f0e34386295d34f8876a488bb8be927ab5becd2cd87d60c62b025451ebda25e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2011497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc58cbffb49398477dfa3594bf33a62b137caa843ed8dc87c9826ea8efa2abc`

```dockerfile
```

-	Layers:
	-	`sha256:6faaf48527e22dd5dd984fb45d1ac512d2b057076bc26bfbf8b35f7e0d6bc923`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 2.0 MB (1981570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6f65d1305868736d675aa60c266b3213cb33f69a834465eab53eb3c42daf6e`  
		Last Modified: Tue, 25 Aug 2026 01:19:58 GMT  
		Size: 29.9 KB (29927 bytes)  
		MIME: application/vnd.in-toto+json
