## `redis:6-alpine3.17`

```console
$ docker pull redis@sha256:50261e334e53040742bbdf24d0553fcf17097220497d978581c9c0d14a22dcd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:6-alpine3.17` - linux; amd64

```console
$ docker pull redis@sha256:6536c76c861b30f2f64b38c391330813ef187cef5f773dc58b5646230cc0afc5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11244891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7aa3675db47d71cba6b8d9848de9a84d84bc62d310c217778e66c06a992c7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:04:34 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Mon, 09 Jan 2023 20:04:35 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:15:49 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:15:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:15:49 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:16:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:16:26 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:16:26 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:16:26 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:16:26 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:16:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:16:26 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:16:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0a0152d355cb21f10a6599c8f7b6423492c2afa3ecfb516b49e649ad2b0aa1`  
		Last Modified: Mon, 09 Jan 2023 20:07:37 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c460b24b7cb3db325fd375d404548e0faf1b2115355f3bad7182317090eeb`  
		Last Modified: Mon, 09 Jan 2023 20:07:38 GMT  
		Size: 347.7 KB (347680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d261588b2353caaa78b77a6006bf919f4d273e3afa3c2b472a2643d2e3e13726`  
		Last Modified: Tue, 17 Jan 2023 21:19:40 GMT  
		Size: 7.5 MB (7524609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77101e06792d1793c29fc07cf2c843ab78a8c7809fabdd55a553c7b455832c`  
		Last Modified: Tue, 17 Jan 2023 21:19:38 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2b5d7bf021d648249da2189f928fc348f992293ac66fbdf306058bb5ccf5f0`  
		Last Modified: Tue, 17 Jan 2023 21:19:38 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:6-alpine3.17` - linux; arm variant v6

```console
$ docker pull redis@sha256:ef28dc0763b7a52fa793ed529137c48afab5b5a45b9ccf9ef403c3519a218268
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11028143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314215fe9b73c33bc8c78a7caf8e4061680449ed9dfa407c8c414542631f95d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:17:28 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Mon, 09 Jan 2023 23:17:30 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:09:06 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:09:06 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:09:06 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:09:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:09:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:09:46 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:09:46 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:09:47 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:09:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:09:47 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:09:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb45892966a7bb0d81a41a80c90cf0ba34cbe07e607bb75c3f3de92f3b95ae6f`  
		Last Modified: Mon, 09 Jan 2023 23:20:35 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6415e47d37e04c10fc4845e0d3fbe817dcc865c911cad2879e47548867105`  
		Last Modified: Mon, 09 Jan 2023 23:20:35 GMT  
		Size: 347.8 KB (347792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8170efc026a01c6026c5226b689b0544e752ded860c582cf3ad5103dd0734431`  
		Last Modified: Tue, 17 Jan 2023 21:12:04 GMT  
		Size: 7.6 MB (7571190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755065a1b8b6c14dcd724a1673a1bd704ac5e6301cd0239aa523289f1bf1b15e`  
		Last Modified: Tue, 17 Jan 2023 21:12:03 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc02dc152c85061b2de709a0bf5c64ff041e8be5eb1022d11091872dd6499ba`  
		Last Modified: Tue, 17 Jan 2023 21:12:03 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:6-alpine3.17` - linux; arm variant v7

```console
$ docker pull redis@sha256:05a30d39f83ced477658895c7256d9a641f7d692968671a320a72b1db9996f34
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10671532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96580e04667f3523279c71a9705d63acb856a27d4f3dc82a8eaaba96a3462009`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 00:56:59 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Tue, 10 Jan 2023 00:57:00 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:36:21 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:36:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:36:21 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:36:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:36:57 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:36:57 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:36:57 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:36:57 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:36:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:36:57 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:36:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1540f52dcc833026e08c308d3f44486acd419e502f224ed054cf218e5871ded`  
		Last Modified: Tue, 10 Jan 2023 01:01:14 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458b1b0e2c8efadb573231f958a9ecc4d0c9ccb5c8fb4a8be98befc6fd9eac9`  
		Last Modified: Tue, 10 Jan 2023 01:01:14 GMT  
		Size: 347.6 KB (347576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2f0e681ccb672b16959a2b44ca6ea48527a79071940ffc202894aa31b2155`  
		Last Modified: Tue, 17 Jan 2023 21:41:49 GMT  
		Size: 7.5 MB (7456834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ba98d6284cf6da356ffdd9d972991ee03fd8b93e5190fbe6ee486121b3889`  
		Last Modified: Tue, 17 Jan 2023 21:41:48 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4628e2c6156b9fd74e4e879b5610e2fc5ab6acb2884e2eee4121dd8c81fdbd`  
		Last Modified: Tue, 17 Jan 2023 21:41:48 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:6-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3fe3723859605e8177c142bbb187cfa3d673d83e8d1d7ea84c5a74a57207a26f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11202392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cebb1b2fd69db2b86d6af08aaf85b1f657a1c8dc53b3b944145b0bff0b6d5fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:43:40 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Mon, 09 Jan 2023 21:43:41 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:26:50 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:26:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:26:50 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:27:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:27:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:27:19 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:27:19 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:27:19 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:27:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:27:19 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:27:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60c5bfc4515ca45a1d7e0f19ba442639a014baa29ae89f3ecad5389c2cd2295`  
		Last Modified: Mon, 09 Jan 2023 21:46:09 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b470822c93ffb73ecf0da151fab720a45366613d2db952375c3d90ea75dea3`  
		Last Modified: Mon, 09 Jan 2023 21:46:09 GMT  
		Size: 347.9 KB (347897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a57647e3c4936d0c500e067c4e82c93bc6ac3e26211ad47d86013eec168758`  
		Last Modified: Tue, 17 Jan 2023 21:30:28 GMT  
		Size: 7.6 MB (7593278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a13f77c91f60566d9415e1825d34aa8f040428075d5f942fb4a1bd294a6588`  
		Last Modified: Tue, 17 Jan 2023 21:30:27 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee9a4d2ca8e029c790857f907e3801187cce0d5520537d5ead973285f4550`  
		Last Modified: Tue, 17 Jan 2023 21:30:27 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:6-alpine3.17` - linux; 386

```console
$ docker pull redis@sha256:6e384fb7be299e365120244fffd9ca97b4d6b6e7293c13e0c2a2628bc79984fc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11012773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1920cfb90dbd5d34ea07a98bc30005eeadc70751b11c3d46b8d78d14c4024815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:30:47 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Mon, 09 Jan 2023 18:30:50 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:39:48 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:39:49 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:39:50 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:40:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:40:28 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:40:29 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:40:30 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:40:32 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:40:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:40:33 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:40:34 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e95f02e6879af0d16422eb9bf76a7b8b339bf3b6bae98bacc9ea332c51e28c`  
		Last Modified: Mon, 09 Jan 2023 18:34:50 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0708ca46fe9205b44f1ccec5a22ae0c1ad7d57d53d74beea2b79cac54241d9a`  
		Last Modified: Mon, 09 Jan 2023 18:34:51 GMT  
		Size: 347.6 KB (347605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b02ce5da50514c0daa11cc9fca2a190a63bf2cb4ab02007312dd1770b7fea1`  
		Last Modified: Tue, 17 Jan 2023 21:45:08 GMT  
		Size: 7.3 MB (7254931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6867818854ab26c4b0553915c656684b644ba0056c701401a33cd7c0a4cdc884`  
		Last Modified: Tue, 17 Jan 2023 21:45:07 GMT  
		Size: 101.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5bf21a55d9a25913a6c21230bd0e2990000bc8af1dae3aaec5d9e29d549a07`  
		Last Modified: Tue, 17 Jan 2023 21:45:07 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:6-alpine3.17` - linux; ppc64le

```console
$ docker pull redis@sha256:f14f0ee182b441c59f8a288b2e8b387f0d2bb7b2006ea6e4881759edfaa6c73a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11869251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ee7162ba57a7d9d91e979e57a2fe8a1051f972e41943f4c3881fe06e9cc5a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:45:46 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Mon, 09 Jan 2023 23:45:48 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:32:28 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:32:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:32:29 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:33:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:33:20 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:33:20 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:33:21 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:33:21 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:33:22 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:33:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9aae4d8601c2bf911da234ec583ffd31e394f89dbdcf5a0be4c739f34984d`  
		Last Modified: Mon, 09 Jan 2023 23:50:22 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9f5b3907bc072668d2df9b27be6db5d91f1c1cfb60f656f8c3d2aa9f6539be`  
		Last Modified: Mon, 09 Jan 2023 23:50:22 GMT  
		Size: 347.9 KB (347927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17164f8d162cba0485bc0fb5d6dc03f0004c8829669a054b395c864411e46ec`  
		Last Modified: Tue, 17 Jan 2023 21:38:54 GMT  
		Size: 8.1 MB (8134779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3bc447f04a75f4f9e685232b1434d48fbeec9c8749b20115b5f8e1c4e6b4ee`  
		Last Modified: Tue, 17 Jan 2023 21:38:47 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b99fde51a678288f326596010e1ba4a9b94eeeca2bd0363fb62e6f212bd58dd`  
		Last Modified: Tue, 17 Jan 2023 21:38:47 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:6-alpine3.17` - linux; s390x

```console
$ docker pull redis@sha256:f84625a923a9e2144fa73bf967e6f6c60af7baeb18a47749eb8243bb61a50708
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11342311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2158d9859e93c32f875752f3b56e06e3de7672c1086d98cd0bd0dd2902b3ff0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 00:59:15 GMT
RUN addgroup -S -g 1000 redis && adduser -S -G redis -u 999 redis
# Tue, 10 Jan 2023 00:59:18 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		tzdata
# Tue, 17 Jan 2023 21:23:50 GMT
ENV REDIS_VERSION=6.2.10
# Tue, 17 Jan 2023 21:23:50 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-6.2.10.tar.gz
# Tue, 17 Jan 2023 21:23:50 GMT
ENV REDIS_DOWNLOAD_SHA=22684f66d272379b91e3e53693918b535e2a6e54b9d14e1cad171658e0eefeca
# Tue, 17 Jan 2023 21:24:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		serverMd5="$(md5sum /usr/local/bin/redis-server | cut -d' ' -f1)"; export serverMd5; 	find /usr/local/bin/redis* -maxdepth 0 		-type f -not -name redis-server 		-exec sh -eux -c ' 			md5="$(md5sum "$1" | cut -d" " -f1)"; 			test "$md5" = "$serverMd5"; 		' -- '{}' ';' 		-exec ln -svfT 'redis-server' '{}' ';' 	; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version
# Tue, 17 Jan 2023 21:24:25 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 17 Jan 2023 21:24:25 GMT
VOLUME [/data]
# Tue, 17 Jan 2023 21:24:25 GMT
WORKDIR /data
# Tue, 17 Jan 2023 21:24:26 GMT
COPY file:a9e7249f657e2eec627bb4be492ad18aae3e5e1f0e47d22644eaf1ef2138c0ce in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:24:26 GMT
EXPOSE 6379
# Tue, 17 Jan 2023 21:24:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcaff888d3cac54eb7af54d5cd68c84286dd3b7e3d7a2a96007fb57451b63aaf`  
		Last Modified: Tue, 10 Jan 2023 01:05:15 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338e957f5ad8956090f260a9d4613d00f792992056977cf47d5bc7871adbd482`  
		Last Modified: Tue, 10 Jan 2023 01:05:15 GMT  
		Size: 347.7 KB (347665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68d42fdcbba8e01a7b7831c8dd6892d6174fc249f9233c407f464fdbec6e24b`  
		Last Modified: Tue, 17 Jan 2023 21:27:57 GMT  
		Size: 7.8 MB (7821923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b028d8c693d1173b94c3e1e3b693a08757fe12e58007ba9510cad9db1b7aa6`  
		Last Modified: Tue, 17 Jan 2023 21:27:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283bc8be21e1964d6ae45d8c8b7fcf0375b2e5196474c51cb47e20776691cc2e`  
		Last Modified: Tue, 17 Jan 2023 21:27:56 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
