## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:7fd63dd7c37f5ddaef15bd8fd3f3e4f90f0d50cd9cae255c7cf73887a494d8df
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
$ docker pull golang@sha256:7ac33c933aacf6bb0271e06dafb135173936da8c5873247d0794d5a5de9ce661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75247225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cab9c540cbc5b4639963bdebeede6973f3f7b8ff18c74dfe0035a562454d0fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:21:43 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 21:21:43 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:21:43 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:21:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:21:43 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:21:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:21:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4af528bc3f60494579e7f0e086fa43e7e1771e1522a56a603ab54f74717dfe`  
		Last Modified: Wed, 21 Oct 2026 21:21:59 GMT  
		Size: 244.4 KB (244445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e124ffff9386e1887031a230561bddc07636d303381730bee3238eec1cfb13`  
		Last Modified: Wed, 21 Oct 2026 21:21:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:1e4bada041be1654f03c4ca5c65a0d6730e8e67ca3b8579ce6ae82719879cb04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44b205d09af53a76b6a2bc0407f791c7116aacfc1642e993505c46177d28598`

```dockerfile
```

-	Layers:
	-	`sha256:7eecfa39c2827f81fc9d769dd54f0be6bbdba1a67e731627992a157452f478ec`  
		Last Modified: Wed, 21 Oct 2026 21:21:59 GMT  
		Size: 176.3 KB (176312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adc227986fc8e6549b8749c661d073adf43a4e495d8b2fdc282fa0926f96e467`  
		Last Modified: Wed, 21 Oct 2026 21:21:59 GMT  
		Size: 24.8 KB (24806 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6e53e095125d273bde6a3db31caeaad5a4b3dc925ce5dda92413b5c0788df6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4aef5903acfc340a3b8203c6eee8df13159a8f189fd2b4b79249c3dfc26100c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:27:37 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:27:46 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 21:27:46 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:27:46 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:27:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:27:46 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:27:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:27:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1de763029af4e6124b04d9fde4e3a82121cf5ba8945f7b98c1013588825978`  
		Last Modified: Wed, 21 Oct 2026 21:28:00 GMT  
		Size: 245.6 KB (245568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1547a25e4de290457c58f7b49db75399048330ae58dbc78310402bb4b493c9`  
		Last Modified: Wed, 21 Oct 2026 21:28:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:da068b7a4424ce8f60eac24ae3091a137df7d390c83ec1e5ded10ee138da1493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c055e8a62f6ddf4529fd242a3cd099a4d4cc8d7e0bb70b4d0eb9cba3f33f4e2f`

```dockerfile
```

-	Layers:
	-	`sha256:e8968c4dc9a882c2f1a07b12937963f6a3e9a6cc7e9f9b64203fec05bc12932e`  
		Last Modified: Wed, 21 Oct 2026 21:28:00 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:5d57249afaeb980320356a2779cce1ff4aa11d4e9bb94b4bbed07958a32c7398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73167513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835f0d6d0edce895fc943b8d1b0f640823a0e3b11914e50ac8ba0201bd535b98`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:23:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:23:37 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 21:23:37 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:23:37 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:23:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:23:37 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:23:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:23:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c19a0d2b157359e2c083784dae395b6669136399fb647d6455d94c5eef6b75bc`  
		Last Modified: Wed, 21 Oct 2026 21:23:55 GMT  
		Size: 244.5 KB (244509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a87d5d627304039f5b023310933cdb48256baed00bf43acd387115f55cca2`  
		Last Modified: Wed, 21 Oct 2026 21:23:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:013c45fceae4210485548c95474dcb6952e4428a76e9cdcb06c40944f9004a7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a345fc86d9efa6dede4ecaf4a5086191645e2b3842250296f16e379ac7836f2`

```dockerfile
```

-	Layers:
	-	`sha256:ecb0467d89b8c246591574c2a499b977d3d9eeadf82239588e43a572e2e7eab5`  
		Last Modified: Wed, 21 Oct 2026 21:23:55 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:650959c3680248cc351919aa54e9124fdedffedf467a76f8baf4fd9c5fd507eb`  
		Last Modified: Wed, 21 Oct 2026 21:23:55 GMT  
		Size: 24.9 KB (24913 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fa72cb185c5fe16a8e23aa0ef9def3c4346663dc0f264143ee2d0941f891ef1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72156331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b78fd31257312717d45cc4c45517186382ce86f523bcec13d073b641ef14ae9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:21:39 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 21:21:39 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:21:39 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:21:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:21:39 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:21:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:21:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1694945b0da2e8fa7d1af7809cb6d69e6ea705a052d34cd9947f23670e94e8a`  
		Last Modified: Wed, 21 Oct 2026 21:21:56 GMT  
		Size: 246.9 KB (246946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce72d509585c930c72df572a4d8be812f81f443058049cb730a235635876c0b6`  
		Last Modified: Wed, 21 Oct 2026 21:21:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:93b163e8b32a8ccdda0780b4864c5b246f31cd7c57d3ec4ab08d905a93287bd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39c0779e685d92f2dfdcba4189679c6511399a826498f951e6a0b3cc86d784c`

```dockerfile
```

-	Layers:
	-	`sha256:2a00962cfd991051a339992671cf1e0227b71ce4971a710e183238c8c02fcb41`  
		Last Modified: Wed, 21 Oct 2026 21:21:56 GMT  
		Size: 175.7 KB (175718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eee6c96e1a7450d2bb70dea9e37405de075699cc65b7313e3b80f64f01a7273`  
		Last Modified: Wed, 21 Oct 2026 21:21:56 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:fcfd8d994e9491887f06cbacfde9d0fa77156b20c59c0a1c08c25675d1c28848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31145912aefe997254666cb8b4683b574513e476f21ddb8f0f0f22f33c1bb162`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:14:46 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 21:14:46 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:14:46 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:14:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:14:46 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:14:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:14:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3777ac0daa19702ff02624c97cf9982102f1a5c133635bc399377a6b3a37c45`  
		Last Modified: Wed, 21 Oct 2026 21:15:02 GMT  
		Size: 245.0 KB (244992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28ef78abfd372c370dc06cb13e611cbf5ab5785a3a59e54dcd1f557115198c8`  
		Last Modified: Wed, 21 Oct 2026 21:15:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d88564c661ae2dd4721db37c680c26a507730b0752a296eadb3b9ae2e9bda6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.0 KB (201042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6233f8ff1fa9802e905d215a5cfad7d4b6374633c0972ef1886104d9a25cdf47`

```dockerfile
```

-	Layers:
	-	`sha256:498a2f4bfddf23ea81f3f8732f77aad444e7171d9a9cef83061a091bf33f43f1`  
		Last Modified: Wed, 21 Oct 2026 21:15:02 GMT  
		Size: 176.3 KB (176271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dd96b5cf7b060eef69211d4a7cc27c36eb50d7fefa162c2c1523ffcdfbbc28b`  
		Last Modified: Wed, 21 Oct 2026 21:15:02 GMT  
		Size: 24.8 KB (24771 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:a5e5a48d3af8951774d7f81ef6f878075c2c9eb7882bb8cbbaa463f56e1a0393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72557356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846c3231d0ccbda375c7a3a21300af435689a7140725f0503a370513cd0bf72b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:15 GMT
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
# Tue, 20 Oct 2026 02:43:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301ada7d2b2eb8bf6af773232f9ea181bb90403b0af4f6b307b49191890df265`  
		Last Modified: Thu, 08 Oct 2026 17:13:51 GMT  
		Size: 250.3 KB (250258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60feea7b5512b1c4fb840d96a9e358a719c00660498384d91dc7559178deb83b`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a7c478b04577b5c0913f2ffbee6a74b8bdf11542e1a1705fb9a7510b2119b7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 KB (202330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ca2221d564ff479ab6a2c2665b78512a1690ad605ae6b430d45e14fa9b71cb`

```dockerfile
```

-	Layers:
	-	`sha256:0e4e7ae53514725549b832f28a4869049b6348741ce0c8d4a752842c88f79b80`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 177.6 KB (177648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb4df79d03f40c8ccb79036b7984b72290c16bd4142108331d6f0d57781c07e4`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 24.7 KB (24682 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:4e71247d56eea11944f34ec1e8569300a3dd723aaa86617b8813673747942b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72995420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba94f9f4ead60d5834b9e2071fd2007fa52350051b100e7b333719cc8321917`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
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
# Tue, 20 Oct 2026 02:57:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:57:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437059a016369af060310e25ad312efbf8a736b2bd0bb2179c11e419453bc9a0`  
		Last Modified: Tue, 20 Oct 2026 02:59:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6eb9955fbe7da5518c45220af1205ad48c71d452a579201ebfcc8105e4eb6ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 KB (202498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fe4723cb715ccffca562a01a6bb2161b78a74540527a4d3876524a555fdd42`

```dockerfile
```

-	Layers:
	-	`sha256:f0d3342869bec96a42b4ca0dc50490a14d78f376569413ef83878b5605d779af`  
		Last Modified: Tue, 20 Oct 2026 02:59:09 GMT  
		Size: 177.6 KB (177644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb2f63cdd10168813c3968cafebfc5a3fbea0ce4a29151f3c51dbf1b67b05338`  
		Last Modified: Tue, 20 Oct 2026 02:59:09 GMT  
		Size: 24.9 KB (24854 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:b05d5840e34d7396f6bb1ba2e4d1b48348bdf3113756b2c39e9d25db6ddd7bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74244488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd100b841ef2679fd70a4cbdbab907c66dee4c6068cf0388db8875778565900c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:31:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:31:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:31:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca31ef2345db279873950e696c93a0157a758c1b85337c3fba7ba7794875dac`  
		Last Modified: Wed, 21 Oct 2026 21:31:32 GMT  
		Size: 245.6 KB (245570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f607520c0b551ec54dda509de4162c20580e04055786f608091f9a7edab82`  
		Last Modified: Wed, 21 Oct 2026 21:31:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:7b4eea389d4ed983e30e9592b832ab837fb3b7d1e1c1fbe8eec005308595407d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.0 KB (200964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d652fdca251a875b1ca8afa1dd2463c5894646a370901fc96c574e30775f3964`

```dockerfile
```

-	Layers:
	-	`sha256:ab035399676c6a5e8485b45f204ca4ba501107e8d11bb74a3777436d041d63a4`  
		Last Modified: Wed, 21 Oct 2026 21:31:32 GMT  
		Size: 176.2 KB (176157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d02e1c81e515aeacc4ce1bb6992d3dd4df4ac3c39812d6b44f21f20a5fb8b2c`  
		Last Modified: Wed, 21 Oct 2026 21:31:32 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json
