## `redis:7-bookworm`

```console
$ docker pull redis@sha256:c6eabf748fc7a61dbb5a705c78bcf3d6377b1127a97d0ce965c11c44ba46896f
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

### `redis:7-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:95acc00495ddacfec75111ba47021f903121a890311d49264c723b4423ac9601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43594077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64035c2c9726d90bea2a217d43da49d7a3f13dde8647c1f409059e02e0e61287`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:37:33 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:37:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:19 GMT
ENV REDIS_VERSION=7.4.11
# Sat, 19 Sep 2026 00:38:19 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz
# Sat, 19 Sep 2026 00:38:19 GMT
ARG REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
# Sat, 19 Sep 2026 00:38:19 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:38:19 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:38:19 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 00:38:19 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:19 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:38:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428e012d30af8cc9965c3b138b9b75021d2a8ec2219488e0b65a2164ed164965`  
		Last Modified: Sat, 19 Sep 2026 00:38:26 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630e622f045e046a8807223150da305fecf8e3e217acb6812c43ae66c4c27f91`  
		Last Modified: Sat, 19 Sep 2026 00:38:26 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65475d5aa6fff0898b40c0487bcd079cdc5bd874d3b8fcb260c4faa4b1d44da`  
		Last Modified: Sat, 19 Sep 2026 00:38:27 GMT  
		Size: 15.4 MB (15352934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855021fb466748cd59a74e975a09be77550ceca16872d2badee5d8617fa365ac`  
		Last Modified: Sat, 19 Sep 2026 00:38:26 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b22123709300e0e1a1f0f1423f309f67603c28e81ccfd39726274df8ac449b0`  
		Last Modified: Sat, 19 Sep 2026 00:38:27 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:065dc5e2164404a0349d36eb340b478ad134535582a0d771e996c8687ea20fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cd8aa217fc4caa8751c78bb9639e54bf0918bd9af480d1ac6f2b1cd1e7c421`

```dockerfile
```

-	Layers:
	-	`sha256:3880a913fe9770fc35eee5baea73b2250a9f4e0c63110adec50084033925d552`  
		Last Modified: Sat, 19 Sep 2026 00:38:26 GMT  
		Size: 2.4 MB (2373154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90b61068cac394dd650eb778a91fa4ffc24526cac4b89a332ea7d678925fee7`  
		Last Modified: Sat, 19 Sep 2026 00:38:26 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:fc15cc04da6cb4dd692ef3ff3f95983a5bf2a1e3b0ba044b210da7696b3cd4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38673065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027e80641fa05fc41ae25f930dce5f9365aa70f7904ca6d66b2df9054cbb476e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:25:45 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 01:25:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:26:38 GMT
ENV REDIS_VERSION=7.4.11
# Sat, 19 Sep 2026 01:26:38 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz
# Sat, 19 Sep 2026 01:26:38 GMT
ARG REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
# Sat, 19 Sep 2026 01:26:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 01:26:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 01:26:38 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 01:26:38 GMT
WORKDIR /data
# Sat, 19 Sep 2026 01:26:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:26:38 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 01:26:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4a99dea7cddf024a0a3efa581465ef005d119a13dfee51ebc15e799a248f94`  
		Last Modified: Sat, 19 Sep 2026 01:26:45 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc017834ffaac730b59cf7fc624af74a6d51bdb2ae1235dc9f802940247aac4d`  
		Last Modified: Sat, 19 Sep 2026 01:26:45 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841bfca88fba2a50c7b433a1b1eed3c14ae147fa4458f6bc9460121534bccc3`  
		Last Modified: Sat, 19 Sep 2026 01:26:46 GMT  
		Size: 14.7 MB (14727246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aad0a468f60f138da456a28d98646019cb443ca41c337e4b0a48d78b5d710dd`  
		Last Modified: Sat, 19 Sep 2026 01:26:45 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:005976b61acb5a1825930faafe8087d624e9bbe8f0a2d4c41e36917ef30276d3`  
		Last Modified: Sat, 19 Sep 2026 01:26:46 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:154fbf47342834238e9cc518074f43f2b84524516b9919d89a83208a12fa80b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5371f7abb0ba42689b0736421f9833abe37af364443ab69dedded587eb15b21e`

```dockerfile
```

-	Layers:
	-	`sha256:782a77414d08ab59bf21ef323882cc1bb03c90c83a5486ee347c5f4f0c92fef7`  
		Last Modified: Sat, 19 Sep 2026 01:26:45 GMT  
		Size: 2.4 MB (2375391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f113eb0699c13591c96a897c4896c92080ef11a6a1d7a41527b188bb582151`  
		Last Modified: Sat, 19 Sep 2026 01:26:45 GMT  
		Size: 25.3 KB (25284 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:cd953e4e9b4725f0d87a2b170c3d313ad641be5370033b46262e07f8010788a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43483278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e81cffaba832bcd71068a6ff772a531076bafdbb1d684195766ae9b6511f5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:40:43 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:40:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:28 GMT
ENV REDIS_VERSION=7.4.11
# Sat, 19 Sep 2026 00:41:28 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz
# Sat, 19 Sep 2026 00:41:28 GMT
ARG REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
# Sat, 19 Sep 2026 00:41:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:41:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:41:28 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 00:41:28 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:41:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:41:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:41:28 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:41:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0d14ce9a6dfd9c1d544175975ba9df48850d57bb0ef3e22117688445fe1903`  
		Last Modified: Sat, 19 Sep 2026 00:41:35 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4fd31191b4076569c4c36325119cb8b69746b4f8300a5ada86a3f354aff93f`  
		Last Modified: Sat, 19 Sep 2026 00:41:35 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c4c860b3e406c6020afbd29c80e15e88a0ec47278405444a850cd9e42885e6`  
		Last Modified: Sat, 19 Sep 2026 00:41:36 GMT  
		Size: 15.4 MB (15356899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9454c7611e2d0ccc79a8b47ba370aff15bbe2cf57b04dbee683b2a684d4c9dde`  
		Last Modified: Sat, 19 Sep 2026 00:41:36 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30aae447741bce19dd21bbcc26e16674f1c81e07652c83f4e48fc12a50cf0a9`  
		Last Modified: Sat, 19 Sep 2026 00:41:37 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:22b6e77cf8b7d8ff8fb85a0e98eb911853fdabe988074cf09d4b9721ecf3e98c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9a33b9a6f8ea179eaa19674f033d7eb1793b80e7e82733ba7bb66edb54e223`

```dockerfile
```

-	Layers:
	-	`sha256:2b2d653a1c7af22ebc68b0338a84ec35542591a8b5bd6e17dc4bc96c70f4bb9d`  
		Last Modified: Sat, 19 Sep 2026 00:41:36 GMT  
		Size: 2.4 MB (2373435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f2ccadc306ce745d24f6f13e211e7647323becc32990e8ac18eabf31052b674`  
		Last Modified: Sat, 19 Sep 2026 00:41:35 GMT  
		Size: 25.3 KB (25322 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; 386

```console
$ docker pull redis@sha256:88a37bfaf53c965cf9a3b82ad8f9e8b9a54eb9ef0f475963ac4e9d2d59e9cd5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44103101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b0390f7019cb1fdc1a4bf4bcdb915a3dd8bb38a8c2cf6c13d7e2956a7c3419`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:37 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:48:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:32 GMT
ENV REDIS_VERSION=7.4.11
# Sat, 19 Sep 2026 00:49:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz
# Sat, 19 Sep 2026 00:49:32 GMT
ARG REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
# Sat, 19 Sep 2026 00:49:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:49:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:49:32 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 00:49:32 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:49:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:32 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:49:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8968a56270b47cdcc94087e7ea598a99d6b4e543678aa6e629c84044f34c49`  
		Last Modified: Sat, 19 Sep 2026 00:49:39 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0467b327133569f3725b159864c71b14598bfd6f94213aeb06cddbadec59e7`  
		Last Modified: Sat, 19 Sep 2026 00:49:39 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eee5db6e0ce23ada1a95e9dba5177ec30ce8d6236e6a4069b9084b2550ffd43`  
		Last Modified: Sat, 19 Sep 2026 00:49:40 GMT  
		Size: 14.9 MB (14874295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645419574b960fd64bd507c016aa10ee816f59da05629a478ffe4eb329dcbb20`  
		Last Modified: Sat, 19 Sep 2026 00:49:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889a6515ec5f296481532bb7111e1df02720f44a22204703cb7188e0f11d2b7a`  
		Last Modified: Sat, 19 Sep 2026 00:49:40 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:894e7aa415f09f185578f888d73eb321ac893d0a3c964bbaf23df17693bccbf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713888df9981c34b94d7a5056e3b726d6e255ea877d8732c0dd9788a77133365`

```dockerfile
```

-	Layers:
	-	`sha256:b10d9770f590572ed26e5b5ced6b4b086b7454882f6c2516d520e93f9f08e0b0`  
		Last Modified: Sat, 19 Sep 2026 00:49:39 GMT  
		Size: 2.4 MB (2370327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d339bc789855edcdd00d3d753150a9c0edbe934fecccdc659584cdfeca364ddb`  
		Last Modified: Sat, 19 Sep 2026 00:49:39 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:366e474a5775fcc0bee81e415522615f507bf1c1f15590d98c2b9df489df4f75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48606940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8351d7cbdf944c6ac4a932dc5d811aa3ffd9812b15e83214104aa44763c4663a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:08:14 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 03:08:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:12:57 GMT
ENV REDIS_VERSION=7.4.11
# Sat, 19 Sep 2026 03:12:57 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz
# Sat, 19 Sep 2026 03:12:57 GMT
ARG REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
# Sat, 19 Sep 2026 03:12:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 03:12:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 03:12:57 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 03:12:57 GMT
WORKDIR /data
# Sat, 19 Sep 2026 03:12:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:12:58 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 03:12:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5497676f065e58bd230374626f35033659ac7fb31d85b95e88c56902bacf102`  
		Last Modified: Sat, 19 Sep 2026 03:10:36 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de90514e41b900da2af46bcea581d99bca486c053e06c181a6930e4b7e72748f`  
		Last Modified: Sat, 19 Sep 2026 03:10:36 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e5fcdaacbb75306e91bd60f2dffc809d9e0d9ad7fc7611c5bc182a372fedc1`  
		Last Modified: Sat, 19 Sep 2026 03:13:17 GMT  
		Size: 16.5 MB (16520670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da92cecd39fa27e3f26fc08d07c36ae7b8cf24defd0923e1a96a7517949be8d`  
		Last Modified: Sat, 19 Sep 2026 03:13:16 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3fc1d91ae8d2500c3ed6dceb0f2ad28dc16728f5b3782570de60367e7aaa3f`  
		Last Modified: Sat, 19 Sep 2026 03:13:16 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:0fba201cee42344048929a72d958664f58e060d68c235b19490284a4a4e0f751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19df12d6aa94047b738990aa3d7bda554b51edf1fce08da3efedf99d15365d2`

```dockerfile
```

-	Layers:
	-	`sha256:2ecbce7ce6ad583a3cc6565f5e4a1baa9d3bf17c54f14007a574cb799227d055`  
		Last Modified: Sat, 19 Sep 2026 03:13:17 GMT  
		Size: 2.4 MB (2377548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa3b350de62973a696ac5901f6adcdf7a822d5b0922c2960a0585e2ade1a6e97`  
		Last Modified: Sat, 19 Sep 2026 03:13:16 GMT  
		Size: 25.2 KB (25211 bytes)  
		MIME: application/vnd.in-toto+json
