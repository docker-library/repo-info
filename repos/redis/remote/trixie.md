## `redis:trixie`

```console
$ docker pull redis@sha256:98823d25c2233966b0075d949c5c4c87375204f4eff513a072b6b369ab46193c
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

### `redis:trixie` - unknown; unknown

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

### `redis:trixie` - linux; arm variant v5

```console
$ docker pull redis@sha256:9c842580c5354a6531292435f7a7f375c2284a76568ae36aa2aa4459136ec45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42413949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2625e7f65bce5d0d60c4cb4e42391ecd2b2654b45dc2f69e89adfa21514d0c6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 16:49:48 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 18 Aug 2026 16:49:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 16:51:30 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 18 Aug 2026 16:51:30 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 18 Aug 2026 16:51:30 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 18 Aug 2026 16:51:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 18 Aug 2026 16:51:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 18 Aug 2026 16:51:30 GMT
WORKDIR /data
# Tue, 18 Aug 2026 16:51:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 16:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 16:51:30 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 18 Aug 2026 16:51:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e51133b1ef4cde6d0e52699a5e1ce181f84a30b5ebf8e0ecefc1c53452b18a`  
		Last Modified: Tue, 18 Aug 2026 16:51:38 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d0ee4ad90bc6f5ddb77cee82f01b4978757934da4d84fd582cfd7977e8fd75`  
		Last Modified: Tue, 18 Aug 2026 16:51:38 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca193b82664fd9946adc32d216c83f21579cc511cccaee17bf9bc7a01d77fb2`  
		Last Modified: Tue, 18 Aug 2026 16:51:39 GMT  
		Size: 14.5 MB (14455064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04073182b27debcc50b23266d2b186fe29105eb1ae313272961eb276527467b6`  
		Last Modified: Tue, 18 Aug 2026 16:51:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f965ce9fee6a551c94a0bf2c7125f55a26cdb62055329598008c639ee09925f6`  
		Last Modified: Tue, 18 Aug 2026 16:51:39 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:7e140ba79cff20273d9a6c1524e9e32cee8d2ee242d31eeb8ef77b53540e8aad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2012996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643c746982220c0620d6c80656817be32ac3387bbbd95f2431dea2225c528c8b`

```dockerfile
```

-	Layers:
	-	`sha256:bfcad1cbc5a6ab0e2bd91b4660526bebbf0525a0e9804bb54017a03a2b6cdf01`  
		Last Modified: Tue, 18 Aug 2026 16:51:39 GMT  
		Size: 2.0 MB (1982918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54b175bf27f988aa92492ac3938c356bde25bba3df6479f3016d2dd643bfb37f`  
		Last Modified: Tue, 18 Aug 2026 16:51:38 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; arm variant v7

```console
$ docker pull redis@sha256:249601074a9d5422677f50e9631322b83f53d50e05faf6f5646aba64398bf36f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40430341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85b480eca74f94f8f3deec28fc02d84cb08ca34b9110b984e9d37c296dbbdae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 16:49:43 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 18 Aug 2026 16:49:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 16:51:12 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 18 Aug 2026 16:51:12 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 18 Aug 2026 16:51:12 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 18 Aug 2026 16:51:12 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 18 Aug 2026 16:51:12 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 18 Aug 2026 16:51:12 GMT
WORKDIR /data
# Tue, 18 Aug 2026 16:51:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 16:51:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 16:51:12 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 18 Aug 2026 16:51:12 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab09b7c4645e74b18d02447e4c3f3eacb208881115fec6340a2c578190fa12a`  
		Last Modified: Tue, 18 Aug 2026 16:51:19 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199d4bfbf998d76471aad76401a80139feb1503b38c7393e583345131eaa34c`  
		Last Modified: Tue, 18 Aug 2026 16:51:19 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b28c3b3e69aa5ebb4bbf4157e22619fd98b8c28861daed41afef8aebd472e3`  
		Last Modified: Tue, 18 Aug 2026 16:51:20 GMT  
		Size: 14.2 MB (14219805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251fc824f6f3c35f9431af816f998e38e4ec0f4b291452208ce136daf99aba47`  
		Last Modified: Tue, 18 Aug 2026 16:51:19 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb16e0f03483aa5189412ae445974674500680a73ad23b7934a014aaa4dd6323`  
		Last Modified: Tue, 18 Aug 2026 16:51:20 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:3d3f02e94000ec8d69c32236bb22f1ecefdc8c087f2558c6af763090872329dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2011433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3d3d412925eee267950a0dce984f4df43762df9ad43da2aa5fc4f0cc52861e`

```dockerfile
```

-	Layers:
	-	`sha256:3346a84bf8d110d270adee4fbfd401aed281d3417ffc1715a95d6d6db24aef8e`  
		Last Modified: Tue, 18 Aug 2026 16:51:19 GMT  
		Size: 2.0 MB (1981355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:075e9c17d796637b0392d132dfbb621a71bb7601606e24844eb3113a1aad9d46`  
		Last Modified: Tue, 18 Aug 2026 16:51:19 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; arm64 variant v8

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

### `redis:trixie` - unknown; unknown

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

### `redis:trixie` - linux; 386

```console
$ docker pull redis@sha256:c4764d14613c6a9fa9eba8a774c8b1bcda7281a2b4d15ef4ec7855b60b5cbb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45471354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6741294f0a3831393188db59dfb15fb70dc6e641ff42ded11c8fdac33b52078f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 16:49:35 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 18 Aug 2026 16:49:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 16:51:14 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 18 Aug 2026 16:51:14 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 18 Aug 2026 16:51:14 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 18 Aug 2026 16:51:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 18 Aug 2026 16:51:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 18 Aug 2026 16:51:14 GMT
WORKDIR /data
# Tue, 18 Aug 2026 16:51:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 16:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 16:51:14 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 18 Aug 2026 16:51:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbc5da42b87611c052441317d4ca0337d762ad2a86d81c32d23aa67f31b450e`  
		Last Modified: Tue, 18 Aug 2026 16:51:21 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26cc9724897f1c1b501ae841a7e22ec696064637beaa55df4b2db1f1e4864d0d`  
		Last Modified: Tue, 18 Aug 2026 16:51:21 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01355efb7067a3e8ed319a7412d842b37607586af2cf3aaec71e8d110c398d94`  
		Last Modified: Tue, 18 Aug 2026 16:51:22 GMT  
		Size: 14.2 MB (14170916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1cbab48217a95b4f74d4e42624b19c12c8584d5c11cdfd4bfd3f668f98b8a5`  
		Last Modified: Tue, 18 Aug 2026 16:51:21 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c089493966cf5aca9bf3731cc0b4860968d96e93ada2202d1b007e015895b9d`  
		Last Modified: Tue, 18 Aug 2026 16:51:22 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:da85ccf580adfaa7efc60eac6f82caa6208e891697edb6bbd6195355b10f6d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2006971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd130be1d2c25401c876b8fe042184605028833d463c737450a983c1dfdf54f8`

```dockerfile
```

-	Layers:
	-	`sha256:c840d1db2649e4544bd10f6f8e3a36dffa2f02e1c8bed65d510c3aa0251184d4`  
		Last Modified: Tue, 18 Aug 2026 16:51:21 GMT  
		Size: 2.0 MB (1977102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:497e3f7742862b559430d2320ca42c190210a555375e154682a6999183a5e75e`  
		Last Modified: Tue, 18 Aug 2026 16:51:21 GMT  
		Size: 29.9 KB (29869 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; ppc64le

```console
$ docker pull redis@sha256:18163ede06c11e5ea7c85b053aa8704013d0d4bb3a2d2c26c00e4c00f0ec4088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49092189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b827f354bccb8f154865059a9877f017e93dc9948af056918540d0c34225a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 18:38:16 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 19 Aug 2026 18:38:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:40:05 GMT
ENV REDIS_VERSION=8.10.1
# Wed, 19 Aug 2026 18:40:05 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Wed, 19 Aug 2026 18:40:05 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Wed, 19 Aug 2026 18:40:05 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 19 Aug 2026 18:40:05 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 19 Aug 2026 18:40:05 GMT
WORKDIR /data
# Wed, 19 Aug 2026 18:40:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 19 Aug 2026 18:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Aug 2026 18:40:06 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 19 Aug 2026 18:40:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0b1e17708faf12ced8c5dbbd0587f93cdf2d95508061acce48716166342217`  
		Last Modified: Wed, 19 Aug 2026 18:40:20 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb77a696fc62837b0b61ad831d5ebda09f0d9a7a31c1816c82806423a721b9c4`  
		Last Modified: Wed, 19 Aug 2026 18:40:20 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a7159d019b1ace8801123327b37f25540a7f36a9822601d90410f66b7c1bf`  
		Last Modified: Wed, 19 Aug 2026 18:40:20 GMT  
		Size: 15.5 MB (15486676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2375b1077b10852c1bc4376029d6254b2f6e4f3889b91aa78962b05a64484f`  
		Last Modified: Wed, 19 Aug 2026 18:40:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fafd212e890812db67351a45a3d33489004f267e5db0b66b051711daf376e68`  
		Last Modified: Wed, 19 Aug 2026 18:40:21 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:2afea72046ab6dfdf879b04bd53fa8444b814ade2c3d92143114523cfd8f411e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2013461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2347884ef1a2ce010281f1ff1a502f57a5e68d2dba04fc328c2bbb8c4eb8e05f`

```dockerfile
```

-	Layers:
	-	`sha256:14116d4e71671d59578bc403bdcc0cff3cd33a75aa7b8345eeed26b04543fcb8`  
		Last Modified: Wed, 19 Aug 2026 18:40:20 GMT  
		Size: 2.0 MB (1983460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47d7e3c46042b2882b6167da39010ae46475bbc9fa55850617ea69b0f9b4cb72`  
		Last Modified: Wed, 19 Aug 2026 18:40:20 GMT  
		Size: 30.0 KB (30001 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; riscv64

```console
$ docker pull redis@sha256:2cc4806d76a3b13115924f1583fad3dce09957a27f80f187bd86a32109e0fa66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42354744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4ebc64a89481b953cb1888333c87ce4ba7d9d906d00aad25e69c3ec5bc82e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 16:48:56 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 18 Aug 2026 16:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:14:53 GMT
ENV REDIS_VERSION=8.10.1
# Tue, 18 Aug 2026 17:14:53 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Tue, 18 Aug 2026 17:14:53 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Tue, 18 Aug 2026 17:14:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 18 Aug 2026 17:14:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 18 Aug 2026 17:14:54 GMT
WORKDIR /data
# Tue, 18 Aug 2026 17:14:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:14:54 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 18 Aug 2026 17:14:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2f70b6b0141b33b2a92bacec1b2a8a0fc01ef97343a39a537578c9127a79a6`  
		Last Modified: Tue, 18 Aug 2026 17:16:33 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eaa0db788e55cdec29b934c16616c5048d6fe0afc52633cd2d86ff8ba231c0b`  
		Last Modified: Tue, 18 Aug 2026 17:16:33 GMT  
		Size: 820.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c0b9cb97e39ff2ab169dbb19ba34a274ed57720b91dc39cd24fb67835b6c09`  
		Last Modified: Tue, 18 Aug 2026 17:16:35 GMT  
		Size: 14.1 MB (14072466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab728012ba02a552b0b4f0c22d09b3edb804e452cae09f77c37dddc303f47c54`  
		Last Modified: Tue, 18 Aug 2026 17:16:33 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc84baa3b57133bbc33bad17b64e2ce1abccf61e1749a0fb76becdeb01c9b60f`  
		Last Modified: Tue, 18 Aug 2026 17:16:34 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:trixie` - unknown; unknown

```console
$ docker pull redis@sha256:7addc35dc05dd40e8bc974b26775010848f46a364210b0dfdd67bee39b477083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2003863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f025b3ae3f88d9fe3742de6fde982ccc4927caa0b65d18596f1a757dc9bd06`

```dockerfile
```

-	Layers:
	-	`sha256:6d54f21e135f27b170469e4dd73dac547837cba23035e874accbe83df45bc4a1`  
		Last Modified: Tue, 18 Aug 2026 17:16:33 GMT  
		Size: 2.0 MB (1973863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfd71d19420488d92e041eec010ad58783629ba8c7785c583eaead9dad485756`  
		Last Modified: Tue, 18 Aug 2026 17:16:33 GMT  
		Size: 30.0 KB (30000 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:trixie` - linux; s390x

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

### `redis:trixie` - unknown; unknown

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
