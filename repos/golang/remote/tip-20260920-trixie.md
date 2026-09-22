## `golang:tip-20260920-trixie`

```console
$ docker pull golang@sha256:b225f4560aedfa27bd34de2c9b30b9d64edb433761fce3b884e0b9854b849a15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260920-trixie` - linux; amd64

```console
$ docker pull golang@sha256:9ff2783cfe20c6dcd631d91fba63215d593814af8e714489da8c8373ea01e164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.5 MB (350529882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb3fd8ad0303dd9bc23674b984d59022f6e3040d48f50d944dbe264adcc2d37`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 22 Sep 2026 18:26:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:27:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:16 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:16 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f467a6048743f19425322e656d8c2c3f50a59916ca421b3e68d7493ddb5fa747`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 102.3 MB (102339641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2a3c1e67403e8ea59ff8dfb66f8fefe8f254e9f8881c0f25465bc655250617`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 105.4 MB (105362824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42125db7fc638a60237b46038393d644ae6a6921f84edf5ff7d27d1ab721dc38`  
		Last Modified: Tue, 22 Sep 2026 18:27:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260920-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:edc90303778980913760af9fa35bc2aed9e2a0f6239f2f9a3056d45bd97f44c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10826201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df22d91f7f399b13c1b4ca713555ca5810ef8fd45660942147927ab800bf7142`

```dockerfile
```

-	Layers:
	-	`sha256:6294cced95dfb1516deadaf6a41336d9a2ead50ffd0c1b5bf72ef98f63477194`  
		Last Modified: Tue, 22 Sep 2026 18:27:45 GMT  
		Size: 10.8 MB (10797516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ff429fb46a8830199d4e75a6d3df657e90596b3d177f8ddf2492d198007d68e`  
		Last Modified: Tue, 22 Sep 2026 18:27:44 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260920-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:06c69231a4859d1c15a8e94e442a43285118389f1c9d1b4893cf37780d0c4df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306420834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61ed4b57736fb369610a937ed161cce882bf4ca83fb58b2fbd6b369ba93dc39`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 22 Sep 2026 18:26:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:28:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:28:31 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:28:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:28:31 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5263bfac9f818f4ca845fc2fa75a1e1d26ab28688cfeac566c3195860cb82ae8`  
		Last Modified: Sat, 19 Sep 2026 01:28:39 GMT  
		Size: 23.6 MB (23641382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147b8adbb165d616a23eb3cfaefae1bbc21052b5d1f10a004e035c3229e1add3`  
		Last Modified: Sat, 19 Sep 2026 02:26:59 GMT  
		Size: 62.8 MB (62752934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00c3adf137bbc2630f5f8b52b8732af4aca6b843f397e89f8840745381786ac`  
		Last Modified: Tue, 22 Sep 2026 18:29:02 GMT  
		Size: 73.0 MB (72982700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2594fec72c274abdbe5fd8210c1dcaa3280face8fddb9c0eb3ed407fe446637a`  
		Last Modified: Tue, 22 Sep 2026 18:29:03 GMT  
		Size: 101.2 MB (101239393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd2ef6e6ea1bc506267e7750ff3e9096e04ec710d113cfc0e7f55c6dabf308b`  
		Last Modified: Tue, 22 Sep 2026 18:28:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260920-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:9e20fa17f328bd704bc541c1c3e3c7c7e50b83082ba22a20c2a23c2e9b9fc24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10622212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656950970ab86cc80de344be29dcff79c4895a05726fb789a17483c95a5ea4f4`

```dockerfile
```

-	Layers:
	-	`sha256:aa421be41f5d952c35651ae3bbdb5c5ffe9722c248754e828dd9afc04f8f9070`  
		Last Modified: Tue, 22 Sep 2026 18:28:59 GMT  
		Size: 10.6 MB (10593404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58193b3555803cfbfccb5828830d61a92e8acab6ca5ab7a0d4539689a74c1f2f`  
		Last Modified: Tue, 22 Sep 2026 18:28:58 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260920-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:189694f33dd2f8bdad2c72576d1aaa4f63ad5d283c66b2220d57af2f1c0055be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340567902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18c444056d8d5f07bf508004f138a0277ac0caedf3dd1dae2bf317f1f500f3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 22 Sep 2026 18:25:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:26:42 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:42 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:42 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:26:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:26:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375f48cdc89f455b911ef67195c37e8b9611ef420d9f1c6b7651dc7236b80cd5`  
		Last Modified: Tue, 22 Sep 2026 18:27:14 GMT  
		Size: 98.5 MB (98487283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c144e38cf7ccfd8bb72ace03340f27e2482b99ba6853dbdd5d404ea1f43670fe`  
		Last Modified: Tue, 22 Sep 2026 18:27:14 GMT  
		Size: 99.7 MB (99670404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7eb23f5b88d102060ca7a2688ec6e7b5d99a7d34f8d7bd23fc26b25ee13b1d`  
		Last Modified: Tue, 22 Sep 2026 18:27:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260920-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:19c6a9dc03e8cdf868d5a1d930436925c4aa66557f3252d639745dc7befba8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10946171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4945ab10ed4691a1d30d3185480100f2fa181722d7c1f220c74817e8489bb474`

```dockerfile
```

-	Layers:
	-	`sha256:e8edbd4d9ff7cfa4efb5b17627c3f35731d19c862c39efe7fc01e48b7a4164eb`  
		Last Modified: Tue, 22 Sep 2026 18:27:10 GMT  
		Size: 10.9 MB (10917335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d4c3b83a4c78a384804f8768ff59441fdad05cf2eeba3e08c184c2a995685d`  
		Last Modified: Tue, 22 Sep 2026 18:27:10 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260920-trixie` - linux; 386

```console
$ docker pull golang@sha256:987a7d93f4b373509de671264bb0e48ad47a89a7f13122730cf149e2fb5d5d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351638677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af2d1a2ed83f8b03984da96832f94a035f489b53b0495890706b75a71b02a99`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 22 Sep 2026 18:26:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:27:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:28 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:28 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c66c1569ef0803516c0f48b76f53dec16d8dc9dabcf9c0a9de44563c5a90a10`  
		Last Modified: Tue, 22 Sep 2026 18:27:59 GMT  
		Size: 100.8 MB (100784547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a59a96cb04c952ad5d49882f36043709a09e4eb2b1b32a1358cc20c369b7122`  
		Last Modified: Tue, 22 Sep 2026 18:27:58 GMT  
		Size: 103.3 MB (103311180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cada5a732b675bb63d3f0736a3d8c0946cca6848090d402b3b8bb7b2457bb0a`  
		Last Modified: Tue, 22 Sep 2026 18:27:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260920-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:eca2f710a205320559eb36f975dd1a5624209f2a3e23093e6633a8a0c5e47a52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10797419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359afd47a18186a4f1ef6b28b9437f4724a507166912fac552aeaeb51174b6d6`

```dockerfile
```

-	Layers:
	-	`sha256:1da6ef255a6350607e0888d74ae9285dc0e0d528d773cf46397bfa4636f1a53f`  
		Last Modified: Tue, 22 Sep 2026 18:27:55 GMT  
		Size: 10.8 MB (10768777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f3c8394ef6882ea54988496f22a244f14d9f16a80e79b1b5f4c171c6deee49c`  
		Last Modified: Tue, 22 Sep 2026 18:27:55 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260920-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:3db4b713392e410bd8b9d943b46be4b8d1d76af6bbf27238d09981cfea35f800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348240521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e52b2155ef2d9fefac8cf3e03ce3701bb51cfad956fd41d75932193f80ea11`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 22 Sep 2026 18:27:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:51 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57552d4d0f86a402301d735d57c01cd3d2d1724c711b625717be1f6749424be9`  
		Last Modified: Sat, 19 Sep 2026 03:17:41 GMT  
		Size: 27.0 MB (27022750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688421ee6cf78616bfc56c3cd74e55a2ab39b5a15aae8b60dd132fa0e6540f48`  
		Last Modified: Sat, 19 Sep 2026 09:08:06 GMT  
		Size: 73.1 MB (73088760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a31a90deddf56bf63e8a6be12d654aaca7b3c72bb25a795caa546201616402`  
		Last Modified: Tue, 22 Sep 2026 18:28:05 GMT  
		Size: 93.0 MB (93046551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf5065b0a443b25220e866e886b20470bf7bbbb219c2fec2f97a7f7a28c0691`  
		Last Modified: Tue, 22 Sep 2026 18:28:01 GMT  
		Size: 101.9 MB (101887227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42125db7fc638a60237b46038393d644ae6a6921f84edf5ff7d27d1ab721dc38`  
		Last Modified: Tue, 22 Sep 2026 18:27:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260920-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3efa41b915b48db26433de2bd08f0dce61209ba1b1d3800b450ad82ac528d025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ca4420f48fe070028eeda83cf779a1c8ea58f7ba476c85c3a5441ab6d536a7`

```dockerfile
```

-	Layers:
	-	`sha256:810dc2011bf00283ccf809b369c8bd9e2366a28db8615ea49d22b59dc137ffd1`  
		Last Modified: Tue, 22 Sep 2026 18:28:01 GMT  
		Size: 10.8 MB (10793307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8527b6edb4a2733ff22d1491bba71f0005401eeceb31aded36059915d15ae14a`  
		Last Modified: Tue, 22 Sep 2026 18:28:00 GMT  
		Size: 28.7 KB (28738 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260920-trixie` - linux; s390x

```console
$ docker pull golang@sha256:7cbf8ae296c6b7b0f26f2813299e4b6b97c6c04affbc848a0003603f9676ef97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (325024513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5db36bb516851c9f10b7aa041da187d3d64e981883d2a592ef5b588fe15b381`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:27:20 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:20 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:20 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3535d71dce95cf777a152f7628820b1c830212c499d59163cc81773c4f930f`  
		Last Modified: Sat, 19 Sep 2026 02:15:15 GMT  
		Size: 76.2 MB (76153532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e9792bae27e8a4f51cdf2dd333fb7ed79a26fc5949f65e44a75f6a4ce898ab`  
		Last Modified: Tue, 22 Sep 2026 18:28:42 GMT  
		Size: 104.0 MB (103950480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547afaafa829a9834ab94083e66b4a644a8b7de340db79bc77acca25a8f4e2d0`  
		Last Modified: Tue, 22 Sep 2026 18:28:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260920-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:69328c2091d0fde0316634d002a5a8215dc68dc291aa64fe916d557ad0791a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10637343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a283673bcfe8b29751a316224734778ca88696fb6e953f5d417069ecc4f50643`

```dockerfile
```

-	Layers:
	-	`sha256:1ea5554e997dd182f9ec98860bc7f7a45e533473ba03ea9faa46821ec67f6914`  
		Last Modified: Tue, 22 Sep 2026 18:28:38 GMT  
		Size: 10.6 MB (10608663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5968732716bdaa6ccc56e5369622e71ebb078b36fdcb8de692c6f0d94b375160`  
		Last Modified: Tue, 22 Sep 2026 18:28:35 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
