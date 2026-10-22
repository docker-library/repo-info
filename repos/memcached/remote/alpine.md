## `memcached:alpine`

```console
$ docker pull memcached@sha256:0e4efc7cafc6ed4e3ca88844048e22cbed491fe21846dfe8fdc996fce2a9717e
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

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:b655eb23860c9f5cd8820dc15391d6c85f5c4001c69fb484b508a7a6c0b2ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b8dced45037bb279c8b4b7c6173dd938bb75674f945d9f8554ffed1b752ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:17:46 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 19 Sep 2026 06:17:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 07:00:09 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 07:00:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 07:00:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 07:00:09 GMT
USER memcache
# Sat, 19 Sep 2026 07:00:09 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 07:00:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50696ee7fd6dd6a48287f1be319d7356f1aab635568394ca3f5d932466f8bc69`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37eda83220efe3380370c6043e0694c7ff2ccf346970849bf28d6897aeb60f5`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 108.9 KB (108897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3259f74c8597dcf889fea8d8e6a0221da5289a45dac4f2851502a79b91f4a1f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 2.1 MB (2059672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bced3b020a43d00c9ff35fc2ff7e2abbc320776123d4e75d5ba63bdbde9992f`  
		Last Modified: Sat, 19 Sep 2026 07:00:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c55e359dc42a43fbf052b329a4eaa4484f898a931a8caff3b10d2211ebcaf55`  
		Last Modified: Sat, 19 Sep 2026 07:00:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4156ffa9a211bd5adbd087c9f683e974870966536c1ae129337da66360b95151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f0ecd5f404f87006c9e26865243a7998e2aafa80a461dd9752c041697bf2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6980ceb4c4153eb9d97e749ed0af9b20c568aae526989597ec81e90c3b06ad9`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e8e25f4832f3505dd2a86cfbdd4fb23a849b2a41c2a65539cc5fc2e5c853a0`  
		Last Modified: Sat, 19 Sep 2026 07:00:33 GMT  
		Size: 20.6 KB (20604 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json
