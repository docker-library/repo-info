## `spiped:alpine`

```console
$ docker pull spiped@sha256:f87b41f6885a06ec29791db5ff19cd96dba3114f2143f36f8b8b111329b02aad
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

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:fae47a0feee759714da5ca5026c2fe921094f916e48a73cc6cbf33be2d74a9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3974200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51206e85df9028b0197fe24e3aea8727a21a48517c55b1e986cc83a168ca012d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 22:55:38 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 22:55:47 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 22:55:47 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 22:55:47 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:55:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:47 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ccea66733e5e329fc380fbd70602115d61ebf1830fdcdcab04e07ddf2151bd`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6483d800ec6a4572e94005c8f27eccfe31b3f8448602dff138ab12a0d0f315a8`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 8.8 KB (8822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19567fa338cb9246928918d9dedf59e36a93df6b306b2619b16b316f2ce90b0d`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 110.9 KB (110888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da7d8262435708979208484110728d5ad1b02564fef4c6b23bab7d02a316c96`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f5f77f09c7d9217acedb6eeaf5cb0ed080d7383a775f3a502b6ea75e82dcb8`  
		Last Modified: Wed, 21 Oct 2026 22:55:53 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:24dc6af9542df84e97dddf1de7779b545d6bacccb7bc5ef192d623955e49706d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f4d26c89a05424a174916a7bc487b545ef58a4294f584f04570be14d2ec456`

```dockerfile
```

-	Layers:
	-	`sha256:4c73a2016cd897e27f58391aca513540b89f3710d6f6485f74f8ebbbb14b8e97`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee51489b073b9071c4fd8884d01d7e9a6d7e7c26574cc950c84b11ef9436b53`  
		Last Modified: Wed, 21 Oct 2026 22:55:52 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:835b777890bdd3686a4d6de4e3fb1eaab9cc89bcd81f0f8e685f04d26cf9d163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3660408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13c584945777da7e214e19912bd7b849a3f4fa79acf34e2647615cfce2a208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:16 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:28:17 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:28:27 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:28:27 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:28:27 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e003aafa803fdacf543c0a6c1b4781a7a55be5fc5e2827150d2c18dfc4944b5`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaaf48d551f4183ed3173b58b3a7f847d7264a5a33c90507cbc0e0487877066`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 8.8 KB (8796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfe19d7d50cfbf3563f0d9f80729da34e63d5af72d8b4aab696f7443ff36269`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 91.9 KB (91941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899092046cba52e61819b3671eb8399e9f97863cd20dccd701f9c2f3dde69441`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd6927df458bd7c3a38e1785c3af65c6c96e33fae9e843cfc7e8ba7097da4d`  
		Last Modified: Wed, 21 Oct 2026 23:28:32 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7abc9357498b6107742b1527c613ad8ea2f779a25840e544344a7e3b095c7e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c1566415362b7ab66b94785d44b457e40b841816e6e15161a8024462c3ad7e`

```dockerfile
```

-	Layers:
	-	`sha256:414f26a17784412c3209adfedadb982d31e691c4c39ba38a77575641518caf3d`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:e56ccc35b52d066e9d8976e1e83c441ca1538e098108f78ba37c052e0c717797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30c25e536629275e2fc68512b1b9014916da97a31aa3b3264efcbe2d924c5e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:31:05 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:31:05 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:31:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:31:15 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:31:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60d9daa50a5b83e1ec0e52c6ddb774bae6f2b16f7a4fbb05fc0a9ffe7039927`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbcc58a98d56444c6b0a0790b7b0ac188fc882fc16ee1e933121b0ebb5b35d3`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 8.8 KB (8820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584658d3cc15f526d41a755550e40e0f7f984afca5e549b195e52bc3bda38e1a`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 84.8 KB (84781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935329e376c503bd6eba4ba8c149b05abbeb4ad872582b95b42e482ccaf68e98`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa93819aa2d9bb55fa60d3f486512485689cee0456cc39b001db1f62f5e0ce`  
		Last Modified: Wed, 21 Oct 2026 23:31:21 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:18dbe89bad4c36f54f4afcdb289625abd84464432e98b00ab7d72f029f732633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf33b77967437212b05adfffa313c94095cd127650a412f52dcf947741d2c79f`

```dockerfile
```

-	Layers:
	-	`sha256:a6c416b3486c2716c21da9fba066bee54ac74ad103ff668ebc812acd9a953638`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a530e5b93df87e40deae694883e029c696da63a4e5d372c9f1ddc77e3727f451`  
		Last Modified: Wed, 21 Oct 2026 23:31:20 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:e8e51a1778c050c6efcbe5c81790bb392d03f6be74b2338bb16f4bafd5777e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83eb622d27387c7868f534140b4e46f05c9d63f2a13cd21f53897ec4ae8eb9a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:18:57 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:19:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:19:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:19:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5eec00b79fe5f7aa506117865799d803af32965f75321b2a534e9d61b0bfa1`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b003d3789581651be66152a8be0bbb8dfc47ef822a3a6aad6d16fe517ef7af5`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 8.8 KB (8808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249c4a547c9aaf541ffde306f6706750268dc25993dee680c23a9b0e1907b2e`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 102.5 KB (102533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7109008bdad5f8266087a6e90b8a93a74ffd42caf2c0505ac8da9214578b9215`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec486d7b0ccc7715bbd877dbf8c7d3466f256de41bf596bcbe2f6d7d2d557cfe`  
		Last Modified: Wed, 21 Oct 2026 23:19:13 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:7e72cfdde2fcd845760f11ae7aad412ce0fa38794a173a8d5bc6b258aaa3ae1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ffc2afcd37f58fb10d1e284e749abbba3382f818bc60277a84741e906c9abb`

```dockerfile
```

-	Layers:
	-	`sha256:3b0f11994ccc3f5b722e06b7c987fb17c0e6f657dece6c293d6161f54bc4886c`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e83efaefa25b93609781f9255eadf0e2be845ebff391644ebe8602cb6350cc2`  
		Last Modified: Wed, 21 Oct 2026 23:19:12 GMT  
		Size: 14.4 KB (14392 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:4860a48b13f95daa97857b2ba674d8923f3f9c397bfa3ef818d01a874fbe832e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3811857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1ebb3dcf7282f42daa8c509010cfbe731d1813b741ec5f9a66edef9ef358f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:02 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:20:02 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:20:13 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:20:13 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1001fcf2d5dd2cd24bab5bb41e2aa30dbd64a3c3d58716d666594f05779f9c5`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8303b8659a9cf34d5f77cb56bd2040814171d1718e05eec93a08c9927eb8fde7`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72e37ca3f04ca70ff2ff207216f3d95f6377d0867f5c479876ff6e273f7ea56`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 122.7 KB (122680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c445b3e75892cf903e5fede1d8c69d43ababee56702fdb54c2efebeedc8a9c2`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fd01cb412a9cf725099855c6ac237793397d55907755a1e92a3ad7de13530c`  
		Last Modified: Wed, 21 Oct 2026 23:20:18 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:03c9c91025afbe21dd96149143300310cf9c6034c529d5d45f7d3f3d942f45ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829f08da011a3067754782f698299417997aec3bc63c33e840a04ec95cb0272a`

```dockerfile
```

-	Layers:
	-	`sha256:6434b1be1aef0376b2dfc7e001a82a0fb4a5264866ca044998793f4cad66e783`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a44e55a67d94720888fdc0cf7c2e109104aa8c93709d54d947116ca1caa96543`  
		Last Modified: Wed, 21 Oct 2026 23:20:17 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:8130f5af0cbfb690315f294b466959177843230f4e2d8a9a4d39e74a1406f15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cd697cea0db5223fdbd7ce75d9170617c1906b780764f851ef76635d7724aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:36:45 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 22 Oct 2026 13:36:47 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 22 Oct 2026 13:37:06 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 13:37:06 GMT
VOLUME [/spiped]
# Thu, 22 Oct 2026 13:37:07 GMT
WORKDIR /spiped
# Thu, 22 Oct 2026 13:37:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:37:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383eedb718628b41f5453b4f5850e1bb046130d884224627c4a667bea4b54cdb`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de430ac3744da88e48dcdbe1426294069eba010cc1415065a02cb6d0ef57bce7`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d6d13480a6bac609cad818d0cddf50afdcc67c6c4509e006da895188c28206`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 114.8 KB (114776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4207aae685f645a5d5b1f1da62d38b5ca002533f025c9bd0a162ba1512243a90`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a07a7b5ea2d07a3dfcc5b102d88cced14dd6b9e4e733475291d508d5315a69`  
		Last Modified: Thu, 22 Oct 2026 13:37:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f963765042adc10500c34620fdf4df65e6db88e61f14544a77b7cf7833ac8318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00465b139c19e7a29bea330d7d7cddc7d67d654fa3284d878c37e9941e74f292`

```dockerfile
```

-	Layers:
	-	`sha256:1b6e9dcf0d021824973415e1d9ccc35fbcc45e3448b5ed9bf863c33357bc232d`  
		Last Modified: Thu, 22 Oct 2026 13:37:27 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f107775d2849fe505548948b8d77c45ee40ba368c9c98db8e66a4a3fdb5d622`  
		Last Modified: Thu, 22 Oct 2026 13:37:28 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:53738435200a852984e06e8f55d1185f5af7d5b2477feaee44ddc306b1f55d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3690786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df69f77f3af173aafb007cb769c2fd325fd6db778819db2800330f3046947957`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:39:27 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 26 Oct 2026 13:39:31 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 26 Oct 2026 13:41:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 26 Oct 2026 13:41:16 GMT
VOLUME [/spiped]
# Mon, 26 Oct 2026 13:41:16 GMT
WORKDIR /spiped
# Mon, 26 Oct 2026 13:41:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 13:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 13:41:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abd10e6004641b9d368d4c58c556a132c6ef8161fb9f7ef9950eba3d44b69f3`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbadca6b144dc832377a024fd79259d6f7cdd7880aed30d91b3615f58fe952b`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 8.8 KB (8819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7469bb2961ca90e0cc2c80e75e99b67276559aeaabcf09693e5b9f79b33123`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 99.9 KB (99934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa44063a678b784a510943e7f6b7dc1241bb88022131ad7dfed90d6c815750e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e2068c7fd2203202fbcad894c947b8e9159d51ea3e5615f3e57abd5216fe5d`  
		Last Modified: Mon, 26 Oct 2026 13:41:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:f596c6f8533940d3dfaad1547105638f9dc9469f962d6c09f2d949204e75087e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c0d21073cd8fa926c7d7cca0487df9d52ea37cedd0c249a358e5801ec0a3cf`

```dockerfile
```

-	Layers:
	-	`sha256:bd8472152f717c3faa5f933b1435c32999bd7c59397fd4839eb3f8bd1c1a692e`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae28d2ad8bde1e6cc5c02c2a0580fd2a1da70956125f973faba9514979fcf7a`  
		Last Modified: Mon, 26 Oct 2026 13:41:48 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:7c3c7045a4cd76c6c4f8bcd2902c2573aa6bc1eb311d784c2fbb1b4c9e527c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3828475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dadd7f3d3e769067ac23b085ace4c69d63c074e8f6cf5ddae3308c347a08e6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:39:43 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Wed, 21 Oct 2026 23:39:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 23:39:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 23:39:51 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 23:39:51 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:39:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:39:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c3bbbcbfef63767d15533edd8c67cf7c97eae292b66aea682869d819973307`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e1fc1c690eaaad7b98710773fca2b30e7abec926608311870f7eb0403539ea`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 8.8 KB (8810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bbab8ba82cb8e2e5e6f932fdc78f279e57b08ad4f8de72648a4413ae29c25a`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 98.6 KB (98574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c5c2c18995bb7f78c15316c6ade4ef1cadce1dc1d4453a51619a3eef57320e`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702e0e671cfe2187530f14f2c8d183171fea789419e537c3166518b86276d3b1`  
		Last Modified: Wed, 21 Oct 2026 23:40:00 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:06dc0af4db3c917a3fb9b34a2d119dc3b31c9476fed7334a2a6659001a4aa519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1dc8cb63481de845260aa46a44a219baed02101e802033f51ff8072828719d`

```dockerfile
```

-	Layers:
	-	`sha256:1dd478d322d4be702ad1147754a1e64dbfaccd4bb6b60dfcdddf75c2d77369a0`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ac00af6e5270e3572ed157415934c1088b74d6ebdf1a360c7f98a9e0e16364`  
		Last Modified: Wed, 21 Oct 2026 23:39:59 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json
