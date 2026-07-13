## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:06f3558e92c1b8c156d6f27c2562e0236a6c537e907796df0124a8d35012cfe6
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
$ docker pull golang@sha256:767f5b56ec472958168555ac7418ebe4cab2cb53154d20ebd0e3c210b2ce69b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9b2fbd3ccd31338eafe04c4ab945a060899595dc6a36d01cc21c28fbb6372c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:42:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:44:18 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:44:18 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:44:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:44:18 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:44:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:44:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d94c7ac295afe9eed28b1b574be15128c28dd54dc7bed83cb158ba1aa4cce6e`  
		Last Modified: Mon, 13 Jul 2026 17:44:34 GMT  
		Size: 245.1 KB (245068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d7d048677a9e309f15f3f0a5e4ac8cb6bd6248d7f3bce4134c428fd02ac61`  
		Last Modified: Mon, 13 Jul 2026 17:42:08 GMT  
		Size: 102.6 MB (102602261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432a04908cced47d53769e460e3c5e6b81a84bcc5ae34241dda1c0d1f2a5242c`  
		Last Modified: Mon, 13 Jul 2026 17:44:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:34b23e5ef8be4a3db87f2f0eaabc4c4c050737bd9280c2628d3f7e26ca0c9521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fe247ac57ffa1cedbc61f639e8d023b0d462f00f785b8a927c741db5662ba6e`

```dockerfile
```

-	Layers:
	-	`sha256:51ab64cb8a956913264177e62af0ef3886cdd35d5a97ee4e83a96b85ed474411`  
		Last Modified: Mon, 13 Jul 2026 17:44:34 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c12e129cbda6702f1471555d5bca404e696f42cba8f9ffdaa58c84224c0cd94`  
		Last Modified: Mon, 13 Jul 2026 17:44:35 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:e962b71392b975ddb88f6d9f8ac12c3aacb19e3110c288dfc1a06d1e54369a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102420537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930c026fc1c3daf661a17b1214674a9cbec1c9b2fd99f7c56071a01cffcd947`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:37:37 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:40:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:40:40 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:40:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:40:40 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:40:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:40:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10f0fc7fd9edbbd37ca089a25fa1a8856320a64fa7fa6fcb886b131ac5cdc8e`  
		Last Modified: Mon, 13 Jul 2026 17:40:55 GMT  
		Size: 246.1 KB (246134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e72ca6502141a290d10b5ee2262d155e7faedd9759e3c1e4f4a918d200c4f5`  
		Last Modified: Mon, 13 Jul 2026 17:40:58 GMT  
		Size: 98.6 MB (98620794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3763cf193070c4ef6c606aa4a32b25a3420cbd6966b1897f9cf94b80083b6e7`  
		Last Modified: Mon, 13 Jul 2026 17:40:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:5d55aaac1b9848a4ba7de18b4f233b9ae0ec21097ff118acc7e5354239dc4ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef711dfb792f5cb6a16df642438f264b3ca0869adb79c3c2a730255799893941`

```dockerfile
```

-	Layers:
	-	`sha256:4156d490e6c0e5cda56107225986eaef5031a5c5d3dd5122c0e25bef15a7b867`  
		Last Modified: Mon, 13 Jul 2026 17:40:55 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:8396c40d750da6689e6ed184a5531525dbc96322fb0fa3ea2f315d8fbcb1d5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101825964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e737bc77a400917d94f1727930aeeac8ca26a8e01f3b7816adc12291ac6cfc6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:39:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:43:01 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:43:01 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:43:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:43:01 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:43:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:43:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25dbc17045141bda3a2560ecce1f4e4b8f5de84fcfa86f73883ac6a17b9f433e`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 245.1 KB (245116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45e113ca2e6199a8c4198583f287b92df437e9eebbbfb343c97477f57a0f94d`  
		Last Modified: Mon, 13 Jul 2026 17:41:27 GMT  
		Size: 98.3 MB (98320075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6d4858dde85acbc60aba371044d5f9eea69a164875879bcd5e0b3f10d09de8`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:39ef9a1656347f028093239c3476cbd2fd76f2e95480e388050c24622114d437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf77180098a930920edfa3e6c2eaa6fe06abd9528dc559251e3242880fa71c33`

```dockerfile
```

-	Layers:
	-	`sha256:81e4c1c29ce1a7df17886075eaa757908385792b34fd5dba0d5682f5a38b34cd`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d2f1c6ff17aec62f246163c32642f50fb95c50a53e8b099a4775c39b732032`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a1cb2cc84db48e9f28153a8d1b5c9581189a5514b6838f1fecf3c3041f578ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101412647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8fb5c554f2c6fb5f62227666e73cfb68218693809223c37e1af179cdf8d7ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:40:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:41:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:53 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:53 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2744286d6518d3aa09d4f1cfbb9100eb346e22a26f39153a11ca0d7468b9ca36`  
		Last Modified: Mon, 13 Jul 2026 17:42:12 GMT  
		Size: 247.5 KB (247502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5731a5f94e129c46506b6f51b7f1d416b6d39475c8508894e8e48a8d20505fff`  
		Last Modified: Mon, 13 Jul 2026 17:42:09 GMT  
		Size: 97.0 MB (96981949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb858de74d5e0dc1775e496276c002e8f98e00fe9c1e379eaaab5e775c9c32ba`  
		Last Modified: Mon, 13 Jul 2026 17:42:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:f60b48e5d06c3a8d6e1ddb2160e28c383ed49959b7606e5e24feca3868e21d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9a66385a29e4a532c01bebd9e222031380adeab44dacdef4807d1a1b425498`

```dockerfile
```

-	Layers:
	-	`sha256:a1be881b50d400f8eb16b14dff641db15e56706c159ca6c83891921c4a35efc3`  
		Last Modified: Mon, 13 Jul 2026 17:42:12 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40b0763a53e51a4e11d15820816a3ded62db5d2a36db23d74436b31e2139e25c`  
		Last Modified: Mon, 13 Jul 2026 17:42:12 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:fbddc534cf0381d147a81ac2f3494468c4b6c80ab07375cc64fad90679ff67bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104311304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b2890e7b05f78605d589343ce59ab510012ec22c61b6466b45de69e59b9098`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:38:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:41:20 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:20 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:20 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c835e7279a4117ebc8c0b4309627ab59f41807ec5cb6817f618e79828dbe13`  
		Last Modified: Mon, 13 Jul 2026 17:41:37 GMT  
		Size: 245.6 KB (245603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380b58f291fa5b273e41e2f61343526fcb5023064f6760d0ecb0cd1486c9909e`  
		Last Modified: Mon, 13 Jul 2026 17:41:10 GMT  
		Size: 100.4 MB (100395402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12e54124dd8cfcc57b0c601f967e7aedb840b6a0fb88a8e77f43f6e990d1c12`  
		Last Modified: Mon, 13 Jul 2026 17:41:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:e6c064fa1936b8976042619dbd35b1eb7fc0b8b86d55424e447ccc6858c59348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bbbf403b5cdaf4d6adaaac60eb3fd8478c73b108c109abd272ff037b0a9a58e`

```dockerfile
```

-	Layers:
	-	`sha256:f9b3dad09b0e09bb647153041384e3fbd60c76c1b6c8188fa446ba0696bdca50`  
		Last Modified: Mon, 13 Jul 2026 17:41:37 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:319e9e6cc0bbed04f57e367348d45bdddb3129e8b1d83f5cf15dc167f612dfb4`  
		Last Modified: Mon, 13 Jul 2026 17:41:37 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:4c00a0354c78d4461f49fa82e2222d00840c29f004b932cdd1d470bd6c7d1258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103038053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eabad68bf866d3091057e52205b3451182c760e9134048568064b1d79a5504f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:43:42 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:17 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:46:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:46:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69e5cd9291f73cdfb8a0cc68e49e0664e71ce2e2dca0d970b3b935c603149a9`  
		Last Modified: Tue, 16 Jun 2026 00:44:13 GMT  
		Size: 247.9 KB (247921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ba5e95b6ffee5086f0309826a8282fcab9ba9ae8fcd16a3725ed1ee2dc1cd2`  
		Last Modified: Mon, 13 Jul 2026 17:42:19 GMT  
		Size: 99.0 MB (98976574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99d79cdf5b5a0e1b7a9586497d2188c33930430f5ebc6d58436c9b9b6f552ef`  
		Last Modified: Mon, 13 Jul 2026 17:46:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:77d6e8d7a1e5842d2e7738f38d2c7e8490db52fc34e7f6a69707b9abd934f242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b046cfac7af9ac50acfd14e6ce6dd7c86d8b92395cf3107878c587a4f60239`

```dockerfile
```

-	Layers:
	-	`sha256:7fa96ec1fe072c26a1add1dec6ff6f3406b5eaa3035639df2e6998d1d5af0e26`  
		Last Modified: Mon, 13 Jul 2026 17:46:41 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb8b7b1d3969769a5cea54a0f74cda6be94ab1d2a414ddd4bbb1656571b01e11`  
		Last Modified: Mon, 13 Jul 2026 17:46:40 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:31cc4fc3ea0cffe5cbc8e5c6427aad213739e7cfa70a6499657718542e444243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103732867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cd3455ede62881cf5fa652cd08026668cc8d456e64ba0a0fe7f58e9125d698`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 07:35:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 18:19:54 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 18:19:54 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 18:19:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 18:19:54 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 19:10:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 19:10:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2021d7589f6c18103a6d7e004a2611e54bd2e48edc8f74827e7357bba545c1fe`  
		Last Modified: Thu, 18 Jun 2026 07:38:04 GMT  
		Size: 245.5 KB (245484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac963248d122b41880bd61f87b6cc4fff1e5f3ed11ba87b1f6fcb6da52c784e`  
		Last Modified: Mon, 13 Jul 2026 18:27:00 GMT  
		Size: 99.9 MB (99912866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cb146c7d99ce0fef0c1256109b3f6a87e2ad27132b7d0d951067ee41c6439d`  
		Last Modified: Mon, 13 Jul 2026 19:11:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8f5d15d42e1e915f736caf923e8ef31bab62a93149acfdfa574fb844c58ef3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db45ad8541153ee557d4426c7b9e264b3d6898dd38c4ed6b25f587f419d7c7e`

```dockerfile
```

-	Layers:
	-	`sha256:84dc7a2872aacfb51c8e5f4401ce773aa37e6ff3bb5d70b65c7807ea5edaa197`  
		Last Modified: Mon, 13 Jul 2026 19:11:35 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15deb1245236e1be1f157d94e76a507f103684254b3097e1eebae34627fd46ba`  
		Last Modified: Mon, 13 Jul 2026 19:11:35 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:5835cac876fdefe7cdb203b7087f9faaa869e0f8726db0cb7f78f573f426a9fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104995894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c136126e1e1de6e2f59ffbfbe767736854e5e808766877c2b921087d084c1563`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:34:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:39:52 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:39:52 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:39:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:39:52 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:48:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:48:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27934562c004dfd7686fc4b00831b6ad488f4ca23568ebea342979343f38f29b`  
		Last Modified: Mon, 06 Jul 2026 20:41:52 GMT  
		Size: 246.2 KB (246152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d8998f4596451be5e05276e8f2804dc2705dbebe9a9aee61d0e143808d1960`  
		Last Modified: Mon, 13 Jul 2026 17:40:31 GMT  
		Size: 101.0 MB (101040264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56db94228af6524d791ec82355090266f431f3e1009468a2846cd2d89bd83791`  
		Last Modified: Mon, 13 Jul 2026 17:48:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8f20bd369e73ceba58c257f35ae493f61b86fad42fa1b85596c05d6863fe63d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc29e486d7af53a7d4e012ed2da1445ee372a825462b570bf9b5a2aaa39ab69`

```dockerfile
```

-	Layers:
	-	`sha256:46957c13f6b0138408c904631ac93e7a71ea7a84bb964a226c5d7ac0f03c0685`  
		Last Modified: Mon, 13 Jul 2026 17:48:34 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da344839f1513a92d123deefd13e9d9cd7f886d935b91cedc68075e96497599`  
		Last Modified: Mon, 13 Jul 2026 17:48:34 GMT  
		Size: 24.9 KB (24925 bytes)  
		MIME: application/vnd.in-toto+json
