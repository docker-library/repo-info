## `redis:7-alpine`

```console
$ docker pull redis@sha256:6ba19c50b56777f5c11c58eff8ddb69d0d5f27ba131cffb63f180ccfd43c66af
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

### `redis:7-alpine` - linux; amd64

```console
$ docker pull redis@sha256:1cf73a2f04808e55a8bd2f5706c2aa0ebb0f71938f93deb7af79f48311cd5cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16243847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c6ca8f397f86e469be752c3e7ed5eb8b17f2479840cb69a2e413037038e9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:39:38 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:39:39 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:40:19 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:40:19 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:40:19 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:40:19 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:40:19 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:40:19 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:40:19 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:40:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:40:19 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:40:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a239ec2b8fe1e78c4e5e0709c005f5c182baa5794886e4a6f2103d960b127dfd`  
		Last Modified: Mon, 26 Oct 2026 16:40:25 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef7ad5a05c66da3d345dfb693d9bd9136d1f461641d51b8896025caa1a5eece`  
		Last Modified: Mon, 26 Oct 2026 16:40:25 GMT  
		Size: 198.7 KB (198664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea868e596ec1e0fb4d6a5c38c03f4941e2bbb7628dccf45c15e376d55067335`  
		Last Modified: Mon, 26 Oct 2026 16:40:26 GMT  
		Size: 12.4 MB (12418105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae75cb664c8fd47f43aa42c74e7760e3abd5d92c8524cb4c86ecada74e66c491`  
		Last Modified: Mon, 26 Oct 2026 16:40:25 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25d07126ba7327f8e77f091b088a39f0cbbff389dca17dc714868f08d0a7d55`  
		Last Modified: Mon, 26 Oct 2026 16:40:27 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:e734018a3bc60138d82e1084e231149b53bc8dcd5179c9e84bf21f32e94d5f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.3 KB (487287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4eff6f8e6c748698987784422ea328586b994b4423ebe6829f0e70e9f4623f1`

```dockerfile
```

-	Layers:
	-	`sha256:4d584b19579f15b2d189c736a0264d2f6143d09499221f9d8b297be8f2b4f118`  
		Last Modified: Mon, 26 Oct 2026 16:40:25 GMT  
		Size: 462.6 KB (462597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5e4a0ae9c7c176abe5548d7a7aacbcf409425daef5f10b0bb7af4255b5f0705`  
		Last Modified: Mon, 26 Oct 2026 16:40:25 GMT  
		Size: 24.7 KB (24690 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:bc2bba1a24309c2f804a75c7875b82c5cd3be24b03da4d9cf86c139b071341d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16137329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba786cd01edacf394ea25800c4303878870fc4216500cc7d309e42e054a42b9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:40 GMT
ADD alpine-minirootfs-3.21.9-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:40 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:35:13 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:35:14 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:36:06 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:36:06 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:36:06 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:36:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:36:06 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:36:06 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:36:06 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:36:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:36:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:36:06 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:36:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:40cd74899434de872d9e43e368ec1ff6efdcf09301d6c05d53f14b5eedf35167`  
		Last Modified: Wed, 21 Oct 2026 20:47:44 GMT  
		Size: 3.4 MB (3353725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e204d4e5d1f60b6ef56c2db8558182bb77a8e83fbda8de29514f23b2279c73c`  
		Last Modified: Mon, 26 Oct 2026 16:36:11 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7da40c23ddc8fbb3b01d8113a297d9e4cc565dc525b4923fd81389a8d36454`  
		Last Modified: Mon, 26 Oct 2026 16:36:11 GMT  
		Size: 199.0 KB (199043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fde03c4481c092050751e5e0bad6f399bbc8bab83698a0e89a1ff7b204f7eb`  
		Last Modified: Mon, 26 Oct 2026 16:36:12 GMT  
		Size: 12.6 MB (12582874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8201a74908acee057773e8238dfad03ef4b9c73cb378f0137fbd4f2b7789bf`  
		Last Modified: Mon, 26 Oct 2026 16:36:11 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9eae347833d2a5c22ae1ce3f2e05891a27b18bc4b42087aae645f2eca1d185`  
		Last Modified: Mon, 26 Oct 2026 16:36:12 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:f35e5c61246a9cf0bd442bb4da93d2fa2fbe0a0b921f33543f33b5918f7152be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 KB (24610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4ba1a7a92b50ac0b0b0152e860033826db7532ac3d33f6d260fad5f2627ab5`

```dockerfile
```

-	Layers:
	-	`sha256:9a5982a95091c10ff3d9d183470cdb6caf7e87c5018038a783930cd4c1363ee4`  
		Last Modified: Mon, 26 Oct 2026 16:36:11 GMT  
		Size: 24.6 KB (24610 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:6cc87ba8f6bf691711db258beaa19960bcfd6b737194c48a739e61e25967dd25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e8f75a248965f436bc36bf85804f8d6272131414f83fd65f63015838c2a3c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:39 GMT
ADD alpine-minirootfs-3.21.9-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:36:19 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:36:20 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:37:10 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:37:10 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:37:10 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:37:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:37:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:37:10 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:37:10 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:37:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:37:10 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:37:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d175f631051dbe8da391ec2118442f12ee55587c630f29756bffafb976d0cdc4`  
		Last Modified: Wed, 21 Oct 2026 20:47:45 GMT  
		Size: 3.1 MB (3083552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8311464dd00040f20c968e04f3fde911ccaab269e9d5ed4cae8c1fbc5e99d264`  
		Last Modified: Mon, 26 Oct 2026 16:37:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2aa4152b482982db39ab7f6333fb6d048a9a17bdfed82b8afc3d88e7faab1e`  
		Last Modified: Mon, 26 Oct 2026 16:37:17 GMT  
		Size: 197.4 KB (197378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e26b097c737b3d017ad5e69055f9cb01ad6daf40a064128feb864ac23f7acb`  
		Last Modified: Mon, 26 Oct 2026 16:37:17 GMT  
		Size: 12.4 MB (12445836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50803e7a995abbad9350b587a050cbef7088b56f0e9611d7494c148c2777045`  
		Last Modified: Mon, 26 Oct 2026 16:37:17 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193263bc80a5b920dcf30398bfb9ae5bd168b9e0c7b5d61cd025f92e7fa3c37d`  
		Last Modified: Mon, 26 Oct 2026 16:37:18 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:1e63ae521cc52d005f55299a1ec0dcec4db0c791762b68cab2841878f15e0f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 KB (490464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb783361715df549ec6a34eccd5243ab8b2b0b7473370adbb86f45c081e94cf2`

```dockerfile
```

-	Layers:
	-	`sha256:1028137c032db87cb3b0dbc7c6e66a51615a4c2b5ee60690c578dd0d13812730`  
		Last Modified: Mon, 26 Oct 2026 16:37:17 GMT  
		Size: 465.6 KB (465639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368934748a7c37834638ee69ece17b7193c3dd3356da6941b9f14981d727ecd4`  
		Last Modified: Mon, 26 Oct 2026 16:37:17 GMT  
		Size: 24.8 KB (24825 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:c1945f0eeb2d503f8421952da953a3804d38e4f004d4ef11d57826da59d2c332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16755638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90c016450904cc9c63d38100c04c72554fcc983e257f1637ab451afaf32da7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:39:44 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:39:45 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:40:28 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:40:28 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:40:28 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:40:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:40:29 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:40:29 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:40:29 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:40:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:40:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:40:29 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:40:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a033cd1240e2fe406e2037fc031d0b01cfd9f35d8756861ba8ede915213fe41c`  
		Last Modified: Mon, 26 Oct 2026 16:40:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4918c7f44bed477470aac20a6b4aee06f02037c776a88dc3ae119a2536ea6d55`  
		Last Modified: Mon, 26 Oct 2026 16:40:35 GMT  
		Size: 201.4 KB (201377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278db6a31ca226ae257ebb15d981fc75c666f88e9b9d9f1cf00cd75c6b34fd0a`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 12.6 MB (12578205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2b3e8632ac9f14c4427319808a802ebbe5dc202a104ec84168eadfa5c1defe`  
		Last Modified: Mon, 26 Oct 2026 16:40:35 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6ec448cd225ccba7600fa48e0ceea467b96000f21097e45d015dc5edaaa56d`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:f7f37e53b3093d7436afb7b24422bbb88657bde2efb5cd113aa621a77a65db60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 KB (487540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af33c12c43928f2c1134e6b175f40b9c39ee8d8fb054e512e0d5675ad07d6711`

```dockerfile
```

-	Layers:
	-	`sha256:0a5e36569ddc589981645d0a64a1f1c123b2386223d8a32182787b27acbfc97c`  
		Last Modified: Mon, 26 Oct 2026 16:40:35 GMT  
		Size: 462.7 KB (462677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dba8d4391f2c70e22629f889c9682a03b938b49f2b55740f262d72fdfe19440`  
		Last Modified: Mon, 26 Oct 2026 16:40:35 GMT  
		Size: 24.9 KB (24863 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; 386

```console
$ docker pull redis@sha256:b4081235f81d63533c8f31bb86615ffdabb8bd127d5274dc57bfb3c639d97f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15723280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28fcf209c1adade0952487fd4f5c480ae7f62d32ca8c423b80cebda072a2b84e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:24 GMT
ADD alpine-minirootfs-3.21.9-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:24 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:35:09 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:35:10 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:35:55 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:35:55 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:35:55 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:35:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:35:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:35:55 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:35:55 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:35:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:35:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:35:55 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:35:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bf6d8a8b6b83b90a5303739e37fc55dde7be20636e63c7e43913e94c8d5b197e`  
		Last Modified: Wed, 21 Oct 2026 20:47:29 GMT  
		Size: 3.4 MB (3448986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf7de3a7718ef2c1c83cecf9a4d3b32718751603dfd628f322b810a01254f8f`  
		Last Modified: Mon, 26 Oct 2026 16:36:01 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f134cfe2be122c059b437e0fb5283d3571a40536b00529601fc205bd4253ff43`  
		Last Modified: Mon, 26 Oct 2026 16:36:01 GMT  
		Size: 198.7 KB (198650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce84a6ddddfddc22d76e6bd969fe866427ca887a8873e629b1b25c4f29e7fcd`  
		Last Modified: Mon, 26 Oct 2026 16:36:02 GMT  
		Size: 12.1 MB (12073959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae44a384a16782a796a446c224f5e2f1de86e882ee7840f4bd5524b1047d9998`  
		Last Modified: Mon, 26 Oct 2026 16:36:01 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e7f44f9f5072f092b77f86992a038e951c81dc3639acb7c5d7d733718adf13`  
		Last Modified: Mon, 26 Oct 2026 16:36:02 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:675d1efd32ae06191f00daadf1de35f512ebc10ab7d51168ee8f66bcd838ad58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.2 KB (487204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c52b713d8ab22d46149b7ed5c0c8a69986d70dfbede247fb85967f345a1525`

```dockerfile
```

-	Layers:
	-	`sha256:6a89ce8d058095dfc658e30a0b096f8539529f77eaa644259c4cfd2d9affaf95`  
		Last Modified: Mon, 26 Oct 2026 16:36:01 GMT  
		Size: 462.6 KB (462562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f6f2d78dc95bbd5dfe0ecce053b88677bf8b2118c952baa9c2e94feb80ee2ef`  
		Last Modified: Mon, 26 Oct 2026 16:36:01 GMT  
		Size: 24.6 KB (24642 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:bca070ac4f1a9aadffa4560696fc59088facf5ac9758ac94c9b78fcd4b69b3a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17129518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511d813779923f887123267459fb10426d8e28725eb4470c8e37d9ecf04acc5b`
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
# Mon, 26 Oct 2026 16:49:04 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:49:04 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:49:04 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:49:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:49:05 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:49:05 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:49:05 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:49:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:49:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:49:05 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:49:05 GMT
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
	-	`sha256:87f3fa4c069f4eb7ef1f1f56510351773d051ca119b3aeb2bb277a63aa53fa49`  
		Last Modified: Mon, 26 Oct 2026 16:49:17 GMT  
		Size: 13.4 MB (13367509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b224c82f141c0308ffbdf85aef19292407b22353c7ea5b9c5d82132b8dc098`  
		Last Modified: Mon, 26 Oct 2026 16:49:17 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4677fb47f9d42f51d89264b536643d8bca2412e20923ab8f1bd1d57e7cbf6b9`  
		Last Modified: Mon, 26 Oct 2026 16:49:17 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:6cd17d23f1054d0da227616d4dd72ce7ac26935fd67965cd7c22c0c7c0755b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1226fe5fc59a456c9628a564b9b243e00a1e3ec18fb2e5c423ce6a7e31d9e6a`

```dockerfile
```

-	Layers:
	-	`sha256:d566264870450cc878e84c1baf0d367cd2c31e2d9a7326f3b912e61e25a2548d`  
		Last Modified: Mon, 26 Oct 2026 16:49:17 GMT  
		Size: 460.7 KB (460692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ef45a0102cc5792b143e9b8473bf927cfca2dfe6b03f3dd761f56af75cd46c`  
		Last Modified: Mon, 26 Oct 2026 16:49:17 GMT  
		Size: 24.7 KB (24749 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; riscv64

```console
$ docker pull redis@sha256:e3e92e425dd30408220bb46f360d9e81b9513ae3e2e6524af029fd159f2869bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d16b9a7ae2e9d04ddee0bf8131086ef0c4aa99048293d906e6b375b54d8ac69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Oct 2026 05:00:23 GMT
ADD alpine-minirootfs-3.21.9-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 05:00:23 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 12:48:04 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 12:48:09 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 13:03:21 GMT
ENV REDIS_VERSION=7.4.11
# Mon, 26 Oct 2026 13:03:21 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz
# Mon, 26 Oct 2026 13:03:21 GMT
ARG REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
# Mon, 26 Oct 2026 13:03:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 13:03:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.11.tar.gz REDIS_DOWNLOAD_SHA=e973da69febfea096ab94690b44bf976482788a1b5e070df373b4f27697d57d4
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 13:03:22 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 13:03:22 GMT
WORKDIR /data
# Mon, 26 Oct 2026 13:03:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:03:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:03:22 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 13:03:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:643eca146d1a96f3341a61349fb18d6672657279623f35a5072344018f8aa0f0`  
		Last Modified: Fri, 23 Oct 2026 05:00:57 GMT  
		Size: 3.3 MB (3336841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deaab6a70a4eaede36d79d884027317e853824f770b2a85d057fae07fb1ab7eb`  
		Last Modified: Mon, 26 Oct 2026 13:04:18 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1560ca03a993da74d09b54e09b4ad88b6cf3e6838239763d69f1a8f074e660ff`  
		Last Modified: Mon, 26 Oct 2026 13:04:18 GMT  
		Size: 198.5 KB (198505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9c8b87380e98e726e30ecbf793641df9626f47cb66ad6144b7cc6045ddf522`  
		Last Modified: Mon, 26 Oct 2026 13:04:20 GMT  
		Size: 12.0 MB (11978582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2dca8547c66b730ff9d7eb707b075dbaed94b68104b3a033bf879cd1e459e7`  
		Last Modified: Mon, 26 Oct 2026 13:04:18 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfcf41e8c1d3b2c250176ddae38604f3287d80c6979c49abcf7d0ac127d85f5`  
		Last Modified: Mon, 26 Oct 2026 13:04:19 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:259f02a9aafee7e15cab3e63f6db9fb90e8d4cfabac764d66f046e49b04b28be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1c2514bbff333a5e27ba7fe8338f8a9b13d61096eb495e5aa522e7c08f2b04`

```dockerfile
```

-	Layers:
	-	`sha256:45e25b3e36e6fbb61faf6483b863f764aff4ec5d8a58e14cb2241bafe75a810a`  
		Last Modified: Mon, 26 Oct 2026 13:04:18 GMT  
		Size: 460.7 KB (460688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4993666ad351ae083b5962bbdb1d698d63cce3fdae81edebd84bf9d9e1b33672`  
		Last Modified: Mon, 26 Oct 2026 13:04:18 GMT  
		Size: 24.8 KB (24752 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; s390x

```console
$ docker pull redis@sha256:ce3af2dc7a4b357ff8766cee615d6e6a6cb5f0ecdc7ef3032b187c09896ebb6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16644506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d807f4e549f27c3285863987c2d594e217cc8a010e2af09da051b548b8aa7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.21.9-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:30:02 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:30:03 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:37:55 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:37:55 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:37:55 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:37:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:37:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:37:55 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:37:55 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:37:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:37:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:37:55 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:37:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cc391e2d7f1b1e3591532bf08b1b017af1ccd636f7c91f6aaacae43c5f1aee59`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.5 MB (3453137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1263d20666600e061d732991c2392ec785b1777c39536419acc164a5d225df10`  
		Last Modified: Wed, 21 Oct 2026 21:31:05 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8842417920b99312352adfd3b464ec09060003fb87d49d486633028dc1466db9`  
		Last Modified: Wed, 21 Oct 2026 21:31:05 GMT  
		Size: 201.1 KB (201069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12af06dad70b18e8259149514348b2a5e97b663ba5ed0efcbd70118b8df95e3b`  
		Last Modified: Mon, 26 Oct 2026 16:38:08 GMT  
		Size: 13.0 MB (12988617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17facad98b8911255ddad148f3108dd667d9b00d09c052dd1dc5ea2c16b049a`  
		Last Modified: Mon, 26 Oct 2026 16:38:08 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa9e6e90f7edd579bb2e948c0ffdcd0676b68090d3ae939c68502bbefecc11`  
		Last Modified: Mon, 26 Oct 2026 16:38:08 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:c560b5e66f5981cc1e1ffe13f43fb36c7d86e571966794b077d1e769cba02256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 KB (485336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8710c43c10dc2bff3bf93b1d901272adef0b6629f21243ea0368635f100af3f`

```dockerfile
```

-	Layers:
	-	`sha256:4800a1292ca38aa26d78323f1e140ec4dde2e2042f381a2fbf6be4886d8fd27c`  
		Last Modified: Mon, 26 Oct 2026 16:38:08 GMT  
		Size: 460.6 KB (460646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cac0614016ceb31130364e4d5d31a0875984046be5723e45a22ec23a82afdb71`  
		Last Modified: Mon, 26 Oct 2026 16:38:08 GMT  
		Size: 24.7 KB (24690 bytes)  
		MIME: application/vnd.in-toto+json
