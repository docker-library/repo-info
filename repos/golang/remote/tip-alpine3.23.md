## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:7d67722b9692adbfb05c10fbc8edd4ebbe15b77039b83eecf5434ae5b876a442
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
$ docker pull golang@sha256:4bc777038c3c3070cf9fc096e96257f5ee548a56d4754c4926f7ceecffcd9213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106698211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad36e72584b7b2135b9cacc3feeb8c78ffeb3187bec62a46fc8dd7046f39b85`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 23:12:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 23:14:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:14:10 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:14:10 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:14:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:14:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fdf68894bddde5e13fe16ea5f3e07f3932e8cac1a5ec31bf02f48130e258240`  
		Last Modified: Tue, 07 Jul 2026 23:14:29 GMT  
		Size: 245.1 KB (245060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd1c92ad6988f1e4a91a34b372fd19ca387750289ceb135fe024003cff8c1d9`  
		Last Modified: Thu, 02 Jul 2026 20:04:48 GMT  
		Size: 102.6 MB (102608572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b81e5abc794101336f4e6af199f9ca6447a1710eb29a14815c270e4b542017`  
		Last Modified: Tue, 07 Jul 2026 23:14:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:8954c2ba9545d0d6bd6a2a8946572cda6f16db246b5c89a8aea23ff366cfc50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c1c6fd9425cb54c3154533ffdd3ffcf9455acdafe6f192d7f76c9f3805e215`

```dockerfile
```

-	Layers:
	-	`sha256:b1d0040b40f623fdcedd04566cb814c7a0964c21b796bc53b8b27e2beb942b66`  
		Last Modified: Tue, 07 Jul 2026 23:14:29 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8005597aa9d1334cc8cd2791839f16682895d7c4697b0c65415ea7875cb4c509`  
		Last Modified: Tue, 07 Jul 2026 23:14:28 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:f47ecf0bdf7c39b7cb3566801995822ff5b786cccdb5be4c55ad217035e944ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102430242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb9ef6378e0a85f3fbf144d36766460392a61aaa2e03107ab1658b5ca232ac9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 23:09:01 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 23:12:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:12:07 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:12:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:12:07 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:12:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff44b570ce8536b214e3df01cc6ae4800ee9801c6720676440302114d661898`  
		Last Modified: Tue, 07 Jul 2026 23:12:22 GMT  
		Size: 246.2 KB (246163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edf6c56bfd921a8bf617ec862bcae402a6b840a52e4afd418894ff6e6f13f75`  
		Last Modified: Mon, 06 Jul 2026 20:13:43 GMT  
		Size: 98.6 MB (98631326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d532fd5150e911a8900c607a3cc9f603b188441789b9edea5d44f84208a850d`  
		Last Modified: Tue, 07 Jul 2026 23:12:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6366d24c15c98f7d65422e5f07138fd3bdf88d0c7ed5a706af89a19afff2cda8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e326c1a20b41a9d4e73e9d8e92feebe8a3e5d556cab0e03b6694c423c472f1ca`

```dockerfile
```

-	Layers:
	-	`sha256:772c85650da91215d8a4ce7be6a7b76bd440eb94b69b4b9d402c77c08aedfdb0`  
		Last Modified: Tue, 07 Jul 2026 23:12:22 GMT  
		Size: 24.4 KB (24362 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:82bd81cb61a3e85e5835307570fed3c4e0ea2e64945a26f164a5d8554f5c2412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101815994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4151976a1c741c9c64b7493b16b7dee4d0bd22d04f17a1260b6d2b9c5df2e6f2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 23:13:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 23:12:54 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:12:54 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:12:54 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:16:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:16:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e3f61cec6b318aea4cbd577795af8bca3f5b0f072eeadf4a6fc9ee9f649402`  
		Last Modified: Tue, 07 Jul 2026 23:16:42 GMT  
		Size: 245.1 KB (245138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2521b5e84f3eb625b30d0a87085905f7848aba41e58efeac6475d5cc2efa328`  
		Last Modified: Thu, 02 Jul 2026 20:04:46 GMT  
		Size: 98.3 MB (98308843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01a04d6462becda3df1e68dcd5b4be2056ae0b3c86cef132bcbced0a763e05f`  
		Last Modified: Tue, 07 Jul 2026 23:16:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a3e2673cdea56737793a1d63224a430a3f743b041ddd2d9ccfe8d9922a661e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbd1940021a855c5252cf2965676a028c83db6bae60dff173ea6c0ce7a3441f`

```dockerfile
```

-	Layers:
	-	`sha256:ef95216d97eeb66a604689461c1ff5bde91bdac341a98e759dd0bb85e5d8fb2a`  
		Last Modified: Tue, 07 Jul 2026 23:16:42 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd9a8e07e570b6a647881654fc15d30126ce3a23eebf5b663a2723d93829008d`  
		Last Modified: Tue, 07 Jul 2026 23:16:42 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e05a3c5553be6094bd9e541d0a35ea345d729cdfc9887bad86426a7abf3d0a23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101421147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d3310e741fe7c09ae17b685adea8e4e4bae3e2e7805e7bcf0ed09392fe1fc3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 23:11:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 23:13:52 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:13:52 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:13:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:13:52 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:13:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:13:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def1f50127bae9d849b5031286b6864a79df50dc392fd430569adb1285bfb97a`  
		Last Modified: Tue, 07 Jul 2026 23:14:10 GMT  
		Size: 247.5 KB (247501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799855040db20c258a4625b397d8157c0e8c8f6fb4330c6dd9bf7584e6997533`  
		Last Modified: Thu, 02 Jul 2026 20:04:53 GMT  
		Size: 97.0 MB (96991627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6af7966d27a79f5a3027dbd3d4fb2de83771ab8d00ace4d333a0ee86ccb12c`  
		Last Modified: Tue, 07 Jul 2026 23:14:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6642b7f6533f985d81516f2d226f4ed92976a45ac311ac16528e94211c0dbe81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08df6f0daee70b4380dba7f4b8465094d1ead4b3205317973f2ee05b0b990e29`

```dockerfile
```

-	Layers:
	-	`sha256:5adeeb9d129955e0db067a546ee4bde331898db4301b3971c762996768a0b480`  
		Last Modified: Tue, 07 Jul 2026 23:14:10 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d559d6cee0630931024d3063614bcab1a6ce49fd56a0181ce1b4fc6afcb62ba`  
		Last Modified: Tue, 07 Jul 2026 23:14:10 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:d8b9d1d9d03a789f7f01b4a671873afa19be1b26a80d3e2e9e9c4bf4c44dc693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104292916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95347195faf13f2ce924567622a67fab29c6a68526e3391161673178eb092a8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 23:13:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 23:13:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:13:06 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:13:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:13:06 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:16:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:16:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9baf5c3862f585b5e83d9a6759bcbb195e702a200fdbf8b20249aa6d0822b42`  
		Last Modified: Tue, 07 Jul 2026 23:16:22 GMT  
		Size: 245.6 KB (245588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cbde1b461f8bce7bfc1cd1f21a1d7e86c0287b6db3fca745c83eb61347a6e8`  
		Last Modified: Thu, 02 Jul 2026 20:04:45 GMT  
		Size: 100.4 MB (100379181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3d3bc8e887969cdc96c102b3b45bbc49e68577192372e420ccbf3c541cfde6`  
		Last Modified: Tue, 07 Jul 2026 23:16:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:735f0793353f6a034f8d4e7974d861954c1da2a10fee6a65a9e2416f35839116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddd897bf02774d1d0cd6e085e1335a6457e704c0138d1084077d5d8d8f7aee31`

```dockerfile
```

-	Layers:
	-	`sha256:db18aa28abeb614f2a0cb5705fe0c11b37f2ed62ed35e04d7c6ea9fa9918493e`  
		Last Modified: Tue, 07 Jul 2026 23:16:22 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c47c9fd7eae7fb6cc21d5934fad3d46ebd05bdcaccf8be3be4d46d64b12eb52`  
		Last Modified: Tue, 07 Jul 2026 23:16:22 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:1e73be89bfd04bf0b31fdb95c5d49e6e9f3f33384e5b2b785a2dabc8fef9dc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103040320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f72ef010c5db781ca17e91935a9e10dc985e80e641f75ef8356cc095d6b54d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:31:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:31:43 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:37:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:37:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4ec4c4387f8f7f83dc176a500406f82c3fd2e6dd09f7893384d4f62afdf0cc`  
		Last Modified: Thu, 02 Jul 2026 20:04:51 GMT  
		Size: 99.0 MB (98979957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d8e125fb1fb35c78afb08042db6beb3b6cb291ebd36685b0e5383277ff1b9ad`  
		Last Modified: Mon, 06 Jul 2026 20:37:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:7ecd3b11253c33ec7a49c94aab6af31cb607123a280a1e70f47f61693e38d8a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2722c515a7aeb08dbb95c510bdefc727b95da39f83c891d74597fd1348b7cc6d`

```dockerfile
```

-	Layers:
	-	`sha256:a0f569606f47efe5ee6276ff33cb7f848bb0ad2f4c5aaea4c37fee2646c02ef4`  
		Last Modified: Tue, 07 Jul 2026 23:19:59 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83ff2a92d30d39f3b2bf163b9f5ca4c1cbed726a2de9bd981f23cdaece51f55a`  
		Last Modified: Tue, 07 Jul 2026 23:19:59 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:349e124b10215a09b4aef94f3142f8ae7450a2b315904309cef29c934b3d7045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103741760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3562b1ddcd9ca9c2b29e1f3de1558beca59a6079895a976c88f5e8c8b84fe4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 02:28:48 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 02:28:48 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 02:28:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 02:28:48 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 04:03:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 04:03:35 GMT
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
	-	`sha256:ea2c9ddd75bba6ad0fd1ac9d562f5a8aecbe1d7fa189e7c35d6e13745b2b8e7d`  
		Last Modified: Thu, 02 Jul 2026 20:04:55 GMT  
		Size: 99.9 MB (99922895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bd6c422fb296d192ee62a42969c2b1cf6f0c0fc9903f753e7d5f266dab3af8`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:55cd8df4e8fec62ae67fe353934ef8dc4f2d152d531c4394afb831b5bd8f5d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6faa2b733c61dfb7cd5a6ee2d3eef6d0ed5148da3a8cc27104bcb7fa83dedfb`

```dockerfile
```

-	Layers:
	-	`sha256:f5acf1a8f69f8092fce4fdb09bce858782b22f4181760760c9148c1c7032c16a`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45f07f89c5872be34f66bf0e5fb6eb3e9ca7ff84e8cf0df1c10570291934ebd8`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:6bf0d3dc6a60e88d1136f3992b2e8e42df3dc206d971644aafb76f92a567aef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105000998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4008094fb5ff2f08e2a940726ccfc734243683aadfe080470a74cda3c4c35a75`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 00:04:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:40:59 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:40:59 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:40:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:40:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:13:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:13:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9593b482f44aab34c5b4dcd85055a9aa8d88b22497bdb5c13dbe311d1c93a7`  
		Last Modified: Tue, 30 Jun 2026 00:05:14 GMT  
		Size: 246.1 KB (246138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30338cafbec1cacd6cfc0e40572821cab5c72836742d527d6275b5cd089d0b66`  
		Last Modified: Thu, 02 Jul 2026 20:04:49 GMT  
		Size: 101.0 MB (101047453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d09fe94b8d0a718f3389a29039b0ffb78d9e0f7d54de4d33c63e17ae6686d3e`  
		Last Modified: Tue, 07 Jul 2026 23:13:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:577e479fd3d9da97c7c6b9399b9dff5a86b10b1b66273f00068d86a998c5460c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fe841b7c7bdfb92b990611c3fa75ff1f5ea49ced81aebff16c0520635711c7`

```dockerfile
```

-	Layers:
	-	`sha256:8569b1ac916f23452f7f59d343875137570f090ac817b82c186226344d26e19f`  
		Last Modified: Tue, 07 Jul 2026 23:13:58 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:347641534bf334c91422d22ef8b9acf4d8906395ecad92448c3491493622f4d8`  
		Last Modified: Tue, 07 Jul 2026 23:13:58 GMT  
		Size: 24.3 KB (24295 bytes)  
		MIME: application/vnd.in-toto+json
