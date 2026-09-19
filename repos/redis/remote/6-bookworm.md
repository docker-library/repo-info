## `redis:6-bookworm`

```console
$ docker pull redis@sha256:d2ad7b21cafa37d8caa224d4988fe8b80fcdba3d3c81978785a8a8a6b01ac395
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

### `redis:6-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:847bd1e88311bc5ec18f1871b3cf18903a1d56f497c26eee518677bc2e299527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38739468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db1c86a77d4716f27a8a4232f210aca8d487c23a14c091f0dd5ead9cce46a3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:37:41 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:37:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:22 GMT
ENV REDIS_VERSION=6.2.24
# Sat, 19 Sep 2026 00:38:22 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Sat, 19 Sep 2026 00:38:22 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Sat, 19 Sep 2026 00:38:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:38:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:38:22 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 00:38:22 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:38:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:22 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:38:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de84868315b0022e81a4af8566590038157e281378a35cb6c6baff0f6b6ea5e8`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f404ef18014ea21186c63251b6bf631ca0a2b1fa0db40bb88700f9a4747f6666`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494a15cd495e6782155d613cfb1c6859d90e28f458eb6a73a43b52f911b77181`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 10.5 MB (10498322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74bd06c19d3b78b484c5ecdba4a983faa0d65f1b11295a54158c3ab3ed625ed`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3992d05123e72eb0653a815b86e8fc01eb10e2ead2b82a9d0ffeb0dfd4cf9b`  
		Last Modified: Sat, 19 Sep 2026 00:38:30 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:45c4d615d886dcd3757e1b6aed882bcf25526682e417374553fecd7a2cf40355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee811294beabbe1f1d060d1dcf9fba4fb313943881c94be72721191ae317db9`

```dockerfile
```

-	Layers:
	-	`sha256:70dfffa76b0220104f75bfa7688f4ba68ba2a38011f51a6061dc4445de565d5a`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 2.4 MB (2373154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b57fb4b65f2f68c59a691608a0810e8cd1ccd3cc808eb35e6f057604c683d502`  
		Last Modified: Sat, 19 Sep 2026 00:38:29 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:608bdbd6fdea5af6b8c851bcfb5ac59140fc30c0800f6d01166b07e5aa40a503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9afa13d98bc89f07cc83cde712407b585fdce946209586812520dac402abdfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:31:53 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 01:31:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:32:39 GMT
ENV REDIS_VERSION=6.2.24
# Tue, 25 Aug 2026 01:32:39 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Tue, 25 Aug 2026 01:32:39 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Tue, 25 Aug 2026 01:32:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 01:32:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 01:32:39 GMT
VOLUME [/data]
# Tue, 25 Aug 2026 01:32:39 GMT
WORKDIR /data
# Tue, 25 Aug 2026 01:32:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:32:39 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 01:32:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a18d2fefaafe6d4482e71a0039dc57855b5ac73fa5f02fd77d46563dacaa013`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb163577f839b0b840903f5004c4d307a22ff6f9d9f27304e88235ae5c99168`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686ad4cee297c1b9cf0b3cea8b7190004054e7f5c618d1fcfce1e047e751183a`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 9.8 MB (9795570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780a556f7d759d922ec44db001db60fc4e61f9f254e9a6084705dd6cf085613d`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e6489a6bb6843c495392f5d60d6bd99b58ede85835127d20f78d17246853cf`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:b0789e5c42d6c4eeb9ff38cae1c412995195a4399bd9e5ed6dab94d77b1cf116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3678fdc98732137b4567a88078d16cfd8ff1914dd1635420b47e4a4af689f2b9`

```dockerfile
```

