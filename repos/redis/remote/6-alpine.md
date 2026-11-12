## `redis:6-alpine`

```console
$ docker pull redis@sha256:3f9c6e23ed6bea3b41d0ef709fc164c1a0b7c00d5a21a60e0e9c33ada5496881
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

### `redis:6-alpine` - linux; amd64

```console
$ docker pull redis@sha256:b2a56a05598dcfe4703818149ede7248ad2f6d1b1112b6ddd462f065b4189dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11597115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7591c8f8a3f00d7fb5ea8a660407c21103b7516d1d3b4cf32774a3b090d91017`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:09:44 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 09 Nov 2026 20:09:45 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:10:11 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:10:11 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:10:11 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:10:11 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:10:11 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:10:11 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:10:11 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:10:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:10:11 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:10:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da32f0fcc36875dab5dedb8e4d615f5a7884ea8e36e1b8e9ea0fae6a0a54652a`  
		Last Modified: Mon, 09 Nov 2026 20:10:17 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21771dca032fad5465d17a95c723949ad66e98fd2edb77cf45bdff605e78c390`  
		Last Modified: Mon, 09 Nov 2026 20:10:17 GMT  
		Size: 200.3 KB (200309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac1da9bccfbd991cecd5bbcfe70cda3446c8d6acdb45d99fb33e0eac7d48b0e`  
		Last Modified: Mon, 09 Nov 2026 20:10:18 GMT  
		Size: 7.6 MB (7600747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05f272286504bedf68e48af8a07be538cdbc0daf1cce6e83d8bfd087cfeb0c`  
		Last Modified: Mon, 09 Nov 2026 20:10:17 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4902bcd60effa49d410fd6b2899c1d701d9f14d3f2afc4c2520e640862518e`  
		Last Modified: Mon, 09 Nov 2026 20:10:18 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:44cf2b475d447a6f94b1354bab1feeac806cb7d31c99fc9b0f8edc4690456c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.1 KB (488057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a00a0a0f41a73f4f993f89b980c2095551e9b4b20a4a0809630c1a4bdcc197`

```dockerfile
```

-	Layers:
	-	`sha256:e40dc152bebe6ee7b73e7fe788e31bf1f9e982906b7654ace67f2300ff60422e`  
		Last Modified: Mon, 09 Nov 2026 20:10:17 GMT  
		Size: 463.4 KB (463371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be0aca122e29d9b5e52f9dc28ac888169fa16832c868db65ff35f9c1faa54362`  
		Last Modified: Mon, 09 Nov 2026 20:10:17 GMT  
		Size: 24.7 KB (24686 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:02610de14f1d6e2d22edb45d856c4d6905ab121c8dc3d51ce9f0b349483d9430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11339741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f81255678f279af923850a36f7e2838aef566312c25103c833c3490d604571b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:08:23 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 09 Nov 2026 20:08:24 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:10:00 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:10:00 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:10:00 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:10:00 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:10:00 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:10:00 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:10:00 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:10:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:10:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:10:00 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:10:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c9542632469c6c7dcb2feb3761a5842e4581647f4be88a823c83ab3228b336`  
		Last Modified: Mon, 09 Nov 2026 20:09:17 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f3a52ed605dee8ea5250296abf8470f4945d44ff7594fe02d4376fb87dec66`  
		Last Modified: Mon, 09 Nov 2026 20:09:17 GMT  
		Size: 200.5 KB (200518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d33ba74ac3f856bb18c3596390f81c1d6a52d971ccc263497425b364988c4d`  
		Last Modified: Mon, 09 Nov 2026 20:10:05 GMT  
		Size: 7.6 MB (7636006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91050d183890a2e62efbc2ba4f946bdfbc7608e262811916175e9f37f66633bf`  
		Last Modified: Mon, 09 Nov 2026 20:10:05 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f18ae82f331720b1a9d62add51989bb6dedf59c50f184185dca3a172a0f5e7`  
		Last Modified: Mon, 09 Nov 2026 20:10:05 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:cc1c6fd900a26a30a5bb13e7928dd61173c53577561727748445193bc497c193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 KB (24606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c798e265743be72431b77cc4b51d028c99acd69d6033837e72c232e7967ce71`

```dockerfile
```

-	Layers:
	-	`sha256:ccef564fbe49a0e29da6bfd1d30ba7ea1e95b753e36b22de292ae33ea504e3aa`  
		Last Modified: Mon, 09 Nov 2026 20:10:05 GMT  
		Size: 24.6 KB (24606 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:b3dc59bc3ae9f0185be9db5c3eb824c15f3c2e8e60a5746bfa5b7b2968a2e726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10934595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c1bf41f9aff8c884d20d31e14685dd33d33c66488bc0ef300c580e5c94949a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:08:27 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 09 Nov 2026 20:08:28 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:10:03 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:10:03 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:10:03 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:10:03 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:10:03 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:10:03 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:10:03 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:10:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:10:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:10:03 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:10:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2bd983d9e24f65b3ba5696f207b595663d9d60471eef61e675d29d7ba94473`  
		Last Modified: Mon, 09 Nov 2026 20:09:21 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22770cf2c6261233bca499bdeefc446892a188192e56e52be9dba8e63d852eda`  
		Last Modified: Mon, 09 Nov 2026 20:09:21 GMT  
		Size: 198.8 KB (198777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b4ad591d0724b4e024da91801373c8d9b8042b6da09156d7191444e24dead1`  
		Last Modified: Mon, 09 Nov 2026 20:10:09 GMT  
		Size: 7.5 MB (7518669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0637b75f3eddd1e341b18ed5842124f680ec9253ac80ed92c6063ef0c6d0b5`  
		Last Modified: Mon, 09 Nov 2026 20:10:09 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5d721bc184f15b9b38cd03a2a20c84be6670bb22777ffba96833bce417e9f9`  
		Last Modified: Mon, 09 Nov 2026 20:10:09 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:a45bdabb51dc60506d72a2a004e3a41249c66f3c43e02a96a4fc27bf0f4f3ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.2 KB (491231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac3f8c013b821b2598bc9f63e4fb1b39d3225bb920c48af78cd1ea67e2027e9`

```dockerfile
```

-	Layers:
	-	`sha256:172e9d583d369875f7f65659eb09c8b71c52b9d4a4c6d6e47420f7d8aa094064`  
		Last Modified: Mon, 09 Nov 2026 20:10:09 GMT  
		Size: 466.4 KB (466413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:304a00f1ec7053cdcad689317161ba0fea788f9e167704995ab5f19195d2d5a5`  
		Last Modified: Mon, 09 Nov 2026 20:10:09 GMT  
		Size: 24.8 KB (24818 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6e8cfedfc77fce5f769643e28d39d60fc3e759f64b6b39f59144a9e722d42ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11991378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626a591e08a4585590164d14dc224319a7379aa9790c2b93d72266fe2f25026f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:08:44 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 09 Nov 2026 20:08:45 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:10:13 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:10:13 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:10:13 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:10:13 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:10:13 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:10:13 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:10:13 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:10:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:10:13 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:10:13 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb602ba0b128d2aa8bf740a77e8c75028a8d273929358554ed76e493850c9448`  
		Last Modified: Mon, 09 Nov 2026 20:09:33 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe75981dbacefbefdba2a25f85c7e6f6c4842276e0b3f01484e9fc1af12e933`  
		Last Modified: Mon, 09 Nov 2026 20:09:33 GMT  
		Size: 202.1 KB (202108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cda0c44b47fd7fdd16465a5be0f39f198aff9996953a53b94ff7c484549a9b4`  
		Last Modified: Mon, 09 Nov 2026 20:10:19 GMT  
		Size: 7.7 MB (7660206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde367d73e11a8177b6423cc9c586d795d0734eb0d8fc94c8ec36b0860e655ea`  
		Last Modified: Mon, 09 Nov 2026 20:10:19 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e53fe75585ed3bcb0175653459a5412d424c8b1f35b464bce57ebeda3b531e1`  
		Last Modified: Mon, 09 Nov 2026 20:10:19 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:e9c9f11cd3a8e2e85562bffc21992a9b6fbea4ada5c6c414751abaab440f6169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.3 KB (488310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7aeb8c8732281e376d6caa579f31024f0abbe8331532c0035cf82004ec45f4`

```dockerfile
```

-	Layers:
	-	`sha256:5e6f09fbec2f2764ee6e6c27dc734b6347dd2093a5652e5abe4875523c08b9d1`  
		Last Modified: Mon, 09 Nov 2026 20:10:19 GMT  
		Size: 463.5 KB (463451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f98029a4f0a1782a7ba51e48f6d74a022a4402772176994044be98fa59a546`  
		Last Modified: Mon, 09 Nov 2026 20:10:19 GMT  
		Size: 24.9 KB (24859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; 386

```console
$ docker pull redis@sha256:69cc59947170eb4c499d99b35e41608f7ec48258a591c42c30f32104db837204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11155673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f88dbe6b46c0c2f896bb9f6cd235de5cec0223c0ed5a7a65c56cf185dc7c577`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:25 GMT
ADD alpine-minirootfs-3.22.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:25 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:09:52 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 09 Nov 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:10:21 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:10:21 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:10:21 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:10:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:10:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:10:21 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:10:21 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:10:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:10:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:10:21 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:10:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fd039ef8ccef5ed7275f159020694fbd23bd01317ed3a82428afbe0712175c8`  
		Last Modified: Thu, 05 Nov 2026 18:01:31 GMT  
		Size: 3.6 MB (3613476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b36236d42913a5a8f5eddc91bd6ac32aee2b8dd590816ed493a91bd95d759e7`  
		Last Modified: Mon, 09 Nov 2026 20:10:26 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b49b38407b2a7076d81ac39f2772488d6ebae414dec2ee80e24e8c48e9eb63b`  
		Last Modified: Mon, 09 Nov 2026 20:10:26 GMT  
		Size: 200.7 KB (200699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7ba7bbbd0ee2043a4f65bde16c18bb64fbf330b56eb165d69eb26182a8e4e7`  
		Last Modified: Mon, 09 Nov 2026 20:10:27 GMT  
		Size: 7.3 MB (7339820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327b1f606cc612082c05d4c24b4f14a44be666ccdd4dd596867ee751b79bae6c`  
		Last Modified: Mon, 09 Nov 2026 20:10:26 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bd81517581a7b78c19b92b7ad3181330f67223f811a503882be61b310045d8`  
		Last Modified: Mon, 09 Nov 2026 20:10:28 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:629c78ba31a8e3f8815f3161aacddaf0cf176fe8baf11d27bf78a74a0d5a8223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.0 KB (487970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0221b6f486fc06a16cd54928fcfcbf4b5056d1867e498adf7cc1a897a8cdaff`

```dockerfile
```

-	Layers:
	-	`sha256:df71a102d4a7073a2872e0b881979835873dcf54a6312993a5f1a05d8ffd829b`  
		Last Modified: Mon, 09 Nov 2026 20:10:26 GMT  
		Size: 463.3 KB (463336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65261fe5d6ddb123835bc14edbae76cd849582d5a2fefb3ded41435cf49de68d`  
		Last Modified: Mon, 09 Nov 2026 20:10:26 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:80d5bcd0267b0a09dbe2fe85fad83d1f537af670b8a577e4675e5663ce8b1f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12125792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94018e90832a2b31b9757ac7fcf503e2cb9c64781939e85bfee5f1fe8d994b79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:29:13 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 23:29:21 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:12:25 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:12:25 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:12:25 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:12:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:12:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:12:25 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:12:25 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:12:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:12:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:12:25 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:12:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d87a0e83b6aeb16ad15307e574941891064b6ab61e93062eac57642fba6759`  
		Last Modified: Thu, 05 Nov 2026 23:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1be47024bd22cf6acfc23cdd444bacc131f03e96d0c32733e607571789e1aa`  
		Last Modified: Thu, 05 Nov 2026 23:32:09 GMT  
		Size: 203.1 KB (203107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016f14b117ebc6e6f45386ade522d454695a928fe09c84aa455dd012e6061c52`  
		Last Modified: Mon, 09 Nov 2026 20:12:40 GMT  
		Size: 8.2 MB (8195491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e341d5bcd1e524a4e65113156d601aed9cf45fc30699f8c60e2c10e54da7b21`  
		Last Modified: Mon, 09 Nov 2026 20:12:40 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960a914dc38a8183c6040fe8082c7111e17cea89d74dffbc0109ba75a03f1aa4`  
		Last Modified: Mon, 09 Nov 2026 20:12:40 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:4467295d3bc71a3cd1f2d3b7c66d5d2c0d0e037d548d0be3f238f9177046a7d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.2 KB (486210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791ef278cba3168197add3668b1d310bc9bb07aa60d2b93ee71d0328b6584aa2`

```dockerfile
```

-	Layers:
	-	`sha256:28d46cadab572cc31085d4a80c06624174481f19492f6974339b003f9d9ed9f2`  
		Last Modified: Mon, 09 Nov 2026 20:12:40 GMT  
		Size: 461.5 KB (461466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5da70fecc94c97d4c85cc48ca9ffc273e791c47505b2e06f347073a348c95b`  
		Last Modified: Mon, 09 Nov 2026 20:12:40 GMT  
		Size: 24.7 KB (24744 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; riscv64

```console
$ docker pull redis@sha256:d8ec408d4746fc45b0cfb22caf59a1d06e675a56b19865c8233a7be8111f49e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11089849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55d2ba14eb45a0d26957d735f79bb9bb6450262c414d22c309cdbff02a3ed79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sun, 08 Nov 2026 12:38:25 GMT
ADD alpine-minirootfs-3.22.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:38:25 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 21:04:43 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 11 Nov 2026 21:04:48 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 11 Nov 2026 22:30:04 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 11 Nov 2026 22:30:04 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 11 Nov 2026 22:30:04 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 11 Nov 2026 22:30:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 11 Nov 2026 22:30:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 11 Nov 2026 22:30:04 GMT
VOLUME [/data]
# Wed, 11 Nov 2026 22:30:04 GMT
WORKDIR /data
# Wed, 11 Nov 2026 22:30:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:30:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:30:05 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 11 Nov 2026 22:30:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:89533e1a1a5a89d7e2d7d280a92bc335cdd20828db19882bac5a6d9678e1c409`  
		Last Modified: Sun, 08 Nov 2026 12:39:00 GMT  
		Size: 3.5 MB (3512926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865ef8c7403f058dea03d9e7bb79ef79eb45aeb82d6014f164af1380ebe6ff0`  
		Last Modified: Wed, 11 Nov 2026 21:23:46 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a0d0950887fdd480f11b927b3e00014406612cbf2611fd583c2b585a38d796`  
		Last Modified: Wed, 11 Nov 2026 21:23:45 GMT  
		Size: 200.4 KB (200426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2c65e78f9406ad2ae552d107c79286ea1e7867aac3268d4c26bb6933a52a91`  
		Last Modified: Wed, 11 Nov 2026 22:30:53 GMT  
		Size: 7.4 MB (7374815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d477e5d2dfc8a0f20a05d8b36dea0751bc05336252da7f1979de37e89a1c9b`  
		Last Modified: Wed, 11 Nov 2026 22:30:52 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2bb8ca2d22c3a4b5972b3cfd86e6ca480d2ac0c043ef962bf63b56f969563`  
		Last Modified: Wed, 11 Nov 2026 22:30:52 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:c0b6baccf194a5cae73afeffd62c36a7874fa5927029bfd64a0a2c06570b198e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.2 KB (486210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a476140cad54c50ff648fc1cbbbe6304d787d3180787d60897bdcb5bf7d32c35`

```dockerfile
```

-	Layers:
	-	`sha256:009bd982ad4e33e46779ced79815bc5dcd06e3ef7b6ca1f456b1d2f7cb3c24ce`  
		Last Modified: Wed, 11 Nov 2026 22:30:52 GMT  
		Size: 461.5 KB (461462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f573b76362a684861f8d92cfd460e2d137ae30123bda6302e74cff02fec5d574`  
		Last Modified: Wed, 11 Nov 2026 22:30:51 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; s390x

```console
$ docker pull redis@sha256:4a0042c0f039cbd5c0e5b8260c545872d7d88718b5a70df3cd5322ba803e2599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11827021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a6bbda859f5156f3eae13e8735a876fbd1db9cd563430121c10650656926e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 20:06:54 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 09 Nov 2026 20:06:56 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 09 Nov 2026 20:09:26 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 09 Nov 2026 20:09:26 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 09 Nov 2026 20:09:26 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 09 Nov 2026 20:09:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 09 Nov 2026 20:09:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 09 Nov 2026 20:09:26 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 20:09:26 GMT
WORKDIR /data
# Mon, 09 Nov 2026 20:09:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 20:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:09:26 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 09 Nov 2026 20:09:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffc1a83a5fe28a944d1036062d53694825366af18a749a99b87a693e0d1c9ef`  
		Last Modified: Mon, 09 Nov 2026 20:08:30 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679a671e0230e09675ebcd90d0a583d669b90a79d02713ef981f13430b572a03`  
		Last Modified: Mon, 09 Nov 2026 20:08:31 GMT  
		Size: 202.4 KB (202432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af69792b6b10811b684931a01931482ae52115793a79e5e5fefdd209e305beb`  
		Last Modified: Mon, 09 Nov 2026 20:09:35 GMT  
		Size: 8.0 MB (7979705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8978eba2bb2d79e10670584adeab88847f196eace4f23672e93ba9e5d60864c`  
		Last Modified: Mon, 09 Nov 2026 20:09:33 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6300c9633cd845044991d88ff93e7e63a714e621d1cec11c6e4e3ea460754a9`  
		Last Modified: Mon, 09 Nov 2026 20:09:35 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:6e9278418529697cc6d73be09ba424d065736351a333e7469b5a005f4a774e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.1 KB (486106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fdf42c75fdce45dd24e1aaa050301738e277416512a19bbad66b3bee81dc0a2`

```dockerfile
```

-	Layers:
	-	`sha256:e40261bad711d865e5838b02d5d8e66a77f542fde4ea5581ec61f146d0f8da08`  
		Last Modified: Mon, 09 Nov 2026 20:09:35 GMT  
		Size: 461.4 KB (461420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d478c91cb2b1e8f9f0013c2e85ff6beb1275f1be484058c5a3de6934404297cf`  
		Last Modified: Mon, 09 Nov 2026 20:09:35 GMT  
		Size: 24.7 KB (24686 bytes)  
		MIME: application/vnd.in-toto+json
