## `redis:7-alpine`

```console
$ docker pull redis@sha256:4783bb5c3ecd5a93ce0a779ed2c44d5472043bb2cb7251f5390700748c62e62b
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
$ docker pull redis@sha256:ec1c2d3603c3d7d65b153bedda0248b641aa3bd7684503406b27b9e870ac0796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16243788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b0b929eb5b1e7b18f4662e190ceeac481b72e35dfede063b09a4ce8beac79f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:34 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:10:35 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENV REDIS_VERSION=7.4.12
# Thu, 05 Nov 2026 19:11:20 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Thu, 05 Nov 2026 19:11:20 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Thu, 05 Nov 2026 19:11:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:11:20 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:20 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:11:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322b6e6144f6cfaeb74a8d9eb215ea059209144d6b576fa00c4641e22f3c5f74`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed20a3352991adb40f147fbc0771fcbf28d662371c8826d08ca70798f503a432`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 198.6 KB (198633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eced4433665ed6236d96668e1584d29c5b4ccdc3529e9b78b754b051088cac02`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 12.4 MB (12418071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee92a57da3438334c96a1fac6403784e95971bf864f5fb0db09787bece7abbbc`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100397b92304c355ee136bc1664a9ce4a273e9b5b73e1da0ac9ce4704757b049`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:f70cd8589b6cca6e8dbbf8423cee68cba2e7a6cbea44daf3cb8c04d99c101480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.3 KB (487293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d6cf5a0abe1228a6b38520eee9e38c8eef4ab39b8d03b27d884d2a08250383`

```dockerfile
```

-	Layers:
	-	`sha256:5602e6b31c82d45752c18c7734fd3f6052e2b57f6f84afb9f06725c767b3df7e`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 462.6 KB (462603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5050497c2442570ca59fae9c62efb2a897c2f4d1b30012879d99e77f1804b33`  
		Last Modified: Thu, 05 Nov 2026 19:11:26 GMT  
		Size: 24.7 KB (24690 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:86d9d14730ffc4ff8446d5f72fe10030d0aab3c88250d7051e83410b1f7ffdc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16137784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6f73cb0bbc020877642f824b9c81eda5b14736b7b28d5a2ab71d89152b480a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:33 GMT
ADD alpine-minirootfs-3.21.10-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:47:47 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:47:49 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:48:36 GMT
ENV REDIS_VERSION=7.4.12
# Thu, 05 Nov 2026 18:48:36 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Thu, 05 Nov 2026 18:48:36 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Thu, 05 Nov 2026 18:48:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:48:36 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:48:36 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:48:36 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:48:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:36 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:48:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:67d90dde067e1df9cd76cc9d7496ddc1d7c97048e6825d92a3d8d38f18b23d09`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.4 MB (3354205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2fd056a11c43caae7580b5187467602212c0e6eda693086245c27b0e6591f3`  
		Last Modified: Thu, 05 Nov 2026 18:48:41 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:174e88310755525dd9aaa62b91338c59608522c59e12b967bf29a7051e5a69f5`  
		Last Modified: Thu, 05 Nov 2026 18:48:41 GMT  
		Size: 199.0 KB (199030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5fcd60e6c8d355019af978ad7772446bdfe5cc88bdbfaaf1f595b8c188f132`  
		Last Modified: Thu, 05 Nov 2026 18:48:41 GMT  
		Size: 12.6 MB (12582865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5940a20e3e5e60e1510c6607a92baafd7709b188c6152378dff204a2968fda67`  
		Last Modified: Thu, 05 Nov 2026 18:48:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c4e1bdf4fa21b72215008c160c16969c7e7877a00a5438b955b55056625e73`  
		Last Modified: Thu, 05 Nov 2026 18:48:42 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:572b7ff865eed46388c168da1af5699bfba019951eef8d2e7ce3c165653e2aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 KB (24610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7dc1004fadb8a31132a52a0cd2acf64763f16c21a6fcab88b9f9c33ca2f6fc8`

```dockerfile
```

-	Layers:
	-	`sha256:bc1984532ee2f1460a96ed68489f7416114012e351dad7894ffb487f9220a4c0`  
		Last Modified: Thu, 05 Nov 2026 18:48:41 GMT  
		Size: 24.6 KB (24610 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:2e00f506394e1c7eebc8f5fe759da4f17fe98fb90cf590d8da89d3f417ffa452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb07dc84d91e2ba6d429ddb42e46049c0bb5e06d0b080d6608d7759e466c26cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:40 GMT
ADD alpine-minirootfs-3.21.10-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:47:41 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:47:42 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:48:29 GMT
ENV REDIS_VERSION=7.4.12
# Thu, 05 Nov 2026 18:48:29 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Thu, 05 Nov 2026 18:48:29 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Thu, 05 Nov 2026 18:48:29 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:48:29 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:48:29 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:48:29 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:48:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:29 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:48:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:85669f45edf8a72af7311a13695486798f4b818553bd67e62603dbdc8199280b`  
		Last Modified: Thu, 05 Nov 2026 18:01:46 GMT  
		Size: 3.1 MB (3083812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12e5afa6a7dd8f63b4260438e7283a2391edac422050f148bae8fcfbdaed304`  
		Last Modified: Thu, 05 Nov 2026 18:48:34 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b6acc0b8bb4f18ef6b28894d3b880f04361d321566408904f293312689d880`  
		Last Modified: Thu, 05 Nov 2026 18:48:35 GMT  
		Size: 197.4 KB (197370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7e9aaad13805bba3770b100aa8ca45ff1fbe2cbe1b94ff59d4a930e0efd948`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
		Size: 12.4 MB (12445823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f3ccdfac5fa6282a4e61128e6206e883c084dd640c7d51bc3ab83f7d4879d7`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a467355e6ab763b4a2406523666e85066f85ed9e89b884caa7f2d76dd9fcfeef`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:91584fa8473a31b7d306ff6d375a194bd457e42df921e8e06b0cdf85447f0673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 KB (490470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa480de1bcf82ebbdbee5664fd19f7050168de872b227c28d03815c708117de`

```dockerfile
```

-	Layers:
	-	`sha256:975c0cecf14820c0dae067eee4ba92477fafbd3e03281cf93751ce3367e627a2`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
		Size: 465.6 KB (465645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bb3ecbf68072efcf6569a6fab2c126e23c47eaaee21dcd59a998088c213778d`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
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
$ docker pull redis@sha256:f91fe8d32d12610fa585440ad91bd14b3e04f48cd9dffdfbc4f987bcbcf29e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15723278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37c1ad47809bf2f926e364cb3803c99139321e2b430fb18b531ba2d83f55643`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:35 GMT
ADD alpine-minirootfs-3.21.10-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:35 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:30:41 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:30:42 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:31:34 GMT
ENV REDIS_VERSION=7.4.12
# Thu, 05 Nov 2026 18:31:34 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Thu, 05 Nov 2026 18:31:34 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Thu, 05 Nov 2026 18:31:34 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:31:34 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:31:34 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:31:34 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:31:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:34 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:31:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6942dce0c894407e88929f60b37f7d6eff011612d51a979fac30893b3c482ec6`  
		Last Modified: Thu, 05 Nov 2026 18:01:40 GMT  
		Size: 3.4 MB (3448983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8375b3908fb42a05e9f5e438a6fa60336478272f51e512bad9284d285900b2`  
		Last Modified: Thu, 05 Nov 2026 18:31:40 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e17d4176fa638fdad8a475bc5d846bac26c42f59dbb0ed0c210b24cf90c4c4`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 198.6 KB (198629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c9863c50d5c23d2b3fb1587969c4d65161d4f0cfd35417fcda95c03a4f9e34`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 12.1 MB (12073982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58aaafe4514fb1887f98880fed3831cdf1c8788357cba96e7b115b790f07c44`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642ebe1db7856b883d82d0a84d893740ce980a35f5570a10e778cb87d76f5eca`  
		Last Modified: Thu, 05 Nov 2026 18:31:42 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:c58a4c1c799c24aadfd8208a26889f1ece9769f7ac42be50775d680d209832e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.2 KB (487210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919a4f05f9876987e42a4c04d4e74f9ea8c7da7368c90eff6872239e07254e29`

```dockerfile
```

-	Layers:
	-	`sha256:d1bc099b1a34a2b0ef7196cfd57a773e79d7ed7e0053c9701af6f89f6fe27fee`  
		Last Modified: Thu, 05 Nov 2026 18:31:40 GMT  
		Size: 462.6 KB (462568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4780c2f6b81d2b229e97cc4ae6853fb08d531f60b3bd1771c23a6caf14d568db`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
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
$ docker pull redis@sha256:00e91fec05798e99c49dc68a5bcaa92dab0fb6ea87110c2b90ca8a2d25389181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3623005ae13c5faa96780d419c921638a03f9a00d0f79215f90eeba1de4e89d7`
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
# Thu, 29 Oct 2026 02:08:01 GMT
ENV REDIS_VERSION=7.4.12
# Thu, 29 Oct 2026 02:08:01 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Thu, 29 Oct 2026 02:08:01 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Thu, 29 Oct 2026 02:08:01 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 29 Oct 2026 02:08:02 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 29 Oct 2026 02:08:02 GMT
VOLUME [/data]
# Thu, 29 Oct 2026 02:08:02 GMT
WORKDIR /data
# Thu, 29 Oct 2026 02:08:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 02:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 02:08:02 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 29 Oct 2026 02:08:02 GMT
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
	-	`sha256:17f7e0813288b77b0c2c214585b0c1a885715d66f04274433f9874af1737d4ea`  
		Last Modified: Thu, 29 Oct 2026 02:08:49 GMT  
		Size: 12.0 MB (11978599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9b9bc38f6b021ec187081daff9d4429aece0c4db2614ef9e115b0fad9849fe`  
		Last Modified: Thu, 29 Oct 2026 02:08:47 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb85934f2e0b481a51ae86ccfd015f0e7466b886f7d4b45cc14cc1de05d1ef9`  
		Last Modified: Thu, 29 Oct 2026 02:08:47 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:381ef2cbcf559c2bcb2505727e62ef1b7955308916a8fd48564884698d671fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b7603d5cb315b5058c024c3d7df1af92e96721f3da44ee607b30398bae6d16`

```dockerfile
```

-	Layers:
	-	`sha256:9d1aa6ca5b55a22d2caa36bbd6043b3e161b35533a4eb01109ddbb05717b310e`  
		Last Modified: Thu, 29 Oct 2026 02:08:47 GMT  
		Size: 460.7 KB (460688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e8b5b565bccacda53227f005e22dd2ff158bfebe2b96b3257862468a9faed56`  
		Last Modified: Thu, 29 Oct 2026 02:08:47 GMT  
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