-	Layers:
	-	`sha256:20d88d71047d304e47b80451375426948a51eec9d66a1672beb2797a7e7e0cd5`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 2.4 MB (2375355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b2a10170a373011548ee2b849657e0ef5eb5876be62666bdd99de7a2b66e9f`  
		Last Modified: Tue, 25 Aug 2026 01:32:46 GMT  
		Size: 25.3 KB (25279 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:84c653fcfcae5bd4a27b6db3493801b19074eff1634e73b85ad25d1f2e3003ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38568777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab7bb75bcaf3b739789fe2d084618c324e8af8e0e38bce084262d0b09baf347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:41:01 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sat, 19 Sep 2026 00:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:41 GMT
ENV REDIS_VERSION=6.2.24
# Sat, 19 Sep 2026 00:41:41 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Sat, 19 Sep 2026 00:41:41 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Sat, 19 Sep 2026 00:41:41 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sat, 19 Sep 2026 00:41:41 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Sat, 19 Sep 2026 00:41:41 GMT
VOLUME [/data]
# Sat, 19 Sep 2026 00:41:41 GMT
WORKDIR /data
# Sat, 19 Sep 2026 00:41:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:41:42 GMT
EXPOSE map[6379/tcp:{}]
# Sat, 19 Sep 2026 00:41:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033590080c070776f26758e7e34df8a3b3c7320fd5130e5a0ec2fe0a6baad256`  
		Last Modified: Sat, 19 Sep 2026 00:41:49 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df4caca1b2ca5a7364bd6b1def1bd58ddcc9accff94cdf36ba1112dfba1fb85`  
		Last Modified: Sat, 19 Sep 2026 00:41:49 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9ff1065b2fdcea131ce02a35654005d5792d16ca787701959559e01569c437`  
		Last Modified: Sat, 19 Sep 2026 00:41:49 GMT  
		Size: 10.4 MB (10442395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262d33898ea8a5e5d84fb61d272651a419609a5396b1cdc754dfbd60b4804836`  
		Last Modified: Sat, 19 Sep 2026 00:41:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b8ebf657a73cc313316e48858eb8ea18bf47a319020d10a9fbcaec749889b6`  
		Last Modified: Sat, 19 Sep 2026 00:41:50 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:ccb6828bf22e7fc602ec00f1754b90757798d28ee9a28409b0c652f87ec50dee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996e074776e8a7e2356a4f0a44948ff71de00dae87329d950a694ec7c3d0dc41`

```dockerfile
```

-	Layers:
	-	`sha256:8f298108b07f9ff3b0fd8ed850e7624a7bee526245beb359a31f94d54590344f`  
		Last Modified: Sat, 19 Sep 2026 00:41:49 GMT  
		Size: 2.4 MB (2373435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3a7f66f0a9a1f327227b2b8e8fdc80f1a6643f706e80731c63fa71c835ecfa`  
		Last Modified: Sat, 19 Sep 2026 00:41:49 GMT  
		Size: 25.3 KB (25322 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; 386

```console
$ docker pull redis@sha256:1c4819c85d8b66956838e8c2e515bddff8a6213956c5922809d1a5551a5f6603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39453706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e34ea75f32ebe077934ec0cf318f42efc515cef83142e2c9e5f05ffa633f1bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:16 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 00:50:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:50:59 GMT
ENV REDIS_VERSION=6.2.24
# Tue, 25 Aug 2026 00:50:59 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Tue, 25 Aug 2026 00:50:59 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Tue, 25 Aug 2026 00:50:59 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 00:50:59 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 00:50:59 GMT
VOLUME [/data]
# Tue, 25 Aug 2026 00:50:59 GMT
WORKDIR /data
# Tue, 25 Aug 2026 00:50:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:59 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 00:50:59 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87b700bbc4b911c7eb4e2a1ff96a1195bc43c7f6e838ee5328995ec1816153f`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24cf7c58d7c18db3e0d990a43686c2e7bf30f5c5f220d0d192cd49b50dcee9c4`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b04d6dab97f10bf89d1e4ca310f156b2a5b137256f042201aca323029d708b3`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 10.2 MB (10229946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ff2eeef3c499044571ca697c3301cee877f8813054203eea8af44a29ae3c45`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca541514ab19e5ba471ae86083643cc40986cd6c380458e51311abaf9bb563bd`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:f3cbebf1d6246e1a1b37f03c0960f8f088f7134ebee0b0933175bb35c069858b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef4ebb1e246d8c66647e91016a58d21cce92bafd9b6bdafa8ace85929d8f796c`

```dockerfile
```

-	Layers:
	-	`sha256:d25c5fb4218a9288a66279fb55d223e1650c08b1c27d8e0eb6913f5d659edec1`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 2.4 MB (2370291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328c76233addb159e0d03b452ce01152b1d0d4b43787765f7b7af98dfe330fdc`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 25.1 KB (25100 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:739a61fe5d02741b97e563b97893808bcee61bdb27774844edf5416565d3cb90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43423906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af0901605a36bdd61233c5b4a413a60c02b644d5d5c027988db81d4ef215066`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:30:52 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 25 Aug 2026 03:30:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:34:21 GMT
ENV REDIS_VERSION=6.2.24
# Tue, 25 Aug 2026 03:34:21 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Tue, 25 Aug 2026 03:34:21 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Tue, 25 Aug 2026 03:34:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 25 Aug 2026 03:34:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 25 Aug 2026 03:34:22 GMT
VOLUME [/data]
# Tue, 25 Aug 2026 03:34:22 GMT
WORKDIR /data
# Tue, 25 Aug 2026 03:34:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:34:22 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 25 Aug 2026 03:34:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2853f49238d737afdb84802259dd970470e3768e919e9b1334fde661fb4c3ec`  
		Last Modified: Tue, 25 Aug 2026 03:32:44 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17007e258c88ac2f9d7d55bc577ca5ffd091d589767d92513321af2059825d4e`  
		Last Modified: Tue, 25 Aug 2026 03:32:44 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea49eeec4d2605df27342722f6330c3e69c15e407b71edcc3dd2f8f03029403`  
		Last Modified: Tue, 25 Aug 2026 03:34:39 GMT  
		Size: 11.3 MB (11344725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aecf8409c3b3bd6edeed0cefb69988b473cbe23e891c8c411be4593727bbfef`  
		Last Modified: Tue, 25 Aug 2026 03:34:39 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e863797d6ad082f7c00d8b0ee626ff702120e86b662f3f1396c392745e5b560`  
		Last Modified: Tue, 25 Aug 2026 03:34:39 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:a2e24d89511fb8c521849a4c1aa2a1143269c469725400e15ae96ce295d2c076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a81bc41a49cd7610e5b7e0e3c4c2ec4d40b309e7d1ba7aad423a20dc480793c`

```dockerfile
```

-	Layers:
	-	`sha256:5ac8902538b20e244f34c80d2b3ca4d0e5794b61ca60a215b0804fde2c143912`  
		Last Modified: Tue, 25 Aug 2026 03:34:39 GMT  
		Size: 2.4 MB (2377512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e961afa1db4c31e62f41a65b92b53005aa29e8d53f7cb83b4988cb23aa425f6`  
		Last Modified: Tue, 25 Aug 2026 03:34:39 GMT  
		Size: 25.2 KB (25211 bytes)  
		MIME: application/vnd.in-toto+json
