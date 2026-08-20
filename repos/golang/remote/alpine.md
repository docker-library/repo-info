## `golang:alpine`

```console
$ docker pull golang@sha256:4c9fe60190a2a3350ddc51de80d0224b8a6698d12bdfc999fee45ea9d6c46dbc
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

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:c0ef102fd47cc7cfb3db3e93c4830f500307e37dad1dca44a3795e783cb0bf58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75148377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356a90a5be73b0f7195d1c50ce4fe91d7d0db45a1030cc026fb35f52de43d04d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:07:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:07:17 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:17 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:17 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:17 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9584d272670215911272bd01cfeb6fcf7905e88db580dee6ef03cbd266023c62`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 245.1 KB (245067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daee4590c9478cfdac9f40a88759297738e75fbef28baa5b8ea3c56a8f9bb19f`  
		Last Modified: Wed, 19 Aug 2026 19:06:50 GMT  
		Size: 71.1 MB (71056760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6c2428769b344d266b2057dcc18f4705c7fb2f24d894d56c6a629802395ce2`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:607f8d898b76bea8079c46dcdf3f8889ae77c7f9c63ff9fdf33845128b62dbbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80b2edc59446de355c4d1173be6a82ec786c4626cbed0bb9d6611e86b8303a0`

```dockerfile
```

-	Layers:
	-	`sha256:24a593844c29eb1906d418281f802682d97c8fdfd31066ac9a75a292f68a02f0`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 178.2 KB (178172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05f5c210f0d1d55ace245c8c918ae0de1ea331f1f5b1e544268c4e1d6fa24db`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:85a0166215be4d8fa79c9b1d90f7825cc1b4e863c5da94d7d56f510a597775b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73375074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f68c82e847ede430a5ce0ed31127507f02d82c21d512ef9bff6e203d166aa6f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:05:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:06:01 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:06:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:06:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:06:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:06:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:06:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:06:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa790c8a8a3501a3d4eaac144a25b7bc47fe109fd8bde3ff279fe05eecc4707`  
		Last Modified: Wed, 19 Aug 2026 19:06:16 GMT  
		Size: 246.1 KB (246133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872642a0df651bda7b30f51d0062680028a6ceef892b6a644073b5b963d3a87e`  
		Last Modified: Wed, 19 Aug 2026 19:06:18 GMT  
		Size: 69.6 MB (69575332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effd6754bbbaaf3035aaf2aa3f813671247afdef3191cc7a30c1aa1e5d4419d6`  
		Last Modified: Wed, 19 Aug 2026 19:06:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9137ffd7d2de321d84b6e1c00a49ddddffcf2905960a5ef0a11a260bf8ff5f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885d0650c76a2a034109a8e0a5b594bd2176595841d12fda71d4fdc4256cc0e7`

```dockerfile
```

-	Layers:
	-	`sha256:e8415158a82ba3f10a7bd1aee25aa118045a97360ef2635d8d8873a47008022e`  
		Last Modified: Wed, 19 Aug 2026 19:06:15 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:de7616b68fa19688b546a4725271f63ac179618c9fa004980cd1bb2af7c3a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73081149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6632fee313eba995f39b0e9931148d36acd82b0cd01492dcc6ef6774fbaab4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:07:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:18 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a35f81abd80eda9101630d42a34951a3d0bb4651b9c24bad08aae60f0047b5`  
		Last Modified: Wed, 19 Aug 2026 19:07:35 GMT  
		Size: 245.1 KB (245119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b808de796b2993f7b2974e6a62e59facd20ee4af22e2be560e4dc22e31f5272b`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 69.6 MB (69575259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744fda8895e29d7cdf36b4d4d306685e9f3afcb9f96c2a5bbbea2a918ab9716b`  
		Last Modified: Wed, 19 Aug 2026 19:07:35 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:8376c9e0f41c97040add837c19a983b56e098d1315dbdcb231cfd4d28035753a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25de89edf9e3739c9a73d0e09de7ed2fd95774ca9c6ff6190ea4cf42ed6e56cb`

```dockerfile
```

-	Layers:
	-	`sha256:c00dd062bed3316f4447c371d0f6a8cc4fe285babf094061b74906e5f830a8b0`  
		Last Modified: Wed, 19 Aug 2026 19:07:36 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c601c94c5afb59e361b9b22644d2c1b3d6efaa6ecf9bbc550ceabd252239223`  
		Last Modified: Wed, 19 Aug 2026 19:07:35 GMT  
		Size: 26.2 KB (26165 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b85a5429ef30595c9e12bb8c8c375c3fdb4448409d89379466ddde17087d8be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72060166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851105ffcefa0384dd10f5d8a5a0ece71900c28caa877abf81548b400fa38652`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:06:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:07:06 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:06 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:06 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:06 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17ac4a3b5aa63511d46e6260b049b6162084c2d7ea766a737014a61122758f`  
		Last Modified: Wed, 19 Aug 2026 19:07:23 GMT  
		Size: 247.5 KB (247506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7d71ede3d0f0c6bd07ffa6581b7c523b2a236cd9c9a0151e44c9cfe43011ab`  
		Last Modified: Wed, 19 Aug 2026 19:06:44 GMT  
		Size: 67.6 MB (67629464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941a22c7feb69f1b2e54163a9ed78d0b0e0d3622fb6c2152807f6d67c97228f9`  
		Last Modified: Wed, 19 Aug 2026 19:07:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7b760ae5d1569df637916b32c739e01861bbd3c5b2705919ef8b1cc137c74613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 KB (203835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8f003a586875fd4392ba787e7d0e2c693dd6d5b19c5076f7ddbd3b6aecb0bb`

```dockerfile
```

-	Layers:
	-	`sha256:33e3348815a2ad87319e5e54b86636e42341d72f7a6f2bf75321dafd42cfad4a`  
		Last Modified: Wed, 19 Aug 2026 19:07:23 GMT  
		Size: 177.6 KB (177626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:404a2927af213d252368c7a6d4f623ca553bbfb335feb32713c7b8450c585f49`  
		Last Modified: Wed, 19 Aug 2026 19:07:23 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:632e3a67f8e1da34a2e14c805673915a774bebb8322da4ffec804f6e9f10dd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73164441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea588219392cb4ca74aa9aa7e01d6f118d44591845da67085ce95225fb363d9b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:07:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:18 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad0720924146341c399568fca9d694470158bdb6884456a4a4b2556238b1aa2`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 245.6 KB (245594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2906014c919aabd3893a58e6d42b0f58624940ae7a68c8e2b25dd4a5a5cc91`  
		Last Modified: Wed, 19 Aug 2026 19:06:59 GMT  
		Size: 69.2 MB (69248548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ec245b96a3725898c4c72b785676d01474fb674ea6c9ec3e287a7747204f43`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:55c91d2b0b7af524d891809e894317aa8e361d468a47da3656a6973e841fe8b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07dbb3c01f0a3c7b75d1582eb56299dd224a4b4023cb7c303da3c34bf40efb`

```dockerfile
```

-	Layers:
	-	`sha256:097b5b5953288f1178b4d374f607b407d6b42afca6d795e94b6dd006f6a261a3`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 178.1 KB (178111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dbfcd5aca800fc5937def7d89aa031c1c297a11489f4ea6c3f093900c4ea9f2`  
		Last Modified: Wed, 19 Aug 2026 19:07:34 GMT  
		Size: 26.0 KB (25969 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:ad461b77ccae586d662c92d337079064c62616ab04bd0d4d3351fca2fccb5b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72458412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60395478d7107658f58338a7c3339c775b1e30ae6ceb2e2ccd6a32c881cc4b6c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 21:18:56 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 21:18:56 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 21:18:56 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 21:18:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:18:56 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 21:20:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 21:20:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb707e334f9b253ea850be8dd7959cec06c4792387691b47b15cdd8682d4a5`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 247.9 KB (247919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dfbe9708d45c6eb8bf65e223bd11d146a573692693c7d1a5b6046ab9cb92b4`  
		Last Modified: Wed, 19 Aug 2026 21:19:52 GMT  
		Size: 68.4 MB (68396935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feef4cf9b4822e3bd5dfbd7ac428a4afdb6d8de59eecd2382464bd53b4a95b53`  
		Last Modified: Wed, 19 Aug 2026 21:20:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:bc51d5e6c54f0f9b26142ade5fb64ede52a4f3e278ad03bac586199def7a4fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7afaaf811a9c43e4cee7e7c0434e37c2880471d1f2d3d1fb724e2493003e9f`

```dockerfile
```

-	Layers:
	-	`sha256:9862f096459a8ac599071674a624d6f09a9640f0222f62ad47a6857b87385c09`  
		Last Modified: Wed, 19 Aug 2026 21:20:37 GMT  
		Size: 177.6 KB (177595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b20e159515489f1bbbc42822c896f6d64883358b3600a76e320806c1c304176e`  
		Last Modified: Wed, 19 Aug 2026 21:20:37 GMT  
		Size: 25.9 KB (25926 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; riscv64

```console
$ docker pull golang@sha256:e2df8e542c6f0d9bde8ef15b97ba3ac8cb8de220f2f02f3d32a7377304adc9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72915389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b20e0b1061d4bcdd4e6e3f3ae820d717e7e572529bae97fbcccb88bfc7bc1dc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:44:47 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:44:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:44:47 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:44:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:44:47 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:53:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:53:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4eb8a0847d9b0c7c04686bc15eb9657f78c75e47160e656e88ff25111d0b39`  
		Last Modified: Sun, 16 Aug 2026 13:05:32 GMT  
		Size: 245.5 KB (245497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67331164267500f1ce1c07f0d0df6866680f30dafcb0b7d411b8cee7df6d0b55`  
		Last Modified: Wed, 19 Aug 2026 19:51:27 GMT  
		Size: 69.1 MB (69095376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288222bfa631c0f426341fd2be88f7c30963771eacc2305706486d5fcd55dfa5`  
		Last Modified: Wed, 19 Aug 2026 19:54:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4f020460f4a5d6eccb6b0364aebf7e849722699feb6a059388d7d918fc7a0921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb4667b11571c2c63ab12992eba5c668070e1ecc1504466ba10187945f7803f`

```dockerfile
```

-	Layers:
	-	`sha256:bde1752616743e5f7769d205c20958ba4a979f41d9c3bb3c41f6cbe96330b5b7`  
		Last Modified: Wed, 19 Aug 2026 19:54:23 GMT  
		Size: 177.6 KB (177591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:026e745a7eaab5c16be331c33ce9169087f1b9903fc238a00cc10294b697ade0`  
		Last Modified: Wed, 19 Aug 2026 19:54:23 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:88319e43ce65b61dcf69cf4624e10435318be5d8eef78f0c4614f8e08176d77f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74148550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62b51e1a9676db848c80d2c870b8627c730a1bc0aa6dbfb6abb97788cf03bf7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:06:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 19:06:18 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:06:18 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:06:18 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:06:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:06:18 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:06:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:06:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f131608c89252bdc347b8d6a95ce66f9ee586fe8b60c4b9d34566a7dbf4f9a3`  
		Last Modified: Wed, 19 Aug 2026 19:07:04 GMT  
		Size: 246.1 KB (246147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417d2916e8495159f20db5ea42f7ad2f41b74b6bbd2c13c05dee9494b3b6de1`  
		Last Modified: Wed, 19 Aug 2026 19:07:08 GMT  
		Size: 70.2 MB (70192925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e890d5975f82027829ae600a3ac1e98b4488336fd0066f363f59e0b22c30dd`  
		Last Modified: Wed, 19 Aug 2026 19:06:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:39c48688452cba52f56c065ebdd12be8f87c67a8b45db12e9beff9294fc7c8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 KB (204044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be79d80d8b3ff4408c39864a1281f6f275f2e7f0e5014680e95eec7aa9f58b2`

```dockerfile
```

-	Layers:
	-	`sha256:7f4b82879b69479c4468ebb1ee761d1a20a5bde5898ac3e0bfd1b57b72b498e2`  
		Last Modified: Wed, 19 Aug 2026 19:07:04 GMT  
		Size: 178.0 KB (178017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8714c877b3fcde654e5db086bce73b4ea582bb1cf489ea3d1bb43a68bbca700d`  
		Last Modified: Wed, 19 Aug 2026 19:07:04 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
