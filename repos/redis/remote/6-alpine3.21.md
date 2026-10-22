## `redis:6-alpine3.21`

```console
$ docker pull redis@sha256:592b215e9287182f11ba9d7c229dc0ba312bb900a016ea65ae378b0127567319
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

### `redis:6-alpine3.21` - linux; amd64

```console
$ docker pull redis@sha256:d3eff30f5995e647ed7f22bf73987fb0999f19251c3845a436270c431b65a01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11426592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071a0ebd94d6d099c5424bc21e70b474fb3291cf9562f709183624d2483a2763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:43 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:13:44 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:14:14 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 21 Oct 2026 21:14:14 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 21 Oct 2026 21:14:14 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 21 Oct 2026 21:14:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:14:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:14:14 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 21:14:14 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:14:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:14:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:14:14 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:14:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c171a3c3b267f05c610c6ba1213e60b6665ac05160491c80db2f8945857a8ab`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aad93eb3a76ba92ff102368c223082f9680c1b62d37e268320dc73e6720f2c9`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 198.7 KB (198659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcbb96e6f1df696a458495c0125e3d64f47c9de7ed5ce6e16b2ea48c33ecbad`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 7.6 MB (7600858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a125de79649a020115ad64d9c8cdf9a18e4ce2cf24d6eabd7c937b163b96e`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809f6462cf514a343e1e814c7d6a2dddbd72cab28bbe9b74cf523b4b520e2a3e`  
		Last Modified: Wed, 21 Oct 2026 21:14:21 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:bf5e4d062daf3c9f516c7bcf732f092832a8fad9649e52faae8fdf57ad50d231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.3 KB (487283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3219fbb90f79307b43ce92b9abd83de71951d032ef6d26837d8bf94b6e3b54b5`

```dockerfile
```

-	Layers:
	-	`sha256:60cca6d816246e0d1800fcdddff58787e17440bdba1c91238cb8643275f9acf6`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 462.6 KB (462597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a71db89935be061889cb2b1c480a046003c790062eacff2ca47a43c601c0a546`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 24.7 KB (24686 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; arm variant v6

```console
$ docker pull redis@sha256:4125f7b33e52da1e25100b61423d40508fbfa009b2c1854958fe8d5b4e33fd46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11190307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1919dd5906932a6197620aab785401b2b9e68bc48d717f0ebb60acc4ec3410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:40 GMT
ADD alpine-minirootfs-3.21.9-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:40 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:27:02 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:27:03 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:27:37 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 21 Oct 2026 21:27:37 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 21 Oct 2026 21:27:37 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 21 Oct 2026 21:27:37 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:27:37 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:27:37 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 21:27:38 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:27:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:27:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:27:38 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:27:38 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:40cd74899434de872d9e43e368ec1ff6efdcf09301d6c05d53f14b5eedf35167`  
		Last Modified: Wed, 21 Oct 2026 20:47:44 GMT  
		Size: 3.4 MB (3353725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d2eec23645213c19ecbca78e22262051a18396015b7020d194f0a3d0331d7f`  
		Last Modified: Wed, 21 Oct 2026 21:27:42 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7af28ad4b7f5c55466cc0e72d9da3e2af8720e947b38d009982f01641a95b49`  
		Last Modified: Wed, 21 Oct 2026 21:27:42 GMT  
		Size: 199.0 KB (199037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089ac4e9e52b24df7a790dee5639c3e77911c048c05b2b8404bbcd9e74045646`  
		Last Modified: Wed, 21 Oct 2026 21:27:42 GMT  
		Size: 7.6 MB (7635863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce27d1f90733803d4c7bdcd761fb6d04104ec9d27df4367a41594cc45327b`  
		Last Modified: Wed, 21 Oct 2026 21:27:42 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70605edf97cf25dd6c2de3436046d40727371c5b67041fb1477912898a8c507f`  
		Last Modified: Wed, 21 Oct 2026 21:27:43 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:79e52010635768baf3906ed27abeb095d6b43eb301e48d997048abae20ae150b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 KB (24606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b2b3fbe8a36b247abab192bbb86c3071b306cb9b8694d60975365d7d866542`

```dockerfile
```

-	Layers:
	-	`sha256:8923c63fa6e9fd69b8d668e1ac546bb17d4ee1628e619434cc8571702a3455b7`  
		Last Modified: Wed, 21 Oct 2026 21:27:42 GMT  
		Size: 24.6 KB (24606 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; arm variant v7

```console
$ docker pull redis@sha256:9218b15223ab0e5fca47e6de03607e5a5ac2bf7bb55116ee6dcfac5a6a8e8c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10801465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f078cc7ffc48995a846228b6b2ad8cd8608bc2e7017b08564c0ec20717cbaa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:39 GMT
ADD alpine-minirootfs-3.21.9-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:22:18 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:22:19 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:22:53 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 21 Oct 2026 21:22:53 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 21 Oct 2026 21:22:53 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 21 Oct 2026 21:22:53 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:22:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:22:54 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 21:22:54 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:22:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:22:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:22:54 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:22:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d175f631051dbe8da391ec2118442f12ee55587c630f29756bffafb976d0cdc4`  
		Last Modified: Wed, 21 Oct 2026 20:47:45 GMT  
		Size: 3.1 MB (3083552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c7049d3763e13c5171350d694df16b5f5255c55e54f0af9c1df538d6365a7d`  
		Last Modified: Wed, 21 Oct 2026 21:23:00 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2d82bea3d3052b426a6c4b88caa70802a1c8357284b0b6b80e1df9bf0eda4d`  
		Last Modified: Wed, 21 Oct 2026 21:23:00 GMT  
		Size: 197.4 KB (197379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb924257f6509dd37cdaf8b074302a395beb1405b09f48f0770655926b5a77c3`  
		Last Modified: Wed, 21 Oct 2026 21:23:00 GMT  
		Size: 7.5 MB (7518852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481c8c6a83ffb7857878e18add7aad2b46f2e31662a9bb2581a675845a83de12`  
		Last Modified: Wed, 21 Oct 2026 21:23:00 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0e3ea57c5a93e948e50a371d753f40982e003bfb31c48b51603350214d1877`  
		Last Modified: Wed, 21 Oct 2026 21:23:01 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:07f4273ab7be8ad049a6134e3c30627f975c8c7184531fdd50eac902507e6f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 KB (490460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977cd440073881027717242d4e3d989faf18678694daba35c96a97c16191b0e2`

```dockerfile
```

-	Layers:
	-	`sha256:8b63bff23e7f5b72d56d2351627d0eda8332c241e37f5cda52b27927091ce419`  
		Last Modified: Wed, 21 Oct 2026 21:23:00 GMT  
		Size: 465.6 KB (465639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f09c3a716d84fd85b4a5764dbe5213e1994101fa513c6d7198441755acf550a`  
		Last Modified: Wed, 21 Oct 2026 21:23:00 GMT  
		Size: 24.8 KB (24821 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5e7d9b8add11590340a5ee7ba456b89a417101b09a68fb1704e9e3eba412e9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11837907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d273981457225115f3c0fbb95145f81d159f707738b56a0a53b2aec85b20a41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:26 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:13:26 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:15:04 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 21 Oct 2026 21:15:04 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 21 Oct 2026 21:15:04 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 21 Oct 2026 21:15:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:15:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:15:04 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 21:15:04 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:15:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:15:04 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:15:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a5e7d1ff449e642d1fc47e7a2d056613c85ba59507fb4ef57acf99332cd38b`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615df813d045dcd4bcfc0d645dff35acf7cfac72b33a5f92e9422f8fe580b960`  
		Last Modified: Wed, 21 Oct 2026 21:14:20 GMT  
		Size: 201.4 KB (201371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dea1b6ac2e2e569bec36df857dcf4d1f1edbe371035bb200a215a1879a0376`  
		Last Modified: Wed, 21 Oct 2026 21:15:10 GMT  
		Size: 7.7 MB (7660478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59b3ed9b648f3d3973971454241d048083aa36d24472211a196e20a9cc59b77`  
		Last Modified: Wed, 21 Oct 2026 21:15:10 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522e253a900689170dcbda673e5fefbef88774eed64f4e6983b051d1068e0eab`  
		Last Modified: Wed, 21 Oct 2026 21:15:10 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:f0f5354f5e345d692cf5be47a8c60a394ae4989aea3925c7b0069aa0bfe7854b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 KB (487536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a337f19559c9ae44fe7bb481819eacd321a7307c8eb741b882c96097bac1b9b`

```dockerfile
```

-	Layers:
	-	`sha256:51d81ecced5dbe6ddb91c36feb2444bb34580822b0a53341047d7518a692b7d3`  
		Last Modified: Wed, 21 Oct 2026 21:15:09 GMT  
		Size: 462.7 KB (462677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c0d0a4f0fe7568bf7ee79700460381bdf86aaab4c88c190edc69529da58617c`  
		Last Modified: Wed, 21 Oct 2026 21:15:10 GMT  
		Size: 24.9 KB (24859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; 386

```console
$ docker pull redis@sha256:d4056ee3e9a8c63f2963fed1e47f98409b6dec39a53f008864db5b8d0e5bc974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10989090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49626a7cecf2a9f23936024d11e3aa4058b7ae5d62b28fa555859c930f496ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:24 GMT
ADD alpine-minirootfs-3.21.9-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:24 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:59 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:13:59 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:14:31 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 21 Oct 2026 21:14:31 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 21 Oct 2026 21:14:31 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 21 Oct 2026 21:14:31 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:14:31 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:14:31 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 21:14:31 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:14:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:14:31 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:14:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bf6d8a8b6b83b90a5303739e37fc55dde7be20636e63c7e43913e94c8d5b197e`  
		Last Modified: Wed, 21 Oct 2026 20:47:29 GMT  
		Size: 3.4 MB (3448986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e170e8a3864bdae06d9eab8c2ceee8eab6189da1b6e5526024e6e1d3df8c56`  
		Last Modified: Wed, 21 Oct 2026 21:14:37 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427fbd864b04248ddfac4aa89350a45afd02d77c3edd266c600c67581a31b47f`  
		Last Modified: Wed, 21 Oct 2026 21:14:37 GMT  
		Size: 198.7 KB (198656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0f2ac6771d3c797ca92033484c85344bf375c5f2e0da231cf8b40ebc47c001`  
		Last Modified: Wed, 21 Oct 2026 21:14:37 GMT  
		Size: 7.3 MB (7339765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5746f86207a7a86e04d578eaf93b6b0d682fe17f9f438e4a64c76a3812fe63e`  
		Last Modified: Wed, 21 Oct 2026 21:14:37 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f502faff2aa80544b6d14ffb831ff7784af8dee35fc8fb9bdc96ba8c912cae`  
		Last Modified: Wed, 21 Oct 2026 21:14:38 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:22f6e852c37306e1868ae408a69876ba2b55f35c2a2dc95bffb970d614d5645a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.2 KB (487200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b2f0b89cfc6ba8fce8b3d6cffa4d148365f38d14654dfcfaba642f45f52a2d`

```dockerfile
```

-	Layers:
	-	`sha256:79de0c30a0ffcca198d4a902ec97b50e194a42420211a7e64e7762c748d8c0f7`  
		Last Modified: Wed, 21 Oct 2026 21:14:37 GMT  
		Size: 462.6 KB (462562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51134c3d574975e704ccfa09b9231aa16b71878812909c7586fe9b8b0d0d93fa`  
		Last Modified: Wed, 21 Oct 2026 21:14:37 GMT  
		Size: 24.6 KB (24638 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; ppc64le

```console
$ docker pull redis@sha256:ebc9ddf0ba7b52207360bf96278bf87f095c891e3725b7bdf71fb8fddff48ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11957549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0a3d83868496d2dc52eed59a4acd1f760e135430b288be3e3ce88bfb1fd6ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.21.9-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:32:46 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 22 Oct 2026 13:32:48 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 22 Oct 2026 13:36:46 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 22 Oct 2026 13:36:46 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 22 Oct 2026 13:36:46 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 22 Oct 2026 13:36:46 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 22 Oct 2026 13:36:46 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 22 Oct 2026 13:36:46 GMT
VOLUME [/data]
# Thu, 22 Oct 2026 13:36:47 GMT
WORKDIR /data
# Thu, 22 Oct 2026 13:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:36:48 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 22 Oct 2026 13:36:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a081209b48125696a682b02c1c2db84af440ca6edc6d723ef5aff6945b2727a6`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.6 MB (3557985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70bb988bdd7a45cec733ac87a0b3e25fcd4120f4a427e96ccf261975987ae40d`  
		Last Modified: Thu, 22 Oct 2026 13:34:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31151ea50571fbcfbad441f76b71407e562803bcadf77634f6e840bcb897039`  
		Last Modified: Thu, 22 Oct 2026 13:35:00 GMT  
		Size: 202.3 KB (202337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dceafed49ae30392c593b7c035700e38df153015c6cc5d193fd0f6f55aaa86`  
		Last Modified: Thu, 22 Oct 2026 13:36:59 GMT  
		Size: 8.2 MB (8195542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02be4de78c79e79279d1a870f3bb0b05a9f751ad440613ea60a84a23048f498e`  
		Last Modified: Thu, 22 Oct 2026 13:36:59 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b1ee6cad46b479f1a7e1d68180a633fd4248e3a3c4897f72fc5b4af2d96ba0`  
		Last Modified: Thu, 22 Oct 2026 13:36:59 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:549fb0d3d3beaacb18f9174b7954291c6225bc991c104f1ea9366b5ed1247201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc157844769ee0fb4a6694f21c5cc6a1834c2343f40df16c592b484f00d4de7e`

```dockerfile
```

-	Layers:
	-	`sha256:ae38a8566efaaaea7edc61f33cd8e4063ac1786d76458497c64607d5eba6b1cc`  
		Last Modified: Thu, 22 Oct 2026 13:36:59 GMT  
		Size: 460.7 KB (460692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0bca4915b941b5cd4d2a99d0f5db1faf512233c106690d7e5eed899581a7700`  
		Last Modified: Thu, 22 Oct 2026 13:36:59 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; riscv64

```console
$ docker pull redis@sha256:888913271f94b50be5b3b5f811c0e237bb2f087cd17765422a08aa251f6228fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10913175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd7c81539af29953718346e2971a9212e593160f123b7735abb089aad9e5d6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 18 Sep 2026 16:52:31 GMT
ADD alpine-minirootfs-3.21.8-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:52:31 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:01:51 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 21 Sep 2026 09:01:56 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 21 Sep 2026 09:44:13 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 21 Sep 2026 09:44:13 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 21 Sep 2026 09:44:13 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 21 Sep 2026 09:44:13 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 21 Sep 2026 09:44:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 21 Sep 2026 09:44:14 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 09:44:14 GMT
WORKDIR /data
# Mon, 21 Sep 2026 09:44:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:44:14 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 21 Sep 2026 09:44:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4c4570eb9eaaa888fd65dc1c2dc7d575b806ebc64bfc4dfdb52828e1b0679e6b`  
		Last Modified: Fri, 18 Sep 2026 16:52:54 GMT  
		Size: 3.3 MB (3337949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ad0cb469f5d48dddb478e0de154e5e66b0c54456cf1d888bbd7c1f03cb814c`  
		Last Modified: Mon, 21 Sep 2026 09:17:33 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b386287c25be3c5afa1aebca96e8604e30fc9cda8d8b267b9c373e39ac904d1`  
		Last Modified: Mon, 21 Sep 2026 09:17:33 GMT  
		Size: 198.5 KB (198498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fed532bec3b33cb34e71adb479073e1d889a8e00cc265239a938816088e93b6`  
		Last Modified: Mon, 21 Sep 2026 09:44:51 GMT  
		Size: 7.4 MB (7375047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21450345123eba01593632f2e6e34ff18b5f0306efef0177e2462852a070548`  
		Last Modified: Mon, 21 Sep 2026 09:44:50 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8554996a4e4d9cd046ece2acea88e35832d76830898f4dda457e98b002b80b3d`  
		Last Modified: Mon, 21 Sep 2026 09:44:50 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:1dd9fe62dd4488903135052068d50cbfb421c1a5dac8554813e4380ae484c69b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4de5b7f56c8404717fdaccab324b938b812a1f53407ba6d8d3a76526772f82`

```dockerfile
```

-	Layers:
	-	`sha256:e7f18256d0b65e6c0717acdcc89a69ee51e854693d940f2ce23406d4c7b8f2b5`  
		Last Modified: Mon, 21 Sep 2026 09:44:50 GMT  
		Size: 460.7 KB (460688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:355a8571cd7b6055575ec78589f72df8e9e85de3062d041574ca7fab7909e1bb`  
		Last Modified: Mon, 21 Sep 2026 09:44:50 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; s390x

```console
$ docker pull redis@sha256:ba4a13412c3fb9bd4e775232b03bf1e9a00a8a1d1b847f8052f4d1f47a9d9dee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11635354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0f43ab8646d263c9478ad24d3c2474cfe31ff618ef91d2ee9be220268261b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.21.9-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:30:52 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:30:53 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 21 Oct 2026 21:31:26 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 21 Oct 2026 21:31:26 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 21 Oct 2026 21:31:26 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 21 Oct 2026 21:31:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 21 Oct 2026 21:31:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 21:31:26 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 21:31:26 GMT
WORKDIR /data
# Wed, 21 Oct 2026 21:31:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:31:27 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 21:31:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cc391e2d7f1b1e3591532bf08b1b017af1ccd636f7c91f6aaacae43c5f1aee59`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.5 MB (3453137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796b98694f50c167e214b0d25b9686e6db790fca5ba8cf0cbfd6d23bb5251219`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85087ecd1ce22593df92edb63566b0db1275f4cf5a2f5189ac7ad09190050b9a`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 201.1 KB (201061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dcb4abf14f8344cf8c63a1a11cf6969250e2abdcf04f4bc40447f935f435c34`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 8.0 MB (7979474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783f197662e90130116f53ee782290814d41a7879a4a5359935bb7e72d375919`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a538e3ae9fbd2c04eb9db3eeedc355f709519588635e546d75f95575418b00b2`  
		Last Modified: Wed, 21 Oct 2026 21:31:37 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:2c1561345a50921bf8d7536bbba774756d3d42157d3007aabedd3736290f5081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 KB (485332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e16877f346aaf1e5bbf25fb711c173bb83ca2bb0683bbe44293063a580f74c9`

```dockerfile
```

-	Layers:
	-	`sha256:2c7fadbaf11e84d1fd56579738e081d4b5b830f1b7dfa98ed4ac5e5a4e4bf8f8`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 460.6 KB (460646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e781164614a6fadde4e6ecb9d83e3fcee0992e46e4fca01c3876145e0b2796`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 24.7 KB (24686 bytes)  
		MIME: application/vnd.in-toto+json
