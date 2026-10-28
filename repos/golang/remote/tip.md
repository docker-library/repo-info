## `golang:tip`

```console
$ docker pull golang@sha256:58f18fbbac5c6bd0621f117a074c2f1b7477354df55e9b340f52e62daa960c36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `golang:tip` - linux; amd64

```console
$ docker pull golang@sha256:c56eb21b5b9e88f621453e2a3b1abdf4ccefb495470dcb1eb3c715fa530cbacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.5 MB (350485016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551fd6a94aeeb07bd268ee4e93b4ad068d882e395956810cc6e1023ff2595c46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:16:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:17:20 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:17:20 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:17:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:17:20 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:17:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:17:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ae7d102801edfc8a4be1af9921acdce826421cfaf24676021f665a53efb1b9`  
		Last Modified: Wed, 28 Oct 2026 04:17:49 GMT  
		Size: 102.4 MB (102445316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82722e2c046f52bc924fd3eab9f7d4fbf5bbac9fb0ce67fcca5e63377a411258`  
		Last Modified: Tue, 27 Oct 2026 16:28:35 GMT  
		Size: 105.2 MB (105178487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1e7edc5c99ea0e66ee572fe196008fd4e5ab7af3f39c7200fd96c83fc81e36`  
		Last Modified: Wed, 28 Oct 2026 04:17:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:a557e4bdebee47bf4d48a85d93c5433bf53ae3084066f7ca412866b1d56c0c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd0aa985b0381b9a76839f7b4b32151fddc669580207a2547e420665ac95a8b`

```dockerfile
```

-	Layers:
	-	`sha256:79d0c9d1ca89bbfc789cdc8718b216a2177b138600e4b6dd18a4084024ff76d0`  
		Last Modified: Wed, 28 Oct 2026 04:17:46 GMT  
		Size: 10.8 MB (10795463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbf9d21e5c15dd3f370700fcba59015fbbcbfad245bcb048489bb681e42e46d3`  
		Last Modified: Wed, 28 Oct 2026 04:17:46 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:b6081750010eb425455fcb36a8fd3f342c28a5e9a1f19da1db5c0c6f27f312ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306368533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca72d3c9635b3ad13451d0ed256113c2bc484d1699fd2259c5ce337183998c9b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:16:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 05:17:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 05:17:33 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 05:17:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 05:17:33 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 05:17:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 05:17:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec6efd1f29ba3dd782af5df3b27fb4913ca2a2cd38ad2601a5a43175ae19831`  
		Last Modified: Wed, 28 Oct 2026 05:18:02 GMT  
		Size: 73.1 MB (73083335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ed0706d066a1f8a8160080fb6eb18909eb49a3d840816f9c4cd9c4cf85b15`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 101.1 MB (101059169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbd25888ebe15c417b7ac329aeaee59e282ec4fbdf0fe9f4d6f65ab23f34246`  
		Last Modified: Wed, 28 Oct 2026 05:18:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:8941218cfcb72ce87163085a038f51af622a4476ef68c0286975b6d7db128a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fb3844d5493bcf511b85afca53cb04a6d0819d4c4b40c09b68beb4ba169e66`

```dockerfile
```

-	Layers:
	-	`sha256:d14421c3dd77917d94cb8c6b316a34a9f7ebbc3460d138cb0b5fb32278238a97`  
		Last Modified: Wed, 28 Oct 2026 05:18:00 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e27d58242c003f03364270d39c52be941faa94b48bdda823f5be3b85fe4d93ab`  
		Last Modified: Wed, 28 Oct 2026 05:18:00 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e6a39e07fb74c5314ccd155e1a856e692e183e454e17f081f2048e00493e7c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340604600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4231e76a4b57cba1d4c18076462ce9cf14937c9fab5de6b9abc986a8a433dd32`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:16:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:17:00 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:17:00 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:17:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:17:00 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:17:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:17:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189d63f3b72b55d53628e9e51600df46cd3a7682dbe0e967a1741b0485b1ef62`  
		Last Modified: Wed, 28 Oct 2026 04:17:31 GMT  
		Size: 98.6 MB (98592624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e63cc2709b769d01b299b6ecc290dd6fd049fba9121425facd2f9f9d685556d`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 99.6 MB (99564116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2252db33f142bb819ed01e75f177676daf8e376e1a4b3049b9dab30f968ba6`  
		Last Modified: Wed, 28 Oct 2026 04:17:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:7d61356595baea91a29c724efc9e8697835610758d3787890585e35bc69ef8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b36e6277e39d73a600761c60ef3dcb7027713950ac5f7dde124adf6ae9e7947`

```dockerfile
```

-	Layers:
	-	`sha256:31dc849619193495989322011d1b64d3db091e9a2b0d4a0aa3432a0f92e8f706`  
		Last Modified: Wed, 28 Oct 2026 04:17:29 GMT  
		Size: 10.9 MB (10915282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:283c154afb306ad1c238b26c37e47d4fe1b38c8f072e8475aadfb5880f701a2e`  
		Last Modified: Wed, 28 Oct 2026 04:17:28 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:e44cc4724ea1a22467bb00a2cb21b3b973b2add6614c3084246f16e4f430107b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351424838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4004e7e3f599673370639ced3663deab94f1e7c5048ec85cc57a5015745036f3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:13:52 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:13:52 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:13:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:13:52 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:13:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:13:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62933a21b583195e4f59a0ffcfb66f567701192ffacb0e69c5e6b700655a5147`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 26.8 MB (26799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4462378acf938c7c0307009b8bfe3cf23a2b4953f37ac5df637e8266f3ac56`  
		Last Modified: Wed, 28 Oct 2026 02:28:54 GMT  
		Size: 69.9 MB (69857152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ca38c2db684c74dffbe40f064bf0727277652d4a4633733f844100315a3fc9`  
		Last Modified: Wed, 28 Oct 2026 04:14:20 GMT  
		Size: 100.9 MB (100885170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472f9a541f4058200fdb5c688e93c6b823dc26a63f30bfce9ee0889838aec45e`  
		Last Modified: Tue, 27 Oct 2026 16:28:47 GMT  
		Size: 103.0 MB (102961292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02221f11c00fcb697296064338d3b393d60e2041caa897f36de1886215e483e7`  
		Last Modified: Wed, 28 Oct 2026 04:14:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:4c9d930874320991341df52aceafa60d328bea6246d056fe6e059746d65786b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606e4d70fbe007538ef8975bbe380142a851834c3b6e3f6c930c5a0544e9b6be`

```dockerfile
```

-	Layers:
	-	`sha256:28226d94bb417091feb515361175405f2fc13239813272fa26c899a6f8dec1d8`  
		Last Modified: Wed, 28 Oct 2026 04:14:18 GMT  
		Size: 10.8 MB (10766725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1116e4b7bb13bec7b518ca5dc930aea966cdc0dca3a117d7dbbc2808b3d5cab4`  
		Last Modified: Wed, 28 Oct 2026 04:14:18 GMT  
		Size: 28.6 KB (28641 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; ppc64le

```console
$ docker pull golang@sha256:7af21c86c791d92772ceaa1c79a8c3dc16fe707b236f34b3c4a4d92a2597a919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.3 MB (348300617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3b1cec06d6725122cd1d66d736b86fe8f9391b469560473013087056db20e2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:08:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 20:27:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:27:25 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 17:26:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 17:26:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029f022c1e8c3f1f07de7966f8065467f470e5d402044125c40d71809d55ea27`  
		Last Modified: Wed, 28 Oct 2026 15:09:54 GMT  
		Size: 93.1 MB (93148401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8ca9ca011184d58c037e97d28044484ea497a6cca757182d4969f97cb5945d`  
		Last Modified: Tue, 27 Oct 2026 20:29:29 GMT  
		Size: 101.8 MB (101813407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4170de99125e06e768df13b35d657e3499780a5ffa896f9d7bd7b7a5a499675`  
		Last Modified: Wed, 28 Oct 2026 17:26:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:e26a1f99995099972bc009529f5b6b1ad7e6bdcee5a21a95d084b2b7f8ee36c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820b7361e3d330e9803b0fe9888b9dd23b5adb11fd2142cab44baff916b25935`

```dockerfile
```

-	Layers:
	-	`sha256:c47f87eb8ffb1144af338e8f815d28b2a418ee43cdd67cc29914e2f009ae50be`  
		Last Modified: Wed, 28 Oct 2026 17:26:54 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6d17c5358c9ca49d1c5cdd2388a4e344ac64b82e7a1e735e538046f99846246`  
		Last Modified: Wed, 28 Oct 2026 17:26:54 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; riscv64

```console
$ docker pull golang@sha256:291d2343ced3718275e82e2797d0e05e3988366a2e32fc3d773a05b6b3bd3ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373578543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ff6f43b0bd953382687c14745ff8e85e6202ffb000637d226188bb4dc84311`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 07:44:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:33:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:33:03 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:33:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:33:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cd477161cdd2b30ec371c89dc566cb5623e15556c206ab4af7a6ab7a2f9b06`  
		Last Modified: Sat, 10 Oct 2026 08:07:54 GMT  
		Size: 131.9 MB (131885721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8abfccbebb6990984afc48a50bcd0c4168b9e37a31b0d6473e7418e677a2de`  
		Last Modified: Mon, 19 Oct 2026 18:40:49 GMT  
		Size: 102.1 MB (102138235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b06b8b9cbfab93478323434c945a4446f577027e6b2b51040488dc14e871a6`  
		Last Modified: Mon, 19 Oct 2026 18:40:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:42335941ae0a724e75e2e642dd635d549518ba0e9a0c3918ff0626eb70d750dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec32eea37ba8a716e98876f44be84b690b0c2ed8119d84eb5355101bc678c08`

```dockerfile
```

-	Layers:
	-	`sha256:c022b8c9aa1d5803066886d7e355c9618528c0846c7da683e42240b245962234`  
		Last Modified: Tue, 20 Oct 2026 03:56:43 GMT  
		Size: 10.9 MB (10867136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe072a0dd737f695db882a5e452419109a8b01779f7ca9776972444ad154fed`  
		Last Modified: Tue, 20 Oct 2026 03:56:42 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:3d0693a220436190efec61ed3a491597df48051dc7adfe7cef57fb1da3e72b5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (325030145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3e032a6feee22e6dad3210f21463ae2cfa3d552e69812eb0d59cdbc3ef116`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 16:37:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 17:14:38 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 17:14:38 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 17:14:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 17:14:38 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 17:14:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 17:14:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbcc8858cde6193263947c31b5152380d626a1b64ea15511915cf0be7d9cec`  
		Last Modified: Wed, 28 Oct 2026 04:12:36 GMT  
		Size: 68.7 MB (68663295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef60ca66ed09382f4e7ba27b2d033bd9bf69d08d401ee38e7c62f9eefcf3d37`  
		Last Modified: Wed, 28 Oct 2026 16:39:41 GMT  
		Size: 76.3 MB (76260581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d7035eb958b24f1737d1e86275272f4744df284b425d94bcac03d56709fdd`  
		Last Modified: Tue, 27 Oct 2026 16:30:59 GMT  
		Size: 103.8 MB (103818476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45992d1a1268e8379bed8373a63327bc8b50063d45be793a18ed7a759153a8ba`  
		Last Modified: Wed, 28 Oct 2026 17:15:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:25ec7b05d1fbe15e716f23bd30333ed4a6665d3dc12ea5c2a60d48aa39e410f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10635290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58589a2a5621e3b72f445a82f1d73e81e149d07856e911e8b96a32fb5d067886`

```dockerfile
```

-	Layers:
	-	`sha256:548479dcd19aebd6b07c56ffa69d17333f2efe545b7eb28cabb9e242134f48d8`  
		Last Modified: Wed, 28 Oct 2026 17:15:37 GMT  
		Size: 10.6 MB (10606610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a9da4c160805ba27662cc9a51107ad66043a073725aebc6911a06dc6352a738`  
		Last Modified: Wed, 28 Oct 2026 17:15:37 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
