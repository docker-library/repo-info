## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:eee69dea33ef3094e3f8a14a7648e413325c59d105bd5f919e1a893eae285eff
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
$ docker pull golang@sha256:ab8147225bfd3050333520807d2618e2019e6b33dbcd07a6a1dd8182bd3892bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106278948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4695a2d2734f0edf32109de9d2cd09c2b4b97389e9b6ae2bb8dacb9ca7da5bff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:10:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:12:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:33 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:33 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:12:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:12:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d3a0e87036c456f35f6592a558752b5889a7c52d4784513e2b0c148ec74840`  
		Last Modified: Wed, 19 Aug 2026 18:12:51 GMT  
		Size: 245.1 KB (245060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8ca402db4de09068729a951ea2c5b059e511081a67af439ed623391cf2af25`  
		Last Modified: Wed, 19 Aug 2026 18:12:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:630bc16e46a89cd2c9aec322c216e5eae182a79a4c2033b772df217d8121c7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63679d2590cc8cb9563445ca210c39276f70810da00ce05f7bdceaa8629d98fd`

```dockerfile
```

-	Layers:
	-	`sha256:4786edaca879ea3453bd67acdb71b40e5e03c2da84fb9c311c97e68bae244380`  
		Last Modified: Wed, 19 Aug 2026 18:12:51 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85d32677611c1a9da65e70a2054ae63d19d5aaaadebf61c4d4908b817ddef58`  
		Last Modified: Wed, 19 Aug 2026 18:12:51 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:8d852ca8396381f2467a47e6dc945d451a1391f939decb8a82944b6446c97f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102367187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d332694fc42a00ee920fb4d9e210966e7051a66e2d7f7c63de319f48fc016737`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:11:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:11:23 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:11:23 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:11:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:11:23 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:14:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:14:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f90db1022dc47e19e08e615407f97e351c0b0bb1666b8fc8b0dc17c113648`  
		Last Modified: Wed, 19 Aug 2026 18:14:14 GMT  
		Size: 246.1 KB (246149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcc62bfbeb36462a50ce5b709d5263ccf49472a53306f8874fd2293a9404bc8`  
		Last Modified: Wed, 19 Aug 2026 00:13:51 GMT  
		Size: 98.6 MB (98568285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddf1b17cf751ee1769405edcf2126c5351bc6bfd89edc82d6e19f63029bef63`  
		Last Modified: Wed, 19 Aug 2026 18:14:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:256d95148ffba02dbad07eda8fb254946f3f359b3ddf8057444258a124fbe9a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a3ad7cf20f37f7463f2e0c45cd282e108473b8987c58e2019ccaef5d9330f9`

```dockerfile
```

-	Layers:
	-	`sha256:5c558667c63e76e1f87b11167e0b78324166285bfd80e3a6da6a680e8b94b670`  
		Last Modified: Wed, 19 Aug 2026 18:14:14 GMT  
		Size: 24.4 KB (24361 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:efd2f1941916451255a9c653b8a6e5b6a41c12c836554f6c7796274e63a7ec1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101755069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f7eba5785ba34dd5c6e0f4189b25092e03a9dc0b9a23376056599e234f1df4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:13:22 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:16:03 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:16:03 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:16:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:16:03 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:16:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:16:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1cd0b3965ccb60f4e5ca074f33f6193ccc5712a99cfee9f0b7c6c1612cda9`  
		Last Modified: Wed, 19 Aug 2026 18:16:21 GMT  
		Size: 245.1 KB (245148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95349d5ccbe536fabb8be8c9e0c68502a467a7b277784137f7d62f13160d890c`  
		Last Modified: Wed, 19 Aug 2026 18:16:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e4f421f3d7da7776330508be982a2ace1b589737ab7c1f06720a7dea9f7e5c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab009d5afe1fdd71c691882add186dd3d36b27fa9c02544f404c380bb230d627`

```dockerfile
```

-	Layers:
	-	`sha256:f4aff28dc79ff7bda5a7164636da1c0e13bfafc0d7ef0831ff57e76f1c087a20`  
		Last Modified: Wed, 19 Aug 2026 18:16:21 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a69d025d23b3877a4bd63c3ebd98edcf9bf63c2d9cc7afc13ab859c8f56cd941`  
		Last Modified: Wed, 19 Aug 2026 18:16:21 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:3c295f127208527c469315cb43d693aa469196c3cf8b20faac90688362f24e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101117015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64d40993932281a19740b14b9ba47482280c38581af8bf0bbbc476f9706314e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:11:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:12:55 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:55 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:55 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:12:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927ce6844f78d7b362f7afc3f31d6c572293da7fa4e1b61836f5caed0a1ed656`  
		Last Modified: Wed, 19 Aug 2026 18:13:14 GMT  
		Size: 247.5 KB (247495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af673b01d0c913cde1b79c43db13bc77a979b2574d62ec47808e4869fc0a009d`  
		Last Modified: Wed, 19 Aug 2026 18:13:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:850a51b2d36dc029ed1c11d9cff805a7d8b62ed09b88132ad7ff086968be69bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556a31917c5b5cbea8753c72ee3ee5d4ba79f1869c93771c1a746413216659a9`

```dockerfile
```

-	Layers:
	-	`sha256:0ce729108aaa569540bec2730b509c32560249bed1bb89881ac2a6c577d21bfd`  
		Last Modified: Wed, 19 Aug 2026 18:13:14 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3612b759fcdb8c8e6fe90962d7c28a3d3d43d047427c444838fbe82d1800ee4`  
		Last Modified: Wed, 19 Aug 2026 18:13:14 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:a13495c4c91f8c83c5a291b2bc33a413b6b8120e273f8e0a980cfbae7f776c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104247162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14cc9a93368ace0bab6cf7f7ab570443d300e790ce4ef5c3264a2155e3f2091`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:13:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:12:27 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:27 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:27 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:15:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:15:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b52f5403ca52797409b753587bb8ecd95e9f8219f639b8e0782b31dfaa2d18`  
		Last Modified: Wed, 19 Aug 2026 18:15:14 GMT  
		Size: 245.6 KB (245582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4a4e2d49611f74324a22ed8cb7acf17e82a080272821597b185dc43b59854e`  
		Last Modified: Wed, 19 Aug 2026 18:15:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:c069735aa3dcccbb727ca5a5e057b01a6e8d1f16eaea09f6d0e8633e74d8b40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cfdd4445a551bcf267b4ebf4c64916e21e73ff7c2b3327115443ed743dd65b8`

```dockerfile
```

-	Layers:
	-	`sha256:7a05034e97bc3279e94b8b3cfb789b8090d2de0011f7e8ca9df29997b54209ec`  
		Last Modified: Wed, 19 Aug 2026 18:15:14 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91bf2194ad2b736c4fca517520aaa964cfe5c66b007b1d4778a20af931680152`  
		Last Modified: Wed, 19 Aug 2026 18:15:13 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:e9238dada0f22b5132b17ba095b7ea9c3adfdb2c86d2f5a345a55758b5a6ca21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102876644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca402c9e2b5932f3365ca83d350c2bf409e729592ba00e0acd533027ab4ddf2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:02:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:42:31 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:42:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:42:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3fdebc3880a6ca4e4240e4a44735908e5c9b29d5f1a04a87c1a5871366741a`  
		Last Modified: Wed, 05 Aug 2026 16:03:09 GMT  
		Size: 247.9 KB (247915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d95ff9656836b4d4f9ed4e91f0626382d9c4c4ab41dde220889f5b92f87744`  
		Last Modified: Mon, 10 Aug 2026 23:43:24 GMT  
		Size: 98.8 MB (98816272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75338da31ac7324fcd0e828455976c5a1aeeb973843e17ed1b3e9397ba302170`  
		Last Modified: Mon, 10 Aug 2026 23:43:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:09377616ff181d3e7595ce9ab6b4b8175221c2a5de8df51c57ff82a3fd73a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43756bdba00242bd94f0cc83ae79a47feddf72b38866be5319957b1afb70bf43`

```dockerfile
```

-	Layers:
	-	`sha256:09f39a295475cca51c072dfe62c77ca3fa99f303f36b607788037748807de0f4`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27da214d3fcd4a9e14174b5c887afa824f8e94537181814dda414b18b45ed780`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 24.5 KB (24509 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:ffc71513d476e19daa76343f32b42e02269a6fa194ee16bce9b3f9259c2088de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103601739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58c1ea43a8d8a802b7ab919c9bc696f09038bae0230176cc87eef98c4c406bf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 01:38:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 01:38:45 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 02:55:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 02:55:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e37d0b14f752701961821911203ad5187201b24aff2865f93072c9c427a4c`  
		Last Modified: Sun, 16 Aug 2026 13:08:36 GMT  
		Size: 245.5 KB (245482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b66ced02a080459655fe9028bf92837cf230d038730ed43c848544aa262c9c3`  
		Last Modified: Wed, 19 Aug 2026 01:46:04 GMT  
		Size: 99.8 MB (99782858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8040fac80ba8cade6d19fa3ec396dee7829e4440540b7d398c0504279f0c30c0`  
		Last Modified: Wed, 19 Aug 2026 02:56:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4184d7284bbbb2e2c88454d97bdf56234fdffe2206440a9f2973c304e250251c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd5ae5e5ed2fa9c1c38d7f3dea28a2e17b0b2e80fcd84c618bf5a182976e8ee`

```dockerfile
```

-	Layers:
	-	`sha256:b7b9db4e9b7fa4370795403af18ec57e7ddf4c774d2a1dfdade4518c5121bd82`  
		Last Modified: Wed, 19 Aug 2026 02:56:43 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dfc56d5b6d38fa5ad552cda95dc28ed864fe9346ddfe7e9bf1b2fcfc1bfc015`  
		Last Modified: Wed, 19 Aug 2026 02:56:43 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:c394cb427edbc8c3694038c5ccbc463f1962ad135b3925cb95c78268d9b607b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104901625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c0c01b085506e6d7099a23fe01dc9127384ddcab43fccd415a37e2999c1ebd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:13:38 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:38 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:38 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f3b3d53cda7020ea953a95f980e347d64b60b0ae77b704cf1db57a77a04b62`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e711788918c346e1a3f433c8b9817ec45f0192b16aeb86ddced82c503184f525`  
		Last Modified: Wed, 19 Aug 2026 00:13:13 GMT  
		Size: 100.9 MB (100948068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941aacf3f6be2ca60763f0e7152b1f79097d8cda2b242362bd705b86ace8df02`  
		Last Modified: Wed, 19 Aug 2026 00:14:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:f08fbba1107d167dd52b6877aab85ce6ec7bf75f1129d7bede627f31a6203e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff0bc0a2a01799c7e5c1429cceb174b594050dbc82b9811beae25753fe92573`

```dockerfile
```

-	Layers:
	-	`sha256:67a2169a8eb9ed1785ea85e84dd73673e17e9345d7624551cc37803b534ce538`  
		Last Modified: Wed, 19 Aug 2026 18:19:41 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e53a16c5a92d6d8c8422b479d2687d7e0755fa8659645532781b4b5b51555f10`  
		Last Modified: Wed, 19 Aug 2026 18:19:41 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
