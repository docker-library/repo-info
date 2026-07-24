## `redis:6-alpine`

```console
$ docker pull redis@sha256:ec5e187c913d422cdf60f4216a5fdfb95246792c6de6fe21ff5bed75cbfc8c23
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
$ docker pull redis@sha256:c099203974f7936abe76009d8fb4c984b31a6b3b21bf942b40ba658aac757d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11443994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09cfd71b4b8924db442d175cffa414b9ca6666fa605b72b2e3fd585b1a75b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:11:42 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:11:43 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:12:09 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:12:09 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:12:09 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:12:09 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:12:09 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:12:09 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:12:09 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:12:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:12:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:12:09 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:12:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bae03b9579b36183885b5a7df208ee1b46ea73d959a385a0a19281e0e3c199`  
		Last Modified: Fri, 24 Jul 2026 17:12:15 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9b7ff1ab8af2672722a42a2d3decdbfc773227ebfa8b87167a09df1a61910f`  
		Last Modified: Fri, 24 Jul 2026 17:12:15 GMT  
		Size: 194.3 KB (194318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3afbef41044a4c8261d1a22d3e2be2e094e0a896c51ec1c2a42ae993d3843fe`  
		Last Modified: Fri, 24 Jul 2026 17:12:15 GMT  
		Size: 7.6 MB (7601115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb7e5bf29bcd0f9670d673f58597ac9342280ec6ef6bdba68e3c910e34a13b2`  
		Last Modified: Fri, 24 Jul 2026 17:12:15 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c73f9b775389bac1d6354cf9c135c5f5a147f0cc3492d75cba46f65035ac4d4`  
		Last Modified: Fri, 24 Jul 2026 17:12:16 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:bc9e2e8011aa5afad6e0eb57a9c218ca5f3f96a22adbfe098f963321fdd6c68a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.3 KB (487282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82440658ad668a3e92a2f63c4f5400178d12cafb1d3179ff383bd0cccf0b76b4`

```dockerfile
```

-	Layers:
	-	`sha256:26f391e78218ce3d8457c441cdcbc7dcb0c515efee17269b064ad90b816e62a3`  
		Last Modified: Fri, 24 Jul 2026 17:12:15 GMT  
		Size: 462.6 KB (462597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c7a8fe5434edb4ceefa298e0f837ffa38d5e17fa239404afbdf87284472fba`  
		Last Modified: Fri, 24 Jul 2026 17:12:15 GMT  
		Size: 24.7 KB (24685 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:7b1fc944b1f1307ae88596972fd6027ce8f885d1b7caa0a8648161e8e0a8c9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11201391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3eab982f95d70189f753e555f6684c72011e83aa3f9f0840e9d51e547c63a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:38 GMT
ADD alpine-minirootfs-3.21.7-armhf.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:38 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:10:28 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:10:29 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:11:05 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:11:05 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:11:05 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:11:05 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:11:05 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:11:05 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:11:05 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:11:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:11:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:11:05 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:11:05 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f204fe7ddd292eb5d783ce14a8bc6c5a7defbb8adda2989da2c9dcf46b3e08e9`  
		Last Modified: Thu, 16 Apr 2026 23:53:42 GMT  
		Size: 3.4 MB (3369055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0605a2cda2159b8e2ef744cdae46ebe65f54c3b98d4fd9024faf3b411f456aa2`  
		Last Modified: Fri, 24 Jul 2026 17:11:10 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d574db89572fc906d610fb5fea5c70dfe6f0b228de914aa5a02db25ffaaf99`  
		Last Modified: Fri, 24 Jul 2026 17:11:10 GMT  
		Size: 194.8 KB (194842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eedbd2f477333b12954ec7ddb60352c15f296a592d8295740e2083a5761ba82`  
		Last Modified: Fri, 24 Jul 2026 17:11:10 GMT  
		Size: 7.6 MB (7635805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71232ee7cac0c79b0d0bcfc46f0cc27b6311bdb467dac38c2b56d23a275e9251`  
		Last Modified: Fri, 24 Jul 2026 17:11:10 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99c1ec8983969865cf77cc4c1f5a19081c0c0d921ad111aee51831f93b7f6ef`  
		Last Modified: Fri, 24 Jul 2026 17:11:11 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:1f1c0e2bb20baf87080586692a7cc79edf466e7fe353be60bfa0e31844fa367c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 KB (24606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ac0e28a314830e7a3f244cd84452e36713d1be706f4c46bc107773739aa1c7`

```dockerfile
```

-	Layers:
	-	`sha256:efe4591745577d73d19b40d193e834f2d11fea4b0a623f7d9736b91a4ef730d0`  
		Last Modified: Fri, 24 Jul 2026 17:11:10 GMT  
		Size: 24.6 KB (24606 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:9549736c1a18e11d2552345cf93d094ce7f0ecc5efcf75e1b427381f7346fd32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10815333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ac63df1fcca5c68f911c57d2b12aa06627d09d50ba038650310f5dc0e2b4fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 16 Apr 2026 23:54:13 GMT
ADD alpine-minirootfs-3.21.7-armv7.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:54:13 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:12:09 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:12:10 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:12:45 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:12:45 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:12:45 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:12:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:12:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:12:45 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:12:45 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:12:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:12:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:12:45 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:12:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7957b137a4005e85cd17d3e5e1bbc7099f5f082aa28f72387126a1c8449672d7`  
		Last Modified: Thu, 16 Apr 2026 23:54:18 GMT  
		Size: 3.1 MB (3101912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeba999c1dc8b30dbc15fee4109dfcbe250728e3fee274a1fed761b0c980f1a`  
		Last Modified: Fri, 24 Jul 2026 17:12:51 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260998df7481cbaf6dc99aa1dcc9e7423145e877bcfa0db353e472d50d96cc5f`  
		Last Modified: Fri, 24 Jul 2026 17:12:51 GMT  
		Size: 193.1 KB (193104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4212b1ca480ce28a46e5fc609a7381fb36456599908872d1f835d6cea5db2efd`  
		Last Modified: Fri, 24 Jul 2026 17:12:52 GMT  
		Size: 7.5 MB (7518632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66e5fd7256540581f132d067d2930eff071a466b3e3eff96b4042529bba6139`  
		Last Modified: Fri, 24 Jul 2026 17:12:52 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1ddc3b72bbdb2c1307c30fe701a2332d5d122b510de3a22e532944f0004fd8`  
		Last Modified: Fri, 24 Jul 2026 17:12:53 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:f828161d05ef33ce511ec0f804002c5a0dce60c293b68c2b980ea4847f53d93a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 KB (490459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26279a097821f46309e5f7439bb318c8d15eff66e12f32a2f7c8601c8f66070e`

```dockerfile
```

-	Layers:
	-	`sha256:ac5b55f3acf894daaf07edeb2eef68171680b705f2d30d40d4fee4e332feb08d`  
		Last Modified: Fri, 24 Jul 2026 17:12:51 GMT  
		Size: 465.6 KB (465639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:497d773ff1818cb5092e1a6a3974586817370d2a524211daebe62bd0661a9049`  
		Last Modified: Fri, 24 Jul 2026 17:12:51 GMT  
		Size: 24.8 KB (24820 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:ef0234ae359f2550f773accc0b4207ae213475eccaa0b2dd17c2710abb8c1998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11853244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f48e71baff19947bfe8fa9f1a8479baa7d8589d0eeacaa204848d61471eaf10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:11:21 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:11:22 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:11:54 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:11:54 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:11:54 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:11:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:11:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:11:54 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:11:54 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:11:54 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:11:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d566db23fe50677e42efc4809d4d811b580b30ae7b7e6b82303e8c44194d13`  
		Last Modified: Fri, 24 Jul 2026 17:12:00 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42e31340e7713618b55ec12dc512b2e1b9ad3dbec37d3c295b6acfe23bc49f7`  
		Last Modified: Fri, 24 Jul 2026 17:12:00 GMT  
		Size: 197.2 KB (197210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db74f585202c2f2ef2ee812c9b6f610e844ce1f0e1e5c9d8ed94628aa0d79445`  
		Last Modified: Fri, 24 Jul 2026 17:12:00 GMT  
		Size: 7.7 MB (7659885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a01065b2515c58de16a2264dfef07f16a171376f53a4c8bcb57e77920d2a28`  
		Last Modified: Fri, 24 Jul 2026 17:12:00 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597910d63e2926e9247ffe26884d004d0e0bbb8e860179707a62e3d57d39eac3`  
		Last Modified: Fri, 24 Jul 2026 17:12:01 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:66d4c640028e41a417674bf2bed2711c9bde3cc1c9654b66b881fd7f424405ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 KB (487536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6bc191128ac84b0326e44609f6a9a3e05a9ada93ed622ac1f0452f0ab2d0c5`

```dockerfile
```

-	Layers:
	-	`sha256:f7a7cd99e2aa2fdae091df673451c2db09953c2fb6ee1d30060462a24ca1e3fe`  
		Last Modified: Fri, 24 Jul 2026 17:12:00 GMT  
		Size: 462.7 KB (462677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5c3ac49cab45c80c23c9da337a2252dbee41d355b88a1baf83ad4d5c9a77993`  
		Last Modified: Fri, 24 Jul 2026 17:12:00 GMT  
		Size: 24.9 KB (24859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; 386

```console
$ docker pull redis@sha256:0d5348bdfe7b402d2bf2abeef8e4de4b6327c48a075b73c0d0b525bc4d65569b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11004461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8860a1880aefe6a8e1b822715c55b224c6e79b35c2e6612a896908d56e17e40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 17 Apr 2026 02:42:35 GMT
ADD alpine-minirootfs-3.21.7-x86.tar.gz / # buildkit
# Fri, 17 Apr 2026 02:42:35 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:10:47 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:10:49 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:11:25 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:11:25 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:11:25 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:11:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:11:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:11:25 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:11:25 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:11:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:11:25 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:11:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f6078c6ba1ececd5b6486ae9f846f15a21622e1b802bfd96f0334235ac0b75e0`  
		Last Modified: Fri, 17 Apr 2026 02:42:40 GMT  
		Size: 3.5 MB (3468819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65546c77bd051a0a5c75485d1ac6709b897a27934c3ee4b0942449751c82c0fa`  
		Last Modified: Fri, 24 Jul 2026 17:11:30 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77ebc94b962136d070d5b761a9b3e94445b114713bc5866aee286350a77b234`  
		Last Modified: Fri, 24 Jul 2026 17:11:30 GMT  
		Size: 194.4 KB (194370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b370297042dfa1e7f84f2e891de090f692833a9a735175c7dc2fc3468b9caf6`  
		Last Modified: Fri, 24 Jul 2026 17:11:31 GMT  
		Size: 7.3 MB (7339586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc78e3e3ac7acb824cf5a6440687a7ab040d24b6d3cb26fad9f116403c41c9ed`  
		Last Modified: Fri, 24 Jul 2026 17:11:30 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accccce05daee3aeeb39f13a17f9e0df4e3f89e02f86b70b44f7e26021e1e422`  
		Last Modified: Fri, 24 Jul 2026 17:11:32 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:47ed3eaabad021ffefaa230b45526e265786621a7f5590413020a51b6e949ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.2 KB (487197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bae6c20a157e721223f09dd7103d3ecf7cb9952cd902524af72abeb912de8da`

```dockerfile
```

-	Layers:
	-	`sha256:ce6b400007099b1ef4e20140c74fb5f0c6ebeb693e8a213753de70f340037075`  
		Last Modified: Fri, 24 Jul 2026 17:11:30 GMT  
		Size: 462.6 KB (462562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d927c80da14988add373cfceda91683eb7af35d040c70855f1fd6b6fe36e676`  
		Last Modified: Fri, 24 Jul 2026 17:11:30 GMT  
		Size: 24.6 KB (24635 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:0123265efa78c3133303e6943a335aafab985c1521e87dd21bbbd085e1ed3c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11974021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4d20bac845abc72d8af33b7b009143d0d6f31cd877f8d6f2cb619c64567b94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:17:32 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:17:35 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:19:45 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:19:45 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:19:45 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:19:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:19:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:19:45 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:19:45 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:19:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:19:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:19:46 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:19:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182dbc1971498e1075dfbd432b4f3b037add18ffe5c14567386f17cd37a7af86`  
		Last Modified: Fri, 24 Jul 2026 17:18:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532264bea0b7fefbe3050fc8b1341966a757482b279a8b759eb6c55902971ded`  
		Last Modified: Fri, 24 Jul 2026 17:18:47 GMT  
		Size: 198.2 KB (198181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6793224eb4c8a533591b26b10d787fa8a4e2ec2331defddb10175d23186c34e4`  
		Last Modified: Fri, 24 Jul 2026 17:19:59 GMT  
		Size: 8.2 MB (8195233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1173e62cc719624f72e9b8484dcf615116cb9d48e5da4b0b227e85b097e00bd`  
		Last Modified: Fri, 24 Jul 2026 17:19:59 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5de3ba348521b6e76634fa35b4f15d548511628fef306fe83f77e39e5fceff`  
		Last Modified: Fri, 24 Jul 2026 17:19:59 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:3e8a1db745c6210f14c4caaae4de3bbba510b76c11a08e1c29f07b6b98986ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc95f3efc0fcf2229dcf4c4e799253951a8df4ffb848284463ee74a713c593d`

```dockerfile
```

-	Layers:
	-	`sha256:1dc17a96749833eef769b2a726c56a167c7f3985909c6d6a6f0d893c2519347f`  
		Last Modified: Fri, 24 Jul 2026 17:19:59 GMT  
		Size: 460.7 KB (460692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:881a31a906a216489f177a8eeaa86e9a628eda4f094c617313de209bb678be4f`  
		Last Modified: Fri, 24 Jul 2026 17:19:59 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; riscv64

```console
$ docker pull redis@sha256:260c13520aaab89d69ccc31507b2446c10b2b627b4bf192a9a253192ea7b4ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10925720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ff8e0ebcdcd427a27057f3bf24b15877aa6cdb66b7d1dcaf4017864da85a4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 17 Apr 2026 07:19:47 GMT
ADD alpine-minirootfs-3.21.7-riscv64.tar.gz / # buildkit
# Fri, 17 Apr 2026 07:19:47 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 19:10:56 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 19:11:01 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 19:36:16 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 19:36:16 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 19:36:16 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 19:36:16 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 19:36:17 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 19:36:17 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 19:36:17 GMT
WORKDIR /data
# Fri, 24 Jul 2026 19:36:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 19:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 19:36:17 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 19:36:17 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c65425fd624c96c0b8c08c71eb68976602b1f3437dea06eb8cd01687585fbf87`  
		Last Modified: Fri, 17 Apr 2026 07:20:11 GMT  
		Size: 3.4 MB (3354662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ddf0aee6d916554d33aee8b6881c6bc0b96515c6c64d1815ec4de0395354ee1`  
		Last Modified: Fri, 24 Jul 2026 19:25:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b969324040842771173484e99885c5e6cec69133df60aa67e107b8d1ccc23067`  
		Last Modified: Fri, 24 Jul 2026 19:25:46 GMT  
		Size: 194.2 KB (194173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0efced934229df828e5e3276c97d7426725eda56e09f53f77d6b08633c6047`  
		Last Modified: Fri, 24 Jul 2026 19:36:54 GMT  
		Size: 7.4 MB (7375197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999ecf1e85d2d89da16a585a7b5d6abec9ef238999d0bffa96c0b45510652ac2`  
		Last Modified: Fri, 24 Jul 2026 19:36:53 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df96219dbdf2343c5f0184d73400358d3dbfc13a1e060f1c0459275ffd6a6f8`  
		Last Modified: Fri, 24 Jul 2026 19:36:53 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:00eac3e61fb642b1405883a76dc7152cfc9cca492fa66bf37dafd035f29e96d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b155ac235c37a06ddd7d872189f5b34a1a28a10227fdd8258e822531fe09678c`

```dockerfile
```

-	Layers:
	-	`sha256:72ec39a2cf02d958f2a775cdcf65444e9722f754747ee7e59848c0172f92ef12`  
		Last Modified: Fri, 24 Jul 2026 19:36:53 GMT  
		Size: 460.7 KB (460688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6288bb839acf0c6312a693473d63e5d181fe53366fbf592d07132c7cd005876`  
		Last Modified: Fri, 24 Jul 2026 19:36:53 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine` - linux; s390x

```console
$ docker pull redis@sha256:6accd5b6a1407cf38b52e09fd757e536d187449e8e3b76be339df46d1b034dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11647705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3b235f73582534fb279464d35bf1f5df51f3e63d2426c94c3684dafe812fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:58 GMT
ADD alpine-minirootfs-3.21.7-s390x.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:58 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:11:41 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:11:42 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:12:57 GMT
ENV REDIS_VERSION=6.2.23
# Fri, 24 Jul 2026 17:12:57 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz
# Fri, 24 Jul 2026 17:12:57 GMT
ARG REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
# Fri, 24 Jul 2026 17:12:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:12:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.23.tar.gz REDIS_DOWNLOAD_SHA=deb248b09b5dd39ee789d3e5165c93675406700a6756311b8f84b64493e537ad
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:12:57 GMT
VOLUME [/data]
# Fri, 24 Jul 2026 17:12:57 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:12:57 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:12:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4dde3be1ef4aac98984d14e789ca07a8f41fc8984a89741b58981521dba1d412`  
		Last Modified: Thu, 16 Apr 2026 23:54:18 GMT  
		Size: 3.5 MB (3469813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522064b2da71a2501014663ae4cc91f3e5c1a1757d7d98b5962a7415c239314f`  
		Last Modified: Fri, 24 Jul 2026 17:13:00 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b86b08a203ea2f0cce939da4da2fd4148c60f5368e6aeb53ffc13f4bf5a4f46`  
		Last Modified: Fri, 24 Jul 2026 17:13:00 GMT  
		Size: 196.9 KB (196870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a0aac11c35123eaa1a73a7bd5c41f19f295f2b3527436712dea9b199c88c13`  
		Last Modified: Fri, 24 Jul 2026 17:13:07 GMT  
		Size: 8.0 MB (7979332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fef220c8d8100016ef0fbbc8259064c2686e77655865d5f465dfab6b36610f`  
		Last Modified: Fri, 24 Jul 2026 17:13:07 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0246017d7003fcb3f68676ea0f88bf184620c9bd2537d104e29bc8c0cea2f76`  
		Last Modified: Fri, 24 Jul 2026 17:13:07 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine` - unknown; unknown

```console
$ docker pull redis@sha256:b60795d75e7ff6599766b4e9c8918d99919dbe85f9744966fd7606da90e0c7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 KB (485332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c1322ee72ec90b0e51a60ee8ee416c2e71127085533402ecc509b17967d2cf`

```dockerfile
```

-	Layers:
	-	`sha256:35ec62eaad9e3b4c1e7d8258d1d9ad36786e30950947167b6a131ec64edae314`  
		Last Modified: Fri, 24 Jul 2026 17:13:07 GMT  
		Size: 460.6 KB (460646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:597727a46649f8b1e18504ccf63b7a479c7326de7e09f61f057a4ed19ba5c675`  
		Last Modified: Fri, 24 Jul 2026 17:13:07 GMT  
		Size: 24.7 KB (24686 bytes)  
		MIME: application/vnd.in-toto+json
