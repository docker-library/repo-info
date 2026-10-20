## `golang:alpine3.24`

```console
$ docker pull golang@sha256:f2c872bcee949b7be9c490efd02b48a8a2fbf947cdf533f1c58525ec9d8170fd
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

### `golang:alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:cd410a5c6686417875bc4815688e96ae9769f8562debc545d29fe58e73d174f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75247826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2101eb697fc5b5b7f64252fe6bf7a21c4a06a51852c71c3424d44e3f824cbb52`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:42:40 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:40 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:40 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:40 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b677f0d6dd32ba39eecfea27b17e0ecac4b01767fbf161c8fedf744d963a4c1f`  
		Last Modified: Tue, 20 Oct 2026 02:42:56 GMT  
		Size: 247.5 KB (247537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f958af8e7f90ce12ddac2700a2df281beed4dcaaca981f271c930168b9f0d191`  
		Last Modified: Tue, 20 Oct 2026 02:42:56 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:97018b306785a0ac998a75fa3e6ba7531e8a730550e2ee8c31e21864dd46bc52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 KB (205492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa791988568497134ffc89090215579eb0ab2989dd8a053352e6028bf6e6256c`

```dockerfile
```

-	Layers:
	-	`sha256:2ff1c1490da84d983418fdfae8651ef3d8796143b3f01a30e7e43c800e9d6ab1`  
		Last Modified: Tue, 20 Oct 2026 02:42:56 GMT  
		Size: 179.5 KB (179465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6f80a0577ae53066c8cda3a0de08dbb7063bb3b192bcf4e5db8166c6379127b`  
		Last Modified: Tue, 20 Oct 2026 02:42:56 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:b3cd6ccbdc57828e8e325efe71436f84d6613a46fa443b719e645d13f567b940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633244fdf1fe2ecff7055c00dc7bef4bfe7f026a12872e829ebb290bb2de7c7b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:41:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:58 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:58 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:58 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:58 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c321e9f7a69a2168e6859e5eb060cada34d0786ae1648757945b03d3f8d591c0`  
		Last Modified: Tue, 20 Oct 2026 02:42:13 GMT  
		Size: 248.5 KB (248493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66b3c6822f9cda28921e31996904c6b3ac5229e7a068e26d9630d882aa6cffb`  
		Last Modified: Tue, 20 Oct 2026 02:42:13 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:d8197be5984bbbe98682a65c648baef5346ecd522136d4fd7e140f9f24e48229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6ed994abb6a266e6aabb7e8af495633756c97f07dfdbb7455e1e73e3c02374`

```dockerfile
```

-	Layers:
	-	`sha256:9f7a4f08d8bd3074b2894482c05a098181116e389d32be7b735922c311c0f3b9`  
		Last Modified: Tue, 20 Oct 2026 02:42:13 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:aa5546324e718eb153bd0331bb06e746bf54da85732381fbe7d89d4e0e237f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73168703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91889cfa2fe1be3e23823d498deaec520c28451bfff67d222d47faec58266a8d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:42:47 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:47 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:47 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3412fbc4582771c36e74db8a0515bb01d6b6019f11327df3d94170be32ba817f`  
		Last Modified: Tue, 20 Oct 2026 02:43:05 GMT  
		Size: 247.5 KB (247538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d0df69914df24116fc8c8f7995c37d957b9b557dddeb507cbc5d3b4bf26a0`  
		Last Modified: Tue, 20 Oct 2026 02:43:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:f606fd8f564675de71413ecf76be999b7e7fa68b6213dfe0a276a41f84736bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 KB (205032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d1dcdfe3793822893816bccda62b8375203f5286b99ee4c904b5f3924e050e`

```dockerfile
```

-	Layers:
	-	`sha256:f934dbb18733e539f98c62800cf63fd2db2e5359bef4b805002628260a41e5ba`  
		Last Modified: Tue, 20 Oct 2026 02:43:05 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:425afd59eb26c405092e19438e9c1b3933d95586e0ab88d90767a45f4d4deab0`  
		Last Modified: Tue, 20 Oct 2026 02:43:05 GMT  
		Size: 26.2 KB (26165 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:866d2c31bdecdade2f3249ef6413647c3521e7f2afe40c432bb15c792cb0cb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72157360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbda0ba1364e4161bddf7f15145290ea58d13762ab26e6e40ff6992fecb6618f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:42:41 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:41 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:41 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:41 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9787421b9791d19afb1e8f8681a0727ff8c07c6ef7c32d296eb05f964a75a03d`  
		Last Modified: Tue, 20 Oct 2026 02:42:57 GMT  
		Size: 249.8 KB (249811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caeefac83d13f545a3bead223b204bed489a12c496086910e830fa8d05407047`  
		Last Modified: Tue, 20 Oct 2026 02:42:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:28fde0d7d458001adf9214c446c88ed8a0e1988db74b51a1c14803d0bd44b0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.1 KB (205128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4b0a6e4a85f476c627d2ef0f7ced56aef0572694b0025071b7bd207b725090`

```dockerfile
```

-	Layers:
	-	`sha256:721e0a6fafa512e747a7cc42df0fe6c806482c1b7e8b58a06c570f55b55de50f`  
		Last Modified: Tue, 20 Oct 2026 02:42:57 GMT  
		Size: 178.9 KB (178919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a87307eae4f9c08bfba78f9cd45d3ac704180b06480b8d8d30cc4de2320e0b`  
		Last Modified: Tue, 20 Oct 2026 02:42:57 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:b0196521c16f22f9c7089b22091faef25f433543471ebfeca51d1850f009d055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73265835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a35466913dbe7056f358bed20d496a3c685bdd8dc480c3b286b8d63cb937f5f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:35 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:42:43 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:43 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:43 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:43 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29052c0a973c286f4d0688d928186126551d631e542ec85cc5c25ae6a9201cd9`  
		Last Modified: Tue, 20 Oct 2026 02:43:00 GMT  
		Size: 248.0 KB (248028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f30025f89d0dfa640686c17714e3cae2c1f9b059ba4fea148e6c5d5de96697`  
		Last Modified: Tue, 20 Oct 2026 02:43:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:44bc5d56580b8bf2d49ed2fc6536ec5cfcdd9c5d18bc85b51c9d13d50b3a2109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 KB (205375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc980855d87908f45a520931bd5628a97226ae958c1c3bd5ad14b73ddfd6d1b1`

```dockerfile
```

-	Layers:
	-	`sha256:1e0a990322bbdf6f1abf2aa1dfc829772d4d73b7a49ebadf361875a49d7b8b64`  
		Last Modified: Tue, 20 Oct 2026 02:43:00 GMT  
		Size: 179.4 KB (179404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1b5275515c109ef47eda1b080b22f567a52f694bd4046e3539cd872e6211825`  
		Last Modified: Tue, 20 Oct 2026 02:43:00 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:e6ac4677e818e2ca8601b8bcf6fdc8d19f9eba45f8a95acf7c12b056d5f41b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72560084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9e12348f3130adf6ed61f6b3f27517d0b07574b29045595983673768c386d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
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
# Tue, 20 Oct 2026 02:43:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:37 GMT
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
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93836b5774e96155b60c3b65c2f6d830538d61203683c6012b8b71caed9f226`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:b24e733ef8c3233ab197a198f10606d49b2135f56432e3ef81395fcba3d8e9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 KB (204986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7dc41617572d6918b6ad6cbbcc64a503550fe7c7d7eff5237636848bafe89d`

```dockerfile
```

-	Layers:
	-	`sha256:bb592760a26d6cffa940f89c3f92f8c92c245388fa588e41c0ad6cc3561284a6`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 178.9 KB (178888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66f1c05f5f326d0dbb42016f5a64d85e8850167baf7508d5eb092047dd92cb7e`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 26.1 KB (26098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:4ba4943d0a1847ca7b5b7c26c66dc0688ed8beb93a2bf86a9717a4d54380bd70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72994466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141dceeba476feabd8321ae6bcce7348327290edc7e93814948ee6f05a1da891`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
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
# Tue, 20 Oct 2026 02:53:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:53:35 GMT
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
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d210471bbbad4155d5d9d7a03dedf3bea72046f85d8dd4431b4da5f1892521`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:efadc30f209182ff9ae4c3cd94ef12c275f64fdefed02f27f15970d9bc50b563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 KB (204983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90bea85fcd93cecfe4712d1a22f46be2e35634b78aeb82cc61c09332a0bf69ca`

```dockerfile
```

-	Layers:
	-	`sha256:31974581f01fb9216ecc364c86d8ac0536f6f40394b184c362034d71b3d72d8f`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 178.9 KB (178884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7a577c580912f23e1a52af4f5387fe4ed7652e198aff2f73d75ef0c1710971`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:d7aa76ea79c1609709696adfee4c94cccbee2bfd21068c30a5b7b4119836bdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74245705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb218a15cbd2231f1fe535f50a4a2f41351c1edc8dba142abc8f1404d67492aa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
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
# Tue, 20 Oct 2026 02:41:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:41:07 GMT
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
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b24716e76c0673e5dcc8bd1d8d66aa71c33d88dc860bd827caf54e4005d1b07`  
		Last Modified: Tue, 20 Oct 2026 02:41:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8a71fe4faeae1890eee4f84a2c915ebb89c3597814fc0c0664fec27700139a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 KB (205337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238bd7dbb7cfd65faa5688cba2490df02bb8a0a99bc6292d9b7d940f8ca32e54`

```dockerfile
```

-	Layers:
	-	`sha256:5a69721b7fe46a9b2531e24628f83a15b6c62702bac134aa3d785f12750cfddb`  
		Last Modified: Tue, 20 Oct 2026 02:41:28 GMT  
		Size: 179.3 KB (179310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:406bc56dc0de99a2fcdc7dfc3ccb3b742e797c26c08905735ed90ba622870ce1`  
		Last Modified: Tue, 20 Oct 2026 02:41:28 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
