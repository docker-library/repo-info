## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:847ebf95856353b4744f1ab1487711255fb2c7be7e548badb32cfdeca01b66cc
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

### `memcached:alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json
