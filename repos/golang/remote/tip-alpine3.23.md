## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:82c3bae4601d9be9e3fb9498b05233da137384f6f50f567f54a4cbef66c379dc
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

### `golang:tip-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:dffa78433150c986d49745b58194939dd5d9efcc71e09f5f48d0d3933ed007d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106077854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807e77aba90a7ee7c0e613f174421309fc736adbed7ff22fd06db405030f8c4a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:08:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:08:36 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:08:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:36 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:08:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:08:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193da52a28d30a328b13d5ed8181f7009c867850143bd6e5be666fff859cd1ca`  
		Last Modified: Mon, 27 Jul 2026 22:08:53 GMT  
		Size: 245.1 KB (245050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70182a89e7d87356ef54209ef5025f5029805de8d8545608195eb8152d0595e9`  
		Last Modified: Mon, 27 Jul 2026 22:08:48 GMT  
		Size: 102.0 MB (101988224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53957c240dd47a3f0abe0fd221dfbae8fb679ab360abd28814f099b0be3d7348`  
		Last Modified: Mon, 27 Jul 2026 22:08:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:2cb1e6dec520f9ae73d29fe7cf8e59afd9451e17993da9fe525f9815555f6300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b403272f6c8b5e61709b91914f39486a557f47c8e87866b581532eb871252733`

```dockerfile
```

-	Layers:
	-	`sha256:e12a57e5a056c095046642279154c6dba73bdbdd4587abd3b74ede8e5a88595e`  
		Last Modified: Mon, 27 Jul 2026 22:08:53 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c18da7e2c776ade4e1f6f0224e66c8a05f23c74ac12375ec73782f7568f9e2`  
		Last Modified: Mon, 27 Jul 2026 22:08:53 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:92cd8ba52b73b23f1ad71d64fccc0b1716cd71a85990eef4a6057dd60c0433a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102159515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc843174ea59d3e4944c2544b8c36c74cb447fc2e7f26546eb641ebb76d2e5e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:04:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:07:08 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:07:08 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:07:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:08 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:07:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:07:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7ec806ac7d7e33d72b7855fbe0a00c452d4ce9af0b1964061f84ef9d840390`  
		Last Modified: Mon, 27 Jul 2026 22:07:24 GMT  
		Size: 246.1 KB (246143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e9cc25946692310da1cfe48c646383b2db2accc298cb5efc82dd8095ace6b9`  
		Last Modified: Mon, 27 Jul 2026 22:07:07 GMT  
		Size: 98.4 MB (98360618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90343c45ef69c449a3a472e6382eb4278b62ac341af0bf59188097b0796eb99c`  
		Last Modified: Mon, 27 Jul 2026 22:07:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:eb8d80994ec3a7fb887e46cc0bd99ff248474ba42f9455d8a678d2c4775de32b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3baa992fc63e0c153a40d2523b51d5afb7206edbec989de895449968c9da42f4`

```dockerfile
```

-	Layers:
	-	`sha256:46151fc681d4db6d2078010193c8b76b68331563bc6ba79ae3534fb2be4288c5`  
		Last Modified: Mon, 27 Jul 2026 22:07:24 GMT  
		Size: 24.4 KB (24361 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:8e9c8a61e81e0a0fdfac4ed82117d415ebde931a9dcbb54c4a3be142c597f9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101560150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097311b0336f4a7563881bad79974cbdf1f71bd7e57908e65558972150fb2a7e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:09:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:09:32 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:09:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:32 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:09:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:09:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65fae2a3198c4423f9f7acb95c429fa49111dc4b4b1895fe1c852d79126c977`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 245.1 KB (245137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b961a0d50988d7c9a177ec9e923fb9a4afbedfc3d31275eec2c42aad2d0e7f`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 98.1 MB (98053000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4798641ea4713b148049ae95c1d4361040fc4c877af79a1839b60a4bf55040`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:da5e7b435dd2fed0113192b92171009729e5019de112219014f437e2eb74d85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69656aed4ef2f3cc7c5d2b1bd344baf79731f1c75d533d6c4835863a623da5c3`

```dockerfile
```

-	Layers:
	-	`sha256:0a180237d1329041e26ee7f406bc57195bf7cca36b635f8766b5bfb702cdb537`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84d1df319a1c9b9942184d1c30f51b177bd6e96df6643329bad09e7293cd3ed5`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5a357505f55eafb81e4ed594df0e27de4a66210a9cf692975ed003ca7c17291d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (100978384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bd3b65f58e00bc6d50df5e776c915a64c5769f6412320968ed95f431a7c283`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:22 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:08:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:08:21 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:08:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:21 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2902ad369839a0a1dc6ee0fdfc059b41afbdf3a9ad488f97e4cba96fa8c90334`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 247.5 KB (247503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce80571b63faeb14e5839d68cda387b1895c1438d8dec5f05ca729001e5415b0`  
		Last Modified: Mon, 27 Jul 2026 22:08:35 GMT  
		Size: 96.5 MB (96548863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c212ca094d5006560880895ffd062fafdec7dac24d6edef46e48b28a0b4f17e`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6575fee900a0710b1431b74483f497c0826eb2184c38baddffa34cc61354f0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1725f35c035058d9552046fa1ad32ec9384403bdfadbcb6a97f1f2b157e0a180`

```dockerfile
```

-	Layers:
	-	`sha256:9fffa33093bcec5bee8e2ee67ae3dd0d7badffbd85f71756dfb75a4f7e4c41e4`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c86bb6746492b94793b7f2a00b59c94dd5730bd3a584c978fe68457db2bd56`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:49acc9bcffb3a519037f258d1dc979fffef84c5c559d3bc474d5ce99a7b40b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104023296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c9ea591f55fb748674dc5e98bb487215d23c6159efebc8ebc4966b67102bd3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:04:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:06:58 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:06:58 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:06:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:58 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:07:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:07:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ebb490d2e558352a40606373becb54887610b4cff7674c6138bea2202963740`  
		Last Modified: Mon, 27 Jul 2026 22:07:16 GMT  
		Size: 245.6 KB (245581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5a3aaa3a009e10bd7efced5fa5120668bcb54de583202a8de6e5e6ab444e4`  
		Last Modified: Mon, 27 Jul 2026 22:06:55 GMT  
		Size: 100.1 MB (100109566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207ec6d49fcfc70f95d9305a93ad989ef01132be81dbf8be80a64b6bfaa0b3a7`  
		Last Modified: Mon, 27 Jul 2026 22:07:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d2254f131fc11067c7f0882da3fb77b65a2b9ddf52cb5661e08e4bd1f6e5c507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed1dd202aef002e4a50301d90f4d1371c19f9a8abeeb6753eaf5f533a33f39c`

```dockerfile
```

-	Layers:
	-	`sha256:ba88a2e281c3f6a1d2fa65eef415999e83601094090df3dfdf7f240bf23a52c0`  
		Last Modified: Mon, 27 Jul 2026 22:07:16 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:678cd83628304589c652fdcad6e7061a8789569ed43a72f5dba94ccbc9ffe8d2`  
		Last Modified: Mon, 27 Jul 2026 22:07:16 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:4c185a7ee466acbb67c1bb10d749ca8c300bf0ece7e136ca6f97d8356d621757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102759775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c71aa9b6ebb15470f753759e880b916cffc585f8bc49f71933127526bde7ee`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:13:22 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:07:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:27 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:13:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:13:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d1bc4a942fdffd5a7a1c41115b87bb809b3f9a0f5ec996f2d20feb24b07cba`  
		Last Modified: Mon, 27 Jul 2026 22:13:46 GMT  
		Size: 247.9 KB (247910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83158c867f68c393c40d80d5a7ca238c6f40445a0d20991e9d1d2641b7fc173`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 98.7 MB (98699408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40923b190ab121a31ea77990c25a949ef25e0dfaa493942308c5386e0f5a4a65`  
		Last Modified: Mon, 27 Jul 2026 22:13:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ef1ebd2a533b430d4ce35024b8c4c869c3f337bfab34937cc7114d632a8a6ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 KB (199851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859943af012d9c2d83bb9d6fbc314b6e6daf535558fc065a97c6491c7348015c`

```dockerfile
```

-	Layers:
	-	`sha256:461650c22957247eee76d2a04e0405fb1e6d06cb185dc29a467ebe13fbce1ce1`  
		Last Modified: Mon, 27 Jul 2026 22:13:46 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce565b89eafd20e428e4d2bf7aad0c00f4997eb52a4906f010f74a6c57d97857`  
		Last Modified: Mon, 27 Jul 2026 22:13:46 GMT  
		Size: 24.3 KB (24338 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:e0333457fec11a2d0fec585e1788f04ccecb68b4a63a6fb6fa82f5b1174f1f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103444072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e863db56a020f58b465a456f6c700e9f3353c87b3595fec08c7d1407d4763e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:45:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:45:26 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:45:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:45:26 GMT
COPY /target/ / # buildkit
# Tue, 28 Jul 2026 00:20:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 28 Jul 2026 00:20:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a5772b4cc1953cda36dc836a2216136a33f1844e18cb64168e374be9436847`  
		Last Modified: Mon, 27 Jul 2026 22:52:39 GMT  
		Size: 99.6 MB (99625207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783eda3e4363219a87e5ad8f633a0d58b646206b0e185e50d32aff9bafc10d1b`  
		Last Modified: Tue, 28 Jul 2026 00:21:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:33f7d8fb32a74bc82022219056b68712f0443a195a1b6fc290d6c38fff9a187d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0249efd2c6656ae90969db82d9c24f2fe0d044e93813be9987777575aaafca56`

```dockerfile
```

-	Layers:
	-	`sha256:2deb8de77a5ad3bd8782295e79a3bbfb831838756c5918d84c83a4dae31425be`  
		Last Modified: Tue, 28 Jul 2026 00:21:48 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af3344e5a29b0f4b247e23466f0fd64903aed84532988fcba923fc6469d79bc`  
		Last Modified: Tue, 28 Jul 2026 00:21:48 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:e5408e9c286ef8077b10bea98ea4bd8cbbc2ad72442f50de992301d1cac5e1e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104708821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a2035b07dd4c6d38cb6d940c8f440aac21594a7f13ef1e582e55b3369e55dd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:06:34 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:06:34 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:06:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:34 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:06:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:06:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31a491edd4c5217ab39c5f8f9aa8d58b4546083b5b80eae047faa35b3d8571`  
		Last Modified: Mon, 27 Jul 2026 22:06:59 GMT  
		Size: 246.2 KB (246152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4901984dca8b01222f860172bd7d3abeec2877520e2c096cc3d0112238dbcb`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 100.8 MB (100755261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702f9a88c838f0d3b50a4e7c784be3333ed4b9932865b7dbfc2fc4d58befb418`  
		Last Modified: Mon, 27 Jul 2026 22:06:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:87b59fdd3655dc7fdb02faea08254eb16c0b868da389c13ca848a0ec0ee091d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d81a30c7435e2c3c6f06a9cc58c5cb18ab233af71d5b963ab40731e9ea02adf`

```dockerfile
```

-	Layers:
	-	`sha256:25bcef5415168ef8376b2f8d70ae9eb76d519c665436a0cdaef876a8c7619680`  
		Last Modified: Mon, 27 Jul 2026 22:06:59 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f8f46ae8c31b2e51191822440a4537b162ae8c3b9c37f714abc3753316d29cd`  
		Last Modified: Mon, 27 Jul 2026 22:06:59 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
