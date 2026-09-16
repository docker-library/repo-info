## `golang:tip-20260913-alpine`

```console
$ docker pull golang@sha256:145f382944650f280982731bc1b8314a1371538b072d775571a1e176cb40c3e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `golang:tip-20260913-alpine` - linux; amd64

```console
$ docker pull golang@sha256:cae6e0b0e6a16c17c0312512024de8e76df6661ee6273f7525b1ffef17b45534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109545560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3722a6723f1e008286ffe2681bfbeaf065d05297655a78f824e48c00f3aaedc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:34:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:35:42 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:35:42 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:35:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:35:42 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:35:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:35:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284cbc02891ffb396555616def3ea3910ed71a8670e340265d00ed5b7f3bb0fd`  
		Last Modified: Tue, 15 Sep 2026 22:36:00 GMT  
		Size: 245.1 KB (245065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf633210eb29282fa4f6cb161fe7d4668010fde5967e63a5eaf6d91b9dcd0c4`  
		Last Modified: Tue, 15 Sep 2026 22:36:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:f15fb4e0f22aea86c6d29aa57c85a6dd75d982c7cbb7c8c918e1f5bd3da462d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f42d91b9f2cf7fc7cef3c567a49f4f8bc1caf4f4eea98a936bd98c2f5d4fa44`

```dockerfile
```

-	Layers:
	-	`sha256:adc0891c30f198ff948ac7eb542b3c35cf73750e3fc946dde8df42335cf9d594`  
		Last Modified: Tue, 15 Sep 2026 22:36:00 GMT  
		Size: 178.2 KB (178233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b90784bd8adf39f475e91d1cd7d5991161d281124ee908810278fee3dc4a4ca`  
		Last Modified: Tue, 15 Sep 2026 22:36:00 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:16692132de5d9481f952f8908b55af7b2b45f8d0c1d0f65dd28ac98a60e5b040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105448936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e900d1b1ee1f1e812328772c4d5c76934ed79b2dd4c3dc3f27cf63dbcd4b8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:25:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:27:33 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:27:33 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:27:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:27:33 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:27:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:27:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1149810782252b3b214c74209123f07244fe6619e4fb4b9f2b54bd035680e8f`  
		Last Modified: Tue, 15 Sep 2026 22:27:48 GMT  
		Size: 246.1 KB (246133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb9508dd029c503a81a8bd52b79a32b5213c3ae31081f2fd0601d9e9ccd2b75`  
		Last Modified: Tue, 15 Sep 2026 22:27:50 GMT  
		Size: 101.6 MB (101649194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4edb842f754cc57759128daaaac41637ab45a29172b6dbce2ebbbf5b89fc7a`  
		Last Modified: Tue, 15 Sep 2026 22:27:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:a6bd512983c5dd58f38b710b0ff648d59a25f0aea7092eecd3c7a4d6dfe543bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0afcb87efb8aba95998635b75d313610cfb9fc40845dc6a424e0e69a2cde0a`

```dockerfile
```

-	Layers:
	-	`sha256:4dc0eee4cd4967a5d37e89dd84ebb436d14231b07efe0b5a206e3fc2f533a78b`  
		Last Modified: Tue, 15 Sep 2026 22:27:49 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:26b1db434b55bf6af2599dcfae8a8431429ca7fe7279fbbaac8fb89b12a2d5ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104830650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc5176230519f635d66cfaec79160e41f1cbe2970ac957289d78c0100a4c90f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:45:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:46:49 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:46:49 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:46:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:46:49 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:46:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:46:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed7e2b31fccf73da5dcd1bffb2b33eeb18b7b63de805852f2862f5d12f8d41d`  
		Last Modified: Tue, 15 Sep 2026 22:47:08 GMT  
		Size: 245.1 KB (245111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c255a1da40ce843ebdd3e7b84da6473132f999925a37f274b3cc351aa3b872`  
		Last Modified: Tue, 15 Sep 2026 22:47:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:86da124d6e8cfe9e7f61b43ea5b1e17d8dccd99bcae000a14794241e21caad72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4346b7db0eca6ae4fa5d91edef374828e0af51c514970abc2d01e50c348a4814`

```dockerfile
```

-	Layers:
	-	`sha256:b9c3f7b7ba223ebfb6ca4ec86a8b6623c968d574c25d241302e6a6d028e61e7d`  
		Last Modified: Tue, 15 Sep 2026 22:47:08 GMT  
		Size: 177.6 KB (177601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a1402f2564fe35fb369bb14abed844f410b2bc26ede69a6e9578e8604404ed4`  
		Last Modified: Tue, 15 Sep 2026 22:47:08 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ca5e008d7e004adf3fe9034c929b010e27c7f52cdc36ae8c2f7268c1a43951e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104211489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689af309e0b28bfb73cdd71d12c44e14c76ed21de813b756faddca7df7a05465`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:22:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:23:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:31 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:31 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9353a3da6fb834d597591306b39db45051099a5d67ae63a7c157a046661046b`  
		Last Modified: Tue, 15 Sep 2026 22:23:49 GMT  
		Size: 247.5 KB (247503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c0f22fc94fc91f4a6c45b414e0f698751802225ed1ed6e7c1468c379fe901b`  
		Last Modified: Tue, 15 Sep 2026 22:23:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:17b884f601f809999a677864af61a0fef588743ee42a748a8f9d433c643472f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8cd2da3401341191fb8e60d6c151975c86e83be8785872ad5388a04fba9e13`

```dockerfile
```

-	Layers:
	-	`sha256:dece8eebf0135212729840d6728d3a14b83493ee4df6b5c96901ed8d74b68738`  
		Last Modified: Tue, 15 Sep 2026 22:23:49 GMT  
		Size: 177.6 KB (177639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e560037bb961f1b997a1364f523bfb6632d777b3919c97e4394c9d99d92f2de2`  
		Last Modified: Tue, 15 Sep 2026 22:23:49 GMT  
		Size: 25.3 KB (25254 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; 386

```console
$ docker pull golang@sha256:d159412b938c97608724834141196d48e9718e6cfd28b4601545a7672d27b098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107291340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0348d8a13aab316560604a7247f43f938387043962796d9389b2b5eebd0a4258`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:21:41 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:23:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:07 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:07 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755606880f3c5735e507522d6b7ea817e52859b4d67475ff2d011fc356232c6d`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 245.6 KB (245597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4842b4ea4f4f410dbe3e29af7ef53a6f14b43fd80f76d0b0078ae56c5616b8`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:55484e42f5f660a83f51275e6a363ef447195c820eedd0a88b8b338c74de3917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06658a13ca30108c0634a8585f816009768450681475bfbcba50e317ddaee7a4`

```dockerfile
```

-	Layers:
	-	`sha256:fb61ffbe3ea109bd8c4f973aaba2dc8c60cac79aab6507c4023e5602895842ce`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 178.2 KB (178190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d74a4ac34046ad2868b59af0194a8469d6b9dd90400e5388fd65f7bc8c82b9d8`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json
