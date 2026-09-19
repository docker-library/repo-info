## `redis:8-trixie`

```console
$ docker pull redis@sha256:8a1efc5f479551822b47424ccae982026b633f28818eab0387348120a61e10e2
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
$ docker pull redis@sha256:5edb5f1591cd35076057573171f40e0439ec7fbbb38e04d56c0efae810d99d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55474442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3b4d0d1a5d419fdb4a1fef04cb4033b04210c2f7383d596335265b8ff0b31d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:37:09 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:43:14 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 00:43:14 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 00:43:14 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 00:43:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:43:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:43:15 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:43:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:43:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:43:15 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:43:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2a24b5fb25c4844b2cdaa383d07858aba6053eaec806bd84cf3da1256272bc`  
		Last Modified: Sat, 19 Sep 2026 00:43:23 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090bdb3db9ca070adacf9281d8aa8dd33aa2a615502350c6e4d62d3e581acf01`  
		Last Modified: Sat, 19 Sep 2026 00:43:23 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916bd9c149a39d26450a2da3d7cebc6d61eb639a195458fa0047ccb638d12ffe`  
		Last Modified: Sat, 19 Sep 2026 00:43:24 GMT  
		Size: 25.6 MB (25639861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325b1e560d63ad49c2f0e5c9b2430e83db7d567ecd837da4c5dff2952f8fccf0`  
		Last Modified: Sat, 19 Sep 2026 00:43:23 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7abbb3aa6cf2c19ce7974aba5bcf32d2c35e43753b5b450304b85a5cea0ae93`  
		Last Modified: Sat, 19 Sep 2026 00:43:24 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:c58f4d9eec9577f7eab9a2d431139842b60a1ad997f1559ca6cf684360d1f3fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2015760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1e46b6d77adea7029866a46007b07960b2dd12017423de81d84e1555273959`

```dockerfile
```

-	Layers:
	-	`sha256:1fd5ba77311dea896ed41a5a3342d25fb113482664b452a3b890026216bb59a8`  
		Last Modified: Sat, 19 Sep 2026 00:43:23 GMT  
		Size: 2.0 MB (1985833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7650bbe442242c9cac0aced3ffdee36773209b32d3053f7422fa1982ccb0e90b`  
		Last Modified: Sat, 19 Sep 2026 00:43:23 GMT  
		Size: 29.9 KB (29927 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm variant v5

```console
$ docker pull redis@sha256:93466a5aab16b02728d65033c15e5178c9176b699db3177f81f04e19ba5b08fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42458003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff488487a9454b231ec978bb89cc3f36092b2a01b4cf0114dab27d80f8d9680a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:19 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:44:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:56 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 00:45:56 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 00:45:56 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 00:45:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:45:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:45:56 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:45:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:45:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:57 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:45:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13091a16bf27deaa76a24abd3468edee45754da6cd3836b775d31f2a758dc043`  
		Last Modified: Sat, 19 Sep 2026 00:46:03 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355ee763efb878eb251c648b4fcd204c538fbcb9a8f264b526b4f84a5a3452e7`  
		Last Modified: Sat, 19 Sep 2026 00:46:03 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2464b891306fa91c71e103c34b0890881afb4369fd7c0b33ca27a38929ecbeff`  
		Last Modified: Sat, 19 Sep 2026 00:46:04 GMT  
		Size: 14.5 MB (14455804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128276bbccdec11e639ede226df5f1b0371365fff706840269e4d929ed11a1ea`  
		Last Modified: Sat, 19 Sep 2026 00:46:03 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716d6d5306b925ad285a1d190b69aa99998f913d45786a80d2d7fb60c73efd59`  
		Last Modified: Sat, 19 Sep 2026 00:46:05 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:5fc730a72643c91cc844ac21a6867702bea3a2ca3be1cb116a8d14e3c525e852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2018904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b4e6157596587a200798f80d7d1a365849eae7394ea3cf254f691ad94452eb`

```dockerfile
```

-	Layers:
	-	`sha256:f2cde7b66331274ece2b44b83618d16be7f7618cf80c58048fed602319f469fa`  
		Last Modified: Sat, 19 Sep 2026 00:46:04 GMT  
		Size: 2.0 MB (1988826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6adcaea04b544c05e418cdc04ca36f27dbb7a58118d5c157ab819e0ff23b8f2c`  
		Last Modified: Sat, 19 Sep 2026 00:46:03 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm variant v7

```console
$ docker pull redis@sha256:3dd0a1cf43ee2c47577bcf3f080b4e09c5c8da601fe612b633758bff2dfda9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40473322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7fc447365332ec948510607365723d97a9352fb55ada354a6fda32e8f9ab5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:22:48 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 01:22:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:24:15 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 01:24:15 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 01:24:15 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 01:24:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 01:24:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 01:24:15 GMT
WORKDIR /data
# Sat, 19 Sep 2026 01:24:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:24:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:24:15 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 01:24:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70bb21f658469df9c47ee255b72adab83806d872b14a3d8ff282fad1c9c5f2db`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562f958f14044c6b7b452795d91c124115e9c681c7c70e0371bb42a553de7e05`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167d84a1f3333c5c72051e10deaf0c3fec8ab0517ab4601bfd47361359120c4a`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 14.2 MB (14220232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb41e4e3bd23272dfbd8105ccd951362a25f876210fa91d824110bb4ea1b22be`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c0152b7bba8496f5d12036630bcff856015a7a7d131e40046903d56290ec1c`  
		Last Modified: Sat, 19 Sep 2026 01:24:23 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:1da0ce27772bdeeab0e0331017791ecdb9242513337f043734a5c2f4a18855dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2017341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979728d5fcf46f7d49184636a3d2f003e877feadad28d886de73dad19c9a25db`

```dockerfile
```

-	Layers:
	-	`sha256:3d37336422614cba66574fdf32484bec4311ccc1f275289a32a21369692e952b`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 2.0 MB (1987263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e013ef4fd46c8d4b8c2c6470386b0e04be1e47eefbedd02cf42e70f20e86ce37`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:2e940b1efbe5bae595d9cc7c4f5ecdc84497a63b2a8e1bfe7624a0fae2f05127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55260594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e0d4b810d46f112e02a9c58f77065682b36c72e9fb723029edd9aa0a0cff67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:40:13 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:40:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:46:50 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 00:46:50 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 00:46:50 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 00:46:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:46:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:46:50 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:46:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:46:50 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:46:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828356054201eef4bdc21c62c12f95f145739a6b447a36d7c67f5b4e6d7d3780`  
		Last Modified: Sat, 19 Sep 2026 00:46:58 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb45fb254416331692f7c89c9454426de431436531ae77a074a77a98e293d8f`  
		Last Modified: Sat, 19 Sep 2026 00:46:58 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da330f21e543462ced1922ba86e445f1f1ad40902e1fe5d838157e7273bdc8a6`  
		Last Modified: Sat, 19 Sep 2026 00:46:59 GMT  
		Size: 25.1 MB (25066740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc9770655d7bd74e919c8bf902e4e74b04b11b26a8921b838781da29ed334d0`  
		Last Modified: Sat, 19 Sep 2026 00:46:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed67a4a10f74c280199a76201df62a2824949f8173e4371cee0e3b5cec4def4`  
		Last Modified: Sat, 19 Sep 2026 00:46:59 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:5925ed11a19847a56c9f996ae623c68cead43c8d17fc951773d094d9bf019dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2016255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f95c0add1bbde7dea005b6e21b89474f6c9c479c4ba35e4d7ad2f3a894cb30`

```dockerfile
```

-	Layers:
	-	`sha256:c953a2f54c67e5fd39434763233efcbf3779fad3a224eb354100e30218c8e473`  
		Last Modified: Sat, 19 Sep 2026 00:46:59 GMT  
		Size: 2.0 MB (1986131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:643055d7d5a28667ba12ac4327e10c8a6cac61d378fc06f4c7f217871e8e640e`  
		Last Modified: Sat, 19 Sep 2026 00:46:58 GMT  
		Size: 30.1 KB (30124 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; 386

```console
$ docker pull redis@sha256:78168c22bc4b773870f9f80a47fac14baa2aaabebd3d406578a6159797e9c498
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45515964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81a0dad08c6f91b9672ea90d67a8b41ee86970253411f0918e692ca0141d517b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:30 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:47:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:58 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 00:48:58 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 00:48:58 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 00:48:58 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:48:58 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:48:58 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:48:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:58 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:48:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee89485614b5c76ca71fe3df9d45f984d7b9738d8d6970f458dac95d20edd7d`  
		Last Modified: Sat, 19 Sep 2026 00:49:05 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5279f7eab262e2abdf0877dcfdf15095a3a577fd16a0d125c2193e2c9a430a`  
		Last Modified: Sat, 19 Sep 2026 00:49:05 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa06e175be8d7e89df9dd48088c67f8e6c69a36b9bca54f82ef6d3d58597a4f4`  
		Last Modified: Sat, 19 Sep 2026 00:49:05 GMT  
		Size: 14.2 MB (14171404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a392df6841be010f8f98d74c9ad63b4842ea27c4644822829f1d2ead8c74350e`  
		Last Modified: Sat, 19 Sep 2026 00:49:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5f840d779124c1d1a813104458b3f326e8475a9012b6bf0faa224012a21d53`  
		Last Modified: Sat, 19 Sep 2026 00:49:06 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:cc072b292eba3ff0b8509885386d492c5fdce9df715ba246af04f358bd2228c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2012879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7f3b2ea225c15ef9bd13745ef540f75ceac59e9566e81c826240da2e1fc1bc`

```dockerfile
```

-	Layers:
	-	`sha256:7acc1d9805d571b6b7e259447c604786168a9280701d6e3742d8005b911dd580`  
		Last Modified: Sat, 19 Sep 2026 00:49:05 GMT  
		Size: 2.0 MB (1983010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d91d51e648f5c8e5a53df54aab622c5ea1f4dff8e5f204f9fe40d81b5b22ea5a`  
		Last Modified: Sat, 19 Sep 2026 00:49:05 GMT  
		Size: 29.9 KB (29869 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-trixie` - linux; ppc64le

```console
$ docker pull redis@sha256:f68bc232f40f36a0129348dbfe9dabb7e6c69cfd33ad49d87de095fdb123127c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49132498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434c16957f9347aa067170ad1f473068dcb39d93589769d4e0397de74111f9e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:02:48 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 03:02:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:05:07 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 03:05:07 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 03:05:07 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 03:05:07 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 03:05:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 03:05:08 GMT
WORKDIR /data
# Sat, 19 Sep 2026 03:05:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:05:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:05:08 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 03:05:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8ce58e2a363d41e8025143ea577b8f54d9e002186bbca3d9147fec5ae3c947`  
		Last Modified: Sat, 19 Sep 2026 03:05:22 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ccd37f071d374a0b92a26f91d0eed7a06c6ce7efe5a4929a01124eb0a319ea`  
		Last Modified: Sat, 19 Sep 2026 03:05:22 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f4fc085a2795a5ab693115a115a849acd28693741d12f9cda38f368e283535`  
		Last Modified: Sat, 19 Sep 2026 03:05:23 GMT  
		Size: 15.5 MB (15487101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08faadf48b3a0a46b27131c56824bf99cec7abb0e124ff747933844a889abf91`  
		Last Modified: Sat, 19 Sep 2026 03:05:23 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922cef5eb6dc1a2513b23ef119037e15c343b7eccc69fba8bd5d931fadc312b3`  
		Last Modified: Sat, 19 Sep 2026 03:05:24 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:121f0d9354e8788e5456084ff77c0d5570037c40598f9e0be1f923d159926fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2019369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83570f7c6a5573db22562f5debd87af2051aa4dc521346a496cf76be4516c2ee`

```dockerfile
```

-	Layers:
	-	`sha256:64e85cd5df8e0c251967b4a2fc272f5d780034dab851f66a3fbc6d5c5ddd2563`  
		Last Modified: Sat, 19 Sep 2026 03:05:23 GMT  
		Size: 2.0 MB (1989368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8acf9a25a6d8470c1fcdb418df4330cff594e9fc04b57546fb23514a0470bb25`  
		Last Modified: Sat, 19 Sep 2026 03:05:22 GMT  
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
$ docker pull redis@sha256:6344bd502627e941df93461fd872b52fad02b9b713dd6c4211670b5ab02ad142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45003679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842b6d8ae6e12551de0f2663d77f142e9b596a6d82481e4c90db386b5fa5ed30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:52:50 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:52:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:54:18 GMT
ENV REDIS_VERSION=8.10.1
# Sat, 19 Sep 2026 00:54:18 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz
# Sat, 19 Sep 2026 00:54:18 GMT
ARG REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
# Sat, 19 Sep 2026 00:54:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		libsystemd-dev 		pkg-config 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list; 		apt-get update; 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			automake 			autoconf 			libtool 			g++; 		apt-get install -y --no-install-recommends clang-21 lld-21 llvm-21; 		export PATH="/usr/lib/llvm-21/bin:$PATH"; 	fi; 		rm -f /etc/apt/sources.list.d/backports.list; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:54:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.1/redis-full.tar.gz REDIS_DOWNLOAD_SHA=e5cae2686231290bf55ae5cc4da01e646c3424233cae7618ebf3a64250ef1583
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:54:18 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:54:18 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:54:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1f27f6d109503c93a5e21c913edaed9bbeed86fb42f308e1c08e775902f44a`  
		Last Modified: Sat, 19 Sep 2026 00:54:29 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2fb4c18d59e44a281284f4a4b7262466cae44057c4d2eba9604913fcdaa85b`  
		Last Modified: Sat, 19 Sep 2026 00:54:29 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f44c6ca8c781f6927e4af8f7b4880fc908f47806285bf6aa0cc44a8a787a58a`  
		Last Modified: Sat, 19 Sep 2026 00:54:29 GMT  
		Size: 15.1 MB (15100364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6a4e19840d4eddb065d50117d175be773cb9096f45d6222f5238ba94998c3a`  
		Last Modified: Sat, 19 Sep 2026 00:54:29 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bcbd1162233290e8294212acc9c88f27c4f074aa5625d06ccda4989bc4f569`  
		Last Modified: Sat, 19 Sep 2026 00:54:30 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-trixie` - unknown; unknown

```console
$ docker pull redis@sha256:ea0ef7a5850ad680e86a7e5aae736846b03afb05052c5b7d34fd3353605973af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2017207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d070765320511dd0966ef537819a8b896afbfec6e69416531023fd8ff61f4e7`

```dockerfile
```

-	Layers:
	-	`sha256:05a73ca2a49be91e04609c892d2229d810c46dc70059bef639c91850a8b7dadc`  
		Last Modified: Sat, 19 Sep 2026 00:54:29 GMT  
		Size: 2.0 MB (1987280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9bd96f753fd18d51390879c4d9a9697e18917aedb7c3a29d5f45c7d593974f3`  
		Last Modified: Sat, 19 Sep 2026 00:54:29 GMT  
		Size: 29.9 KB (29927 bytes)  
		MIME: application/vnd.in-toto+json
