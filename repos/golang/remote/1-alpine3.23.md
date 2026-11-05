## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:864baab4c2095f30312788bff1d7426c7abc73c1f58830810ed60e70fc382f5c
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

### `golang:1-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:63e29f9e78d402c095246be21dc44ab34a1095a3d5572879f63cab2a29adcc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75247590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b742082308433f17832f765b98a8d18b33542de2d733eca588f902035abc244`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:19:54 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:19:54 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:19:54 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:19:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:54 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:19:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:19:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03812a0d0ce942bffd85248699840228d03d4ba2ff79e8cbf4ff42f591b03857`  
		Last Modified: Thu, 05 Nov 2026 19:20:11 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04e54c99cae318cd328fd15aa31aad4d225103d735ab9a2e02c123e7060476e`  
		Last Modified: Thu, 05 Nov 2026 19:20:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:0e0d08143ff3033438d564131b9666249807f4583e1a0b7b392060ce0969945a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed3a8dac18a5f4cf331d8cd9d5c60a3c86c5e0af1a04bf1f6691a2f7a2291ed`

```dockerfile
```

-	Layers:
	-	`sha256:6ffc4f8da8750d971264fe3cbcddc418b6d7ea9afcf881ba9cbbd09751c16d54`  
		Last Modified: Thu, 05 Nov 2026 19:20:11 GMT  
		Size: 176.3 KB (176312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24275e4cc845a80e585b30760f2644fab5830fd488bd4b929cc52f97fdba7c48`  
		Last Modified: Thu, 05 Nov 2026 19:20:11 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:e328491f28b5960e7790dc98727d64cb63f317407351a40c2c90a2f2feb8521c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b383021ca954d9cc219f81ec6dac8c4481ecdce7bda4038a0bb8bae12c66c284`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:49:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:49:41 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:49:41 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:49:41 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:49:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:41 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:49:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:49:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a29d3d7d71d74a3c5f27901c8767e669c288a868826e723cbf7271a483570c9`  
		Last Modified: Thu, 05 Nov 2026 18:49:55 GMT  
		Size: 245.6 KB (245574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347acb6a5a1208ebb301ecf16a1cc41d9f5f1f9c79f610f28ece6ab7200128a0`  
		Last Modified: Thu, 05 Nov 2026 18:49:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:469341769abd43c629c26e778c5a84a06dfdc12dcaf7d974c21fc7750e2f7e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcb4cd4f72cee0823bff2e2c404689f9344933e740f240a0cf86b2e2fa5e51c`

```dockerfile
```

-	Layers:
	-	`sha256:9311498b1abb3a779284e2f03f0ccb8a390e4195512785546f75d7e51d2161c7`  
		Last Modified: Thu, 05 Nov 2026 18:49:55 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:4926209c33f0a36ef4b82c5d46af508ae0892e0c3bb5a8175c8775aae5527908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73167301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcae717b87755553fb9e915e8664c687ef4b6bb3e2d340ca9e4399d2d3b386e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:49:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:49:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:24 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:49:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:49:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b44a3569cd5ce6de8d64a4f9c823f2ab637078bb0f39e3d47b8ede0c13866c1`  
		Last Modified: Thu, 05 Nov 2026 18:50:03 GMT  
		Size: 244.5 KB (244511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8849d47c9ae6ca742d0e66db371e89cd40df882423d42a458956083a1276616`  
		Last Modified: Thu, 05 Nov 2026 18:50:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b0e5bab5a98ae357a19b859a5b6912fd954801b0d90a30a492320537a638a43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d9db1e0c6fd278f52f04bf2987f31950736c0fcf60054672e4ff71a07aeedd`

```dockerfile
```

-	Layers:
	-	`sha256:d211bdbe47c4da0f83aaefc01577d80c6d8fbab5576b7de01ffc3a1fef03ac44`  
		Last Modified: Thu, 05 Nov 2026 18:50:03 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35ceeb9a5fef1c38ef7dc2b2c42b1637a565e019d3ee7f7ba3954dde1be0e0da`  
		Last Modified: Thu, 05 Nov 2026 18:50:03 GMT  
		Size: 24.9 KB (24913 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:93bbc508a46fcf3326b55361eb73bed15ca6b5734590903f1a8a9719cd5241d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72157066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850efcee0d8a43850c05aecd6eb8a27d300a5278685575e887e2eaf1860484d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:14:52 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:14:52 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:14:52 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:14:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:52 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:14:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:14:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350a393f601eb0edffa67f91f7d2ee3aaecc9eef1626d31d62ab46dd10aed220`  
		Last Modified: Thu, 05 Nov 2026 19:15:09 GMT  
		Size: 247.0 KB (246954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb4bd7183be32e68410e5a723ce48a3eb9640d15bb0afa4f0696177d1560e8c`  
		Last Modified: Thu, 05 Nov 2026 19:15:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4900677948def6a806eb568a5869fca1eaf9e21230c239662ad98a7fa0166d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62482f7445116ef17634d86f567e97b4089dd944da8afb8d736f75d1e4bd00d4`

```dockerfile
```

-	Layers:
	-	`sha256:7886543a4695df07eb782737e7aac11c34d6a45d4b1bfbb52ca0380af225b38a`  
		Last Modified: Thu, 05 Nov 2026 19:15:09 GMT  
		Size: 175.7 KB (175718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3be9511670915beaf61a8935d3c935118643c3c3d64841a1f39110b730f2fc74`  
		Last Modified: Thu, 05 Nov 2026 19:15:09 GMT  
		Size: 24.9 KB (24940 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:02538bf8f3030db0eec4a701a810603c9236fcab25036563eee48aaa89c353b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73264613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a25efef2266e0a60078b87bc5a88a89aecb43d0c9a6c3e1af0d6495ddabf2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:31:56 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:31:56 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:31:56 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:31:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:31:56 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:31:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:31:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee16c18d6c8c5783bc34df07f9274e9c3a24c51443e1b03b5b6fa30670653f2`  
		Last Modified: Thu, 05 Nov 2026 18:32:13 GMT  
		Size: 245.0 KB (245007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b85dcdb4a1b636e6b2c3574b42c94961ed919869557f8a88f139496e8352b3`  
		Last Modified: Thu, 05 Nov 2026 18:32:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:5b40db6165e19fcb2b06d2b25cc0dd5298e29ff0c781685ee0e99d2afa25ea0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.0 KB (201041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a186bcb03c4a273be46f5db7a27962806faa85070438bc112a897701a98141b8`

```dockerfile
```

-	Layers:
	-	`sha256:1a48a0b3730d72c9023f53acced0c32e531008adb4032d2a9cc20d8c76f22308`  
		Last Modified: Thu, 05 Nov 2026 18:32:13 GMT  
		Size: 176.3 KB (176271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bdae3f92b2aa48567875bd342a12edf3bc3bf701bca949dd4213bff2850429b`  
		Last Modified: Thu, 05 Nov 2026 18:32:12 GMT  
		Size: 24.8 KB (24770 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:c84ce00074244fc2d197936f0e68f889d2cb9edc4f66604c1c481a333fc633eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72558072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e383a8c08c4b968220d500c30ed9e9ca96f509c7e2fc0531ef7b1ad42956248e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:43:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532b15a0dabc471164e28414794d844eea3397b8c74dd419b66bbcf34f8fb267`  
		Last Modified: Thu, 22 Oct 2026 13:43:49 GMT  
		Size: 247.4 KB (247366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce66e975c4906ff8cec76e0e5dcdb0c0b06de8e79b4a700004cd381c429d106f`  
		Last Modified: Thu, 22 Oct 2026 13:43:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:273cf354fb252db843eba1afb7688b4716f09e8fef8c8b0f88f5da5f5866acb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 KB (200393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea92d4dd2592e0d9c10b5f275d270cbf0d55f6f0db75b6002d9ed5e42c6cc4a`

```dockerfile
```

-	Layers:
	-	`sha256:7c782d9701d2e18fe3cd06327ee83b3873ec2d74d55825785ceed75c77ce715f`  
		Last Modified: Thu, 22 Oct 2026 13:43:49 GMT  
		Size: 175.7 KB (175711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aded18d2cd3be6ef4e4ae63052786cdc7388e79e5149a6084381ca785b932d5`  
		Last Modified: Thu, 22 Oct 2026 13:43:49 GMT  
		Size: 24.7 KB (24682 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:78ed343d504b142f165b968c98045cefb8dd70bdb09f051f1c812cf876605981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72995602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bce8385dfbcd8a0fc2a9b9a9498706e3562152057d6194986c9d4daecb33e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 00:25:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:27:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:27:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795c8f7e3d4f2122322653c2c4514dfb6e8a66496401ea98e9976e6985e4acf0`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 244.8 KB (244847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed08beff3e28243488e9f6c0ec42e4b5b5200cbb859e00f657e582bccc0d5a47`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6e2a713e4911e4ea690240c0210df4cbdb809249aaf9432739b8f988425b07fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315c59c48ab30cf51245e1373e45a33c61a78b3a273e01438f3aa12d6ad28d1c`

```dockerfile
```

-	Layers:
	-	`sha256:0ccb4dab615ebc9176270381685a22846677eb5f7f6c1055f695f178c3be96d8`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 175.7 KB (175707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b96faa0962ca9549cbdb8a6c9eda52d6435f07df89d8e01db3f491669611a5b`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:b51acfc51670814c9911c06baec25876253181a7d966c1e0d3f5063ef6359a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74245715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f853bf939f010fca93631a0dc312959fa4fad847c3a50590aadef08b48871f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:15:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:15:40 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:15:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:15:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad4a33aa8e342bafb585fb160c4704d3ce3df95de811c1727c73785bcfdc32a`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 245.6 KB (245573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bb68783ff0accb6f652fe454b9910326faff5c91617a0a67e3eaa0f239502e`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b2f1d6de128488526594ad0c7fc0c962b576aa5262dfdf5e5bf4538c002d232d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 KB (200791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d0dba9c8940ce9c021cf9f88b506152cc8b49944872d1e979ad53f0658a44`

```dockerfile
```

-	Layers:
	-	`sha256:8bbfbb332f0a6221789cb7392a3cb29394e230bfd703c738a225902c16c88e04`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 176.2 KB (176157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6569f9a17aee0d716621724e1cc5b8bcf9bb6e8e2a51c7967c4a8920d460255c`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json
