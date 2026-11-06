## `redis:6-alpine3.21`

```console
$ docker pull redis@sha256:5e38c443bd83d7d5214648d5de0a7d47f72cbb5141c50dcabcfc40f191b5b369
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
$ docker pull redis@sha256:38592b7f38cfe11b6390a0000c60fc69e9b14bd964b8754971cf4b2e6b74b04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11426562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a1b2a172ec0979005ab22e533a6a67c8405aaaff0ff723e39c9c3edb1e7d16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:52 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:10:52 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 19:11:22 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 19:11:22 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 19:11:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:11:22 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:11:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:22 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:11:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23527d503594af3b9b5264d37e701d53ba37676ab6f9c9b595c76c323eff5e7c`  
		Last Modified: Thu, 05 Nov 2026 19:11:28 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36259c7832e07380fd351afb258a65e157dfd5a880dc39ae87f56392cbc9b41e`  
		Last Modified: Thu, 05 Nov 2026 19:11:28 GMT  
		Size: 198.6 KB (198626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2e3c4a968d80d8a0c88fb8f09fadd6ace50e4c35f456f163c10c3c39403629`  
		Last Modified: Thu, 05 Nov 2026 19:11:28 GMT  
		Size: 7.6 MB (7600849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce1efeeb95bf44af90682a039b516be03dd8694063123f6e001f4c9e0d9c9e`  
		Last Modified: Thu, 05 Nov 2026 19:11:28 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b433b0d786a8ccf4aaa54211dcbcb9438c5643cd873b142a1afc8fc42156a813`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:ec4e1f9441e3b16b3785735a335a34f69857732a9b95f686d55f22db6d0e5549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.3 KB (487288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb69275b5c225960c5ae3d6a00ee74c0c86c351f8a4edc1495993fe4efc551bf`

```dockerfile
```

-	Layers:
	-	`sha256:3823d6b2b4711f09568d5f9dc1164d88f16ae3cf73fb75b455d67e72027cf293`  
		Last Modified: Thu, 05 Nov 2026 19:11:28 GMT  
		Size: 462.6 KB (462603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d452f57769358a0ed72d284853fca8a187d1bd6602c93977b56830993866dab1`  
		Last Modified: Thu, 05 Nov 2026 19:11:28 GMT  
		Size: 24.7 KB (24685 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; arm variant v6

```console
$ docker pull redis@sha256:4adb0a045336d8b0078a8a858ed13472d351fae8bcc31e0b0d062c414636ec33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11190768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbb8abc0c1cef818d3c3b48125047d5784008ab6ccc493e820aae4c69b210fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:33 GMT
ADD alpine-minirootfs-3.21.10-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:32 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:48:33 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:49:08 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 18:49:08 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 18:49:08 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 18:49:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:49:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:49:08 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:49:08 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:49:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:49:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:49:08 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:49:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:67d90dde067e1df9cd76cc9d7496ddc1d7c97048e6825d92a3d8d38f18b23d09`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.4 MB (3354205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52cc63d77633a16498aee2132247cdf5c5722d4f48cd00d382322185dbc86f5`  
		Last Modified: Thu, 05 Nov 2026 18:49:13 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c89371069f2e576a01f48b20c04f5facbb8d1a1076c20da472d282fcb921ae`  
		Last Modified: Thu, 05 Nov 2026 18:49:13 GMT  
		Size: 199.0 KB (199023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e7e659c2e5ca508c349585855ba6bb1d86a5341561431091a63d02cee32aea`  
		Last Modified: Thu, 05 Nov 2026 18:49:13 GMT  
		Size: 7.6 MB (7635855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8289e171b397cbec2fa2206aec760ae9eb9b71c7b9f15a3c2d1a15f0ba614899`  
		Last Modified: Thu, 05 Nov 2026 18:49:13 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d430b831ad76b8b07f9dcd75bcc20d24b58816230a8b16bc66a8424942648adc`  
		Last Modified: Thu, 05 Nov 2026 18:49:14 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:7c2b7829bd257482d437262764f06f747e99e6a0aaf00474cd1162abb552c7f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 KB (24606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327727c1fd82242a799af3074e63a1fb3efb7e90f69b991a9237f20bcfebd28f`

```dockerfile
```

-	Layers:
	-	`sha256:3937caec3135f4b665646ee1243c84f780b4370aff55250ce9ccdc817282c521`  
		Last Modified: Thu, 05 Nov 2026 18:49:12 GMT  
		Size: 24.6 KB (24606 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; arm variant v7

```console
$ docker pull redis@sha256:5a20b10ddf4749d0978a61eed6ab8a7e9d8a95a8cf4f1f15df364663c2f54d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10801696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceca7623b0ecafa39bf60713cfbff4eb5092286a48196282d018296358805737`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:40 GMT
ADD alpine-minirootfs-3.21.10-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:03 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:48:04 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 18:48:40 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 18:48:40 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 18:48:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:48:40 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:48:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:40 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:48:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:85669f45edf8a72af7311a13695486798f4b818553bd67e62603dbdc8199280b`  
		Last Modified: Thu, 05 Nov 2026 18:01:46 GMT  
		Size: 3.1 MB (3083812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f53c2b6b16d3f508629b34b22482ea313591c71cca34ea1a5d362237eb6296`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368cbd181dc8fa584f04fd355ac0a1d6c695d08a076088d916d5ae6732e8834c`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 197.4 KB (197358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696515210ebf67940c9134feb3b51afbdc9c2b026290033ccda51bacdbf2309e`  
		Last Modified: Thu, 05 Nov 2026 18:48:46 GMT  
		Size: 7.5 MB (7518842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1ee478e92d187d20a295db7ac5959f6a115d3582602a3fbeada83eae80cd71`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1229057a70acca618498d0fe9dd9f15528d6a9d0d4327c588e3d2e7fbf2732`  
		Last Modified: Thu, 05 Nov 2026 18:48:46 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:31a11ff17bdc72286deb4d0ac07be6ed823dc288a1c4c5839d147397f642de4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 KB (490466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e35cbc5898e71c5354f3c03598aa5fcd36d185a2ac4b091baf364e17e2e0bfc`

```dockerfile
```

-	Layers:
	-	`sha256:38aa703579d9ec83a8e6f76f334b692940c08adf8cd7712a6634e06f3289b3f6`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 465.6 KB (465645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07a3e2a3b81080fbd8c9e6cd7273fcfb66197da8cd2c7d484a921ba497e75bf`  
		Last Modified: Thu, 05 Nov 2026 18:48:45 GMT  
		Size: 24.8 KB (24821 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:32427b428545307c698940ef1b1add901f65139c4c7b06138039718a22cc3835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11837942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2fe056d796e116cc68fb241baedb1fbfbab6d386499feaa39e1e16a7a6c8fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:41 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:06:42 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 19:07:15 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 19:07:15 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 19:07:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:07:15 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:07:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:07:15 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:07:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6719998ae617bb87411bd1446bd857b2aaf26c9311b2511cca9a3c75b2230b77`  
		Last Modified: Thu, 05 Nov 2026 19:07:20 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:740183858db257cd93bac375bb4699a3a67a9a2db48ffa066106966e456ee73b`  
		Last Modified: Thu, 05 Nov 2026 19:07:21 GMT  
		Size: 201.4 KB (201351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ac115d449764bff79fdeefcb2b012af1386884e22d3e24a38f4bfd480a656d`  
		Last Modified: Thu, 05 Nov 2026 19:07:21 GMT  
		Size: 7.7 MB (7660487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1da2052ae94f843228b48e24179e2e3c3bbbbcdafedce18687fe8c8a887ce76`  
		Last Modified: Thu, 05 Nov 2026 19:07:21 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f12c3a27871031e6c9008b7547813c90ce0559604b81f7b092d2b396f95159`  
		Last Modified: Thu, 05 Nov 2026 19:07:22 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:e4b3c2507b1ee628de2084141ccfe2a1843bb2a2dad18f9f0152846e88a3efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 KB (487542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61977652c85d129f8a7fed3621d909940eb9f4a6db85ece72c7914325622f764`

```dockerfile
```

-	Layers:
	-	`sha256:b656a9cae3ef144144fbfd2ac82b215330f5af4d738d3bea0e5ee5a688c174cd`  
		Last Modified: Thu, 05 Nov 2026 19:07:21 GMT  
		Size: 462.7 KB (462683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b88b88531b740871e765a1af464368f81503957cb279df46076464cfed4182b`  
		Last Modified: Thu, 05 Nov 2026 19:07:22 GMT  
		Size: 24.9 KB (24859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; 386

```console
$ docker pull redis@sha256:d1584b4ae83ddf2491a07d2302ace14018005870aa96c9c115de1a7f8a04a1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10989058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edde868d3431032b616e28d4ac28f317cb3ee33e845ad870b1a476fe408de49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:35 GMT
ADD alpine-minirootfs-3.21.10-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:35 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:03 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:31:04 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:31:35 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 18:31:35 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 18:31:35 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 18:31:35 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:31:35 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:31:35 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:31:35 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:31:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:36 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:31:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6942dce0c894407e88929f60b37f7d6eff011612d51a979fac30893b3c482ec6`  
		Last Modified: Thu, 05 Nov 2026 18:01:40 GMT  
		Size: 3.4 MB (3448983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddc24eb6c54aee3821325480441afee91c15a09a3fa1986a1b7af9401edd4df`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5dfbf4e880d192bc1f2fef9b28a5115c7bfb8d80a9ae9312b5980eca06e35f`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 198.6 KB (198629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a554716cf8262143731dd044d537288b58840b333799d791ec41c23c71578af`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 7.3 MB (7339760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2de9e6522128409f8dcff2a70df36dc497cb363b3bdb7c235e891857947c5c`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3218be3cec8bbe028d4474ac8020d61acfbb0b0f5ad4316b83ae3a436c77aafe`  
		Last Modified: Thu, 05 Nov 2026 18:31:42 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:d143b3c223b8679b52acd088733821151cd791c6ad8ee8475716d98cd5325447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.2 KB (487206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0d0df30c6f2179ed13ba2325f7178ab97fa5df20ac8d30dd74e5d3b45a71e7`

```dockerfile
```

-	Layers:
	-	`sha256:0a7063efc06618f64c298441c299d519f4eb3c9f5e94644664bee9c609755068`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 462.6 KB (462568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44e7b8a7929e54b88753603fcb49b5129071203c5019ebf500af5eae46edacbc`  
		Last Modified: Thu, 05 Nov 2026 18:31:41 GMT  
		Size: 24.6 KB (24638 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; ppc64le

```console
$ docker pull redis@sha256:2716488a0bac2697bc6f1eb84271b9de2a460093820169619453726e7831c555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11957545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e1f0b6e41415ce6619f29cc29f180046d273bebfb3d4a66ba9485f91d02be8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:14 GMT
ADD alpine-minirootfs-3.21.10-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:14 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 23:33:22 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 23:37:51 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 23:37:51 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 23:37:51 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 23:37:51 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 23:37:52 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 23:37:52 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 23:37:53 GMT
WORKDIR /data
# Thu, 05 Nov 2026 23:37:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:37:53 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 23:37:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e31aa04035baf79a581d007cc1c93d4abe6462df974b67e564cc540df6845323`  
		Last Modified: Thu, 05 Nov 2026 20:44:22 GMT  
		Size: 3.6 MB (3558023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c062a6ec249d0c37a57821dd9eee5ee604ee8f28c010fabc234a2e25ec0df27`  
		Last Modified: Thu, 05 Nov 2026 23:35:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6f84f94885aca97c9e0ad136bbda6255cded7f3046f03a32ee8de22db9f51c`  
		Last Modified: Thu, 05 Nov 2026 23:35:32 GMT  
		Size: 202.3 KB (202326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f8c9708a7108af85e2ebc4c01b3b7ef033fa3227210f5ec09398a36344f6cb`  
		Last Modified: Thu, 05 Nov 2026 23:38:03 GMT  
		Size: 8.2 MB (8195508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8f499a69603b29718f67a5e79eca30c48adef720252ea2f9030927052693f9`  
		Last Modified: Thu, 05 Nov 2026 23:38:02 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d96304c29c21e212ee2e648550827c49f9878da2c31ac78d9177f81f4f3b21`  
		Last Modified: Thu, 05 Nov 2026 23:38:02 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:81a96118576c7f1778a1ad4956ba8738263c94ddd7fb80103e10dafd23034d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ad879d8d01b9b98bae7d038f4f9b8f0756b77fd22fa55ea830691ac705765`

```dockerfile
```

-	Layers:
	-	`sha256:d8dcbb31c5591263402f8f0127519284f111254502fa91f53c73a1ee3b327ba8`  
		Last Modified: Thu, 05 Nov 2026 23:38:02 GMT  
		Size: 460.7 KB (460698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bdc8fe657031582ae94b89b392fe87065b2263f40bbe7350f94f6d7fbacf971`  
		Last Modified: Thu, 05 Nov 2026 23:38:02 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; riscv64

```console
$ docker pull redis@sha256:e30117fb6af2c6b85fa55ad948397b35d06f0c41bb559d98aadab23c20f1d036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10912079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a0279370c8a88d96edc83cc5af09e258b4bd7ab92598ed6db2f9692a26ca25`
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
# Mon, 26 Oct 2026 13:33:32 GMT
ENV REDIS_VERSION=6.2.24
# Mon, 26 Oct 2026 13:33:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Mon, 26 Oct 2026 13:33:32 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Mon, 26 Oct 2026 13:33:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 13:33:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 13:33:32 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 13:33:32 GMT
WORKDIR /data
# Mon, 26 Oct 2026 13:33:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:33:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:33:33 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 13:33:33 GMT
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
	-	`sha256:be0bc82698b69674c865ef688476d94630e34522ed3dc2339519c11f84082dc8`  
		Last Modified: Mon, 26 Oct 2026 13:34:21 GMT  
		Size: 7.4 MB (7375047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4737aecbee598380d8b268ad1b3fe277882a293d8ec76ef403bbb79c224a9dc`  
		Last Modified: Mon, 26 Oct 2026 13:34:20 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15189ff691d943b667b55cf9be4ff06fdb4776d0837df6ce126779e69e7917a`  
		Last Modified: Mon, 26 Oct 2026 13:34:20 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:12723219689defb256e1ca3737db400867f87cf43814191347740ba2837ec37d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 KB (485436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ecaa71b3c683fe9e2daeb8668441dda278d617ae713127887186d9eb6f3df0`

```dockerfile
```

-	Layers:
	-	`sha256:7e3ce9f4f7d11262652145755708574c1723deca5000d4c2c64636c9a67afdf2`  
		Last Modified: Mon, 26 Oct 2026 13:34:20 GMT  
		Size: 460.7 KB (460688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:185793c4f5f03e0cc668bb02ba8258c2abc1eca84dfb6b26866a67ee36e0f79a`  
		Last Modified: Mon, 26 Oct 2026 13:34:20 GMT  
		Size: 24.7 KB (24748 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-alpine3.21` - linux; s390x

```console
$ docker pull redis@sha256:836134eea99c6d707347efab1b35f5472a30573e3413b811363a44b5117d2a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11635365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebc351e122162a910fbe15322a4355e183c724caf00a44c79cafd0cd92793a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:35 GMT
ADD alpine-minirootfs-3.21.10-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:35 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:45 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:12:46 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:13:32 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 19:13:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 19:13:32 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 19:13:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		wget 	; 	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	apk del --no-network .build-deps; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:13:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:13:33 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:13:34 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:13:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:13:35 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:13:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:76acc992b96ede9fb8830bb62083d7e67658dc01a811a4b087e878b1915b99b6`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.5 MB (3453160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412e84c117b75fff9593b838dace6340b547f69ca1cb89ff919ec4fe373cf8b0`  
		Last Modified: Thu, 05 Nov 2026 19:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84877264e4276f7045f24c6abaf1e394df59b8b9e912e583ccfb6ae9333badc0`  
		Last Modified: Thu, 05 Nov 2026 19:13:55 GMT  
		Size: 201.0 KB (201049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79095073c86803de7b605a116d4d4a638ca715c274de768b99be87214b55c772`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 8.0 MB (7979470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702494ff074bb2b567efb7286bad1e5ca45f05dfcca922c48a38eb306ef1cd78`  
		Last Modified: Thu, 05 Nov 2026 19:13:55 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4519eda08cd9a84e0e84b8f3c5d515440dd041c8db982c3f01b1adafe8716086`  
		Last Modified: Thu, 05 Nov 2026 19:13:56 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-alpine3.21` - unknown; unknown

```console
$ docker pull redis@sha256:b90818b26b9e22e1da7043277f2744fa989443f162765166860402f1911355cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 KB (485335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3c7747d56470011c7d2687883042e765b70b2630c5476362b1489429e769d`

```dockerfile
```

-	Layers:
	-	`sha256:66bf6811c3f415083c5005a15b51e2e2a8a69e1825dc0bfc9f7a8f4302360fe9`  
		Last Modified: Thu, 05 Nov 2026 19:13:55 GMT  
		Size: 460.7 KB (460652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d94f76dc4deedbc48a6ebed0f2c34be8ae3c9b89e1dc1bb2e45eb8dbaa7cf55f`  
		Last Modified: Thu, 05 Nov 2026 19:13:55 GMT  
		Size: 24.7 KB (24683 bytes)  
		MIME: application/vnd.in-toto+json
