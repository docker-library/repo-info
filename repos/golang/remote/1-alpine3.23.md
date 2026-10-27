## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:8a5046497cda39860b832ffdbe8dd66018a0f05bb01352f533a36e7e2ced66a0
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
