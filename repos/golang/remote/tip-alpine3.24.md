## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:ef63deabd3cdba201b0fd97b1a7bac71288ac8b7c9047f5ed4729f5668c01fec
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

### `golang:tip-alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:fb927377a098690f57957fa55f9fdcf7e214df50465934ef0e09882f9bd63d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109540640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a025da0aa40bb6a40c823533526e9dbdc1e5abb1521fd5d9abe3b917bf79f2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:03:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:04:47 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:04:47 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:04:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:04:47 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:04:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:04:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed680e640a9f4cabd02967c62565b91f6f37e9c3b44bb2d605e3010b202394a0`  
		Last Modified: Thu, 08 Oct 2026 18:05:06 GMT  
		Size: 247.5 KB (247525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe71258c19213fc7642f570a5de6762050e30b5fbd969c174568a5bb2ef0270f`  
		Last Modified: Thu, 08 Oct 2026 18:05:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:01448790373034d08b45a98d5faa4780d4055f62255ec9bc059b1ea986707de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d42754dc5f678f3323271d4a17d44b6a58984ef8095b0231d78eb8b551ebb41`

```dockerfile
```

-	Layers:
	-	`sha256:5f837d712d712e535316bd02bcb4aee0a43d46e3b927bb94b1d766ce2e0bfbd0`  
		Last Modified: Thu, 08 Oct 2026 18:05:06 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad35b3b68142950f070180cf423c83e238a5f899f58ec103662419814bae17e6`  
		Last Modified: Thu, 08 Oct 2026 18:05:05 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:fdecc29dbc5fad170c546b7c3e55a2a4aaa0e7d31cd9266eef16684565333685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105375787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e5b8364390b09e45cb0640e758cfc41b55f9dee875b9b167e7df603efe1ec1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:01:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:02:46 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:02:46 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:02:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:02:46 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:02:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:02:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1f95c417baf62b8fcf479f6edeb4227887dbb854b2d95ae1deedbf535a82a8`  
		Last Modified: Thu, 08 Oct 2026 18:03:01 GMT  
		Size: 248.5 KB (248493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4642b8b56bd46ed35dc6afe7265ebe8a37cfb0661ad32a5b87b86f8b11b4d9`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 101.6 MB (101572023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204efe3cd0ab2b8aa9e73e5f2519e53e603a2fe6008db3cda0c3b004d3fade8c`  
		Last Modified: Thu, 08 Oct 2026 18:03:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:c8d70270a7aa6abb4ebed0678a78ef79a0f08a3cd87b8b2bf9a7b562451428d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4ae1a0ba03d7f401b4b3aae0ec798194743e729bd0781efe91f86482678494`

```dockerfile
```

-	Layers:
	-	`sha256:ce1fdd5877822a075b7d0e0259378cf3816fb2e9515c81c015b9af201a593e4e`  
		Last Modified: Thu, 08 Oct 2026 18:03:01 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:2140fed29e58daf4d97a9217f721ed6a89c5e29233a076d3f5a961a61b515fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104770250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425d146cd8db2d1920050398c4d9dd128f2970c515f3a270a21a80c287fbc804`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:03:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:05:05 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:05:05 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:05:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:05:05 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:05:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:05:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f6df051b3027a3c16a92ae1a8b6a6348f3bf4089a0537ade0c16a07f9d8c65`  
		Last Modified: Thu, 08 Oct 2026 18:05:24 GMT  
		Size: 247.5 KB (247537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32ae02eb9c2286b080e1603179bd1a5142fff9954adbac4301a1fbea7f79d0f`  
		Last Modified: Thu, 08 Oct 2026 18:05:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:183a941046e2ea6066b882852b1c13e4f90ebac178eb6e51f2ba81abea6a549a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ca2564120136498ac3074910161ae094c14c423ee1235c2a6b0106805d3d2`

```dockerfile
```

-	Layers:
	-	`sha256:013819d4f24dc6887d5eb5fc294e5cc4ed66f4ec6748d293c629ad220fbb0f4a`  
		Last Modified: Thu, 08 Oct 2026 18:05:24 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:239ec8499dd01a1320943f95681c705dc462aeead8a031c475aa3ba8ddbcccc8`  
		Last Modified: Thu, 08 Oct 2026 18:05:24 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:df9b1c1d130c17a70d08277b8a70dfd8105af2b92bfaad015781287ccc920a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104183565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a380db47a44cef6bf777938e4f4b86ad03a95263cffb70207dbca8e5177dd42b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:05:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:06:36 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:06:36 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:06:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:06:36 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:06:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:06:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314fd0ca88b45e3de31210e12930a9742251232ab80e1293e8f52320b3211052`  
		Last Modified: Thu, 08 Oct 2026 18:06:55 GMT  
		Size: 249.8 KB (249818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7810c7e1dfbd9d8baa3da8cf4cca6006720e6108a36fef1008993dfeb7933858`  
		Last Modified: Thu, 08 Oct 2026 18:06:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:520d643c377169a248b6ac5490720fa31de771a12aeed35983e1dc7c0c305f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e182876eedb5e64657c2285e936ce208f04bf479b69e3c4052b447b1568b3760`

```dockerfile
```

-	Layers:
	-	`sha256:15fe6c4d0eba605da19136de5ee63b55f6d81b6b8900fd5829fe9bf53322e19f`  
		Last Modified: Thu, 08 Oct 2026 18:06:55 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cd8347c0c0e9915bccd37e5900cf7edd78408f86410d29ef3d6af6623f70c07`  
		Last Modified: Thu, 08 Oct 2026 18:06:55 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:18dbc5d24a96f686a51224d26e26045aea2370b44c8ad18b75b1cc884c33e90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107107112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20bfdee638ca507fc76ff64634717f9ff874f2c31bcbd747bde3786f0a978887`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:03:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:05:03 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:05:03 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:05:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:05:03 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:05:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:05:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f2a33b8977db4f48f35609e69294aeaa097f9c2130f28462ea3b397f051595`  
		Last Modified: Thu, 08 Oct 2026 18:05:21 GMT  
		Size: 248.0 KB (248036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7967cc9640ee10ef87875b2c666f4fe51cac52eecb7aef3c36576d7f96ff876d`  
		Last Modified: Thu, 08 Oct 2026 18:05:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:0402d364650a6d3244d3850138be67107b9b1047f8e76e13b626a016a3ab0e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 KB (204539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f47086ce4acf0a3864fdbe6ce4e0afe649531930b09c84bac477c93e370cea6`

```dockerfile
```

-	Layers:
	-	`sha256:6165399756fc6d1d4da94f16ff6d574b9792abfca52e918b73123c26e2253cee`  
		Last Modified: Thu, 08 Oct 2026 18:05:21 GMT  
		Size: 179.5 KB (179483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b98e95d352df98753ba5a33207923c5ae20edf9dadfdcb859e103cc1440e588e`  
		Last Modified: Thu, 08 Oct 2026 18:05:21 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:b90e7faf3e6a71a1d815e95e51d437161bd44d98ebb0026a8f0effe484995a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106029630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbdf8df7ee9d12efd1b9ef4d89f8703c9c4e253d57c16e4bd26f4ebf3a36f4d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:03:57 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:03:57 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:03:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:03:57 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:08:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:08:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ead3e5d134162dee7a14bb813a5ed676c80b3a1dd5e7adcd490a8d837da3cc`  
		Last Modified: Thu, 08 Oct 2026 17:13:49 GMT  
		Size: 250.3 KB (250278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5baf45f0625686f21eddda4f62c9e4282d2a1d6d91b5130fb17c080c00f3ae`  
		Last Modified: Thu, 08 Oct 2026 18:08:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:cfe37f0c4936185fc81b657f2720fa8412169679a1f7f4e253d5c038d794da51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.9 KB (203909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13615e3b9ac5ed23a6e6c9e1980fd74501b4f8e3c51d4996961a900738c41e76`

```dockerfile
```

-	Layers:
	-	`sha256:46046964c0acf899b3a74ca9033d6532955bd13b1c7d0bbbdacb9e549dd9b8a6`  
		Last Modified: Thu, 08 Oct 2026 18:08:52 GMT  
		Size: 178.9 KB (178927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b628134b9cb9352e13048a7c1fd7e8c3a91b0aeeaad1c19c9a314edcf82ff7d`  
		Last Modified: Thu, 08 Oct 2026 18:08:52 GMT  
		Size: 25.0 KB (24982 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:917eff41b074bb4fc122c91f94b3a020cc3edfbab9a0809cb9a5d2c1de1bff58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106199158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c643c7d4542976f8639f310bbfa56b8f80ed24c0fe97551d18f62b569ee4fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Sat, 10 Oct 2026 20:59:36 GMT
ENV GOTOOLCHAIN=local
# Sat, 10 Oct 2026 20:59:36 GMT
ENV GOPATH=/go
# Sat, 10 Oct 2026 20:59:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Oct 2026 20:59:36 GMT
COPY /target/ / # buildkit
# Sat, 10 Oct 2026 20:59:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 10 Oct 2026 20:59:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0ea0adf3388720ab6ca6cae55e8e0e08c82932811f55332637522351fd62d`  
		Last Modified: Tue, 06 Oct 2026 01:37:14 GMT  
		Size: 102.4 MB (102375676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40fefacfbc446271cdbd34a2af3f50142f643479e42e1de5f9b1793e4d0c3f49`  
		Last Modified: Sat, 10 Oct 2026 21:03:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:0773a4c7d71145a53ff296101187cee1156c0689ab7ae393dd59b8f70044fb57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee9e8036291b9bc0ef2e3a172b182bd3044d72bef13e8d20e68200e7eae2b57`

```dockerfile
```

-	Layers:
	-	`sha256:8f77758ae8b795f2641ee7c60362c78963212c2742573d96722ade9804ef0544`  
		Last Modified: Sat, 10 Oct 2026 21:03:01 GMT  
		Size: 178.9 KB (178923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a164271701c44d83ba0d10b396e371bceca39190365ea4bd516f21b300529e3`  
		Last Modified: Sat, 10 Oct 2026 21:03:00 GMT  
		Size: 25.2 KB (25154 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:1bb956358cbd596e92982b5548f77c83ff547717e0a455f8f510e15271de691f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107967410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543c77161e4d746de2f8fefede373c3a50f2b717f2922683d7d14a3526bbf0e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:06:46 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:06:46 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:06:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:06:46 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:06:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:07:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29d3dd38ba53030beb03fdefbdab2103c1e496f7fee3765c41e59ac3f61bad2`  
		Last Modified: Thu, 08 Oct 2026 17:13:11 GMT  
		Size: 248.6 KB (248567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224d60fdd825abdcc86346793af4d4ea3e1c06771a495a1aada2b7e57593ead`  
		Last Modified: Mon, 05 Oct 2026 21:36:55 GMT  
		Size: 104.0 MB (104003346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a0652516b125d478d8b2c9feca3212c5d80aa9990be693e1fcb280597457cf`  
		Last Modified: Thu, 08 Oct 2026 18:08:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:332ffc471775e126da911fd9577174cb29de5ee09b3cbce1e907c09a28c6dcc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 KB (204722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8684cd256ace1ac0d8ae89186706a30402303e61afdd97a33cd1fe78cbe2370b`

```dockerfile
```

-	Layers:
	-	`sha256:743cd27b5f05043a2d228bc5b37ae3b8e653a5d7f361a87858f437fd499407af`  
		Last Modified: Thu, 08 Oct 2026 18:08:25 GMT  
		Size: 179.6 KB (179623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec332a2b9c67bf7a0f1ad1c021ea39965ee5bae9c6bcfb7a4064b12c6e1af3f9`  
		Last Modified: Thu, 08 Oct 2026 18:08:25 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
