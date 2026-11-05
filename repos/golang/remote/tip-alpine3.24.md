## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:d658d63f8d00c600ee4bbd649ff13527043ddc9953cc622db457c764c9c1afdd
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
$ docker pull golang@sha256:518195c7aa43ad5d08e677172adc082911b4a4f7da22f98c8a80059d0c19fcff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108487412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c8940fe6a9bbd83d93586d228e0eed2fa513dd93f64624a0c01556d8796dd2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:56:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:56:57 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:56:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:57 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e75196e9b89f1b0c1a81508487bd81c44d7695789b4ad35af0e8fbfcd79215`  
		Last Modified: Tue, 03 Nov 2026 00:57:15 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7270331e0f6129a908242fbf506601976a40dc69fe5edecb3c556149f62cd169`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1485cf7492e69bba858391fd66ff15e26faf604cc69e6e038dd3c15049af269d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 KB (202687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b799b9384f19087c6bf30880a015744069217d185b7c010b73c5f55658af4d43`

```dockerfile
```

-	Layers:
	-	`sha256:9942438bbb1d749515e74f9cb520b890012b5721df30671ee153fed19d024db3`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 177.6 KB (177589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:340d2ce54ffe28272502be5fb7427ef76ca99dba54c093ace8f3e241b85025ec`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:ca0b12ac1d90380cbd2a14203228bb422d7cdbf00a3f89ab21c9ed2b6e84169e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104488497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857b5919d3ed3fbf9651955a613aab3adb565be7fa59d26ca90d7abadd21b7bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:57:08 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:08 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:08 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cc76014255f2011248aab54c3d8f4ded468b3ec6e7d68c2c32cbe255029ebb`  
		Last Modified: Tue, 03 Nov 2026 00:57:23 GMT  
		Size: 245.6 KB (245574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a67d7d26eb7e5961f4eb4a8108dd7d456201e3f1d89c50cf33abb4ff901e22`  
		Last Modified: Tue, 03 Nov 2026 00:57:25 GMT  
		Size: 100.7 MB (100684473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a7f92d94034e95659aca2b22143479a78e4f75c27e53aa585d29cfd8bc152`  
		Last Modified: Tue, 03 Nov 2026 00:57:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:25baf34962ffc4c5f7d9e9028697c1199b163c41678c82734dc8733b638e2efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e1b173a277aed499f2f87504190330046d9ac3a607559656e62a6d6b3692c7`

```dockerfile
```

-	Layers:
	-	`sha256:fc0533e98b9ae5a13ff9fd8dff4cfcab45fa262ae37d7a48f8ee4122087c47ec`  
		Last Modified: Tue, 03 Nov 2026 00:57:23 GMT  
		Size: 25.0 KB (25011 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:790daa280bd55b174cd228816dad2f3ca54791ff8e23f54b1dc658316c28a9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103867528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06c65c4ed28f1b364c82c24efa20941304b08db8a634d7a36999f5980edd5b5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:57:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:22 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:22 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e4d58e204c8a95989d5fc78e8c390e04fe5489be8000fd0ac30b6c1b8bd51c`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 244.5 KB (244523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094a73e0b0d44f9d5a0f618f4f023f1ea28302b059a483f9fa7f3c360cca7685`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:103f67f05ddc35781b3f4c0e483338308b29f949b631a63a9fa5454a4ef20588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283b008327db8e537817fc8ca4bb58f6285b3de9aee85bf33ca4187eea53e88d`

```dockerfile
```

-	Layers:
	-	`sha256:dbb6e1ac9ae28274f52e8cbf30d002f9db930976a111f71f84d4359b80021cc7`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 177.0 KB (176957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89bf9c91b891f8ec0479456db095a781a89bb709949a534bb36e4dce42fd5ac4`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:004085d54bf7025c7cc1aa3878d1ff134a96a8cfa7cbdb851654fb5a34cbfd74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103308170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6156679aa17114183500ea44b64902bcc496ee2911a1b8c718e09b2f8b272b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:56:51 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:56:51 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:56:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:51 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:56:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:56:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032ce81d9991e6110ef15226a56ef6b9e4fa05c291c916b10cbe4e37eecf5cef`  
		Last Modified: Tue, 03 Nov 2026 00:57:10 GMT  
		Size: 246.9 KB (246935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c1e49eb39018a9574d8c5457f09eaf125fa0a9c1a63417d9c0260ce991db28`  
		Last Modified: Tue, 03 Nov 2026 00:57:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:c279dab441465ec29db24467a3ebfc90e0cc89e17170065d5a60a5f1ef829f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6d9d8da4bbcbd1a619b167e906cffe0ba81f7cb367e48536b8a8be4386f1d8`

```dockerfile
```

-	Layers:
	-	`sha256:091a28e0d66cfa32e45accfc360ecb161ae88268a19d8b6af974c4d90ab3918d`  
		Last Modified: Tue, 03 Nov 2026 00:57:10 GMT  
		Size: 177.0 KB (176995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4909411800038052e9faf1fcda3dcf72f08472e93d920116c5f42c2fc2f6a6a1`  
		Last Modified: Tue, 03 Nov 2026 00:57:10 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:48851702414a4ad26f0afac949fb890fe9629d8cbba44c32ed8c641f737ba0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106151462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb5591f4821c8bc091b834b686ea3fca2119bd776cb8bab1c6290433a5b9ec1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:48:12 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:48:12 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:48:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:48:12 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61589ff994b5d4ce279869b4e923ec5c6ef04509d8394fa87215a228281f83c`  
		Last Modified: Thu, 05 Nov 2026 18:31:58 GMT  
		Size: 245.0 KB (245005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137e353428b54ea84e71391a6125ca11796b728e0ccfb8b02cf7d2e507391609`  
		Last Modified: Thu, 05 Nov 2026 18:48:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:5dac48b59372c287679d89e648c9d2ef2a2f69b997166e75e4ce99c4b54c4a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e069afd3e90a3ebadbcaef122effc4feb4ffcb68e924dd4f3feab89a224adae3`

```dockerfile
```

-	Layers:
	-	`sha256:7b66207f0eaece48f4e980a45a1d49b51cb7eb6f725e316fc415ac6edc6ea68e`  
		Last Modified: Thu, 05 Nov 2026 18:48:30 GMT  
		Size: 177.5 KB (177546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a968c431bb0d4db16c079657f090478e87f5eecdd18348d61731193f1ba99187`  
		Last Modified: Thu, 05 Nov 2026 18:48:30 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:9e5da5e27f458671b1278bf8f7b623b553373727b47cf81cb3ffc737b0e5c894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105158529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fc525f62fc7dd4877e2a219147e85b0400173e5167fbf155c03f27c143d5c1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 01:30:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:28:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:28:50 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:33:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:33:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e011c4cc9ed27515e4e2174b2b8deb15baf200510255741fb8be2770dbabf29f`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 247.4 KB (247368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb982b356b87d80bb7f1d8c2c33f7bc1ec026469cef4eb9595fff52794f2b6d4`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 101.1 MB (101090181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef33006be33fbbb719706bde404c8d4035fb26ecda57dbf43e5bfebda83558e`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:225840c1fe31225bf3e57772122f48dbbbb1508fc682e5cf36691459c2513395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2fed52aa22134300eb12d3e4e74dba53b95e94ed2fb57909fc59cd216fc117c`

```dockerfile
```

-	Layers:
	-	`sha256:31ecb0718b021dc03b5d845f927c4b8a026c293e49c518a54027c5349d741a52`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 177.0 KB (176990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7820f94aac33614a5606b146dd69a6e85688c8168b0e9feb74c6b95575f79dc8`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:905b3b842e62aba6ea8df22256c0ff982aa5f2f1fb2dc3a7f1fb5e5e366503f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105183919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945cd96256e08164a6edfd512d92a1e9c5eb1e0525320dfe62643139f5de6048`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 10:00:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 10:00:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e4498b940a866146fd8b53dbfbd974e69ab4eb02ccdb3d511e9a22461cba85`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:9207bb5f747eaa28711d3b6b7989bf32b621097c941fffc8331321dd3a9894d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e913267ae72c1394f9b20d167298a051306ea62e98300ccf6381c27e3100468a`

```dockerfile
```

-	Layers:
	-	`sha256:ff74cb03d9cd2be070204622ac6de0a69a221495e1a92001c453f5a8bca5c716`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 177.0 KB (176986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26085821b2c19435d27cb8151e8a9088cb49a89f27dfd675132e3382b857083d`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 25.2 KB (25155 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:969ffb9d23c90c3fb741b14f4ed6a01f2dd42ddbd907f7d9a74d0d6b747e693a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107014321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5c4f0836d16f1b3b85ff80b0eb42d82e9870f5553ad146be5792cefde23dac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 01:01:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:04:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:04:09 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:04:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:04:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9745729124f24e49808f5ee5a6669f35d5ce788cd68ae12a39b4751bc6f5bb`  
		Last Modified: Tue, 03 Nov 2026 01:04:37 GMT  
		Size: 245.6 KB (245582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ce80c322577cbabbedd50927ea6355481abc36458b7d6b30272314b5201096`  
		Last Modified: Tue, 03 Nov 2026 01:04:12 GMT  
		Size: 103.0 MB (103048871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64592d6b2ea888d7b5434045f922558608abb27ae559c0a28cf6dd3e7d44599`  
		Last Modified: Tue, 03 Nov 2026 01:04:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8eb31422fb8ec92b55c4b71aa15f76b16daa787fa799a4800e32500643ab4477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871b570befbf6679370166724e84250055c1042ea88213fae35c328ab5a15491`

```dockerfile
```

-	Layers:
	-	`sha256:271432126a062670312907038c860810a926f39c19bd3663e4628d9aaeeccff1`  
		Last Modified: Tue, 03 Nov 2026 01:04:37 GMT  
		Size: 176.9 KB (176938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291e3402dcd5f42d96701fee6374ee6a0606ba4725663f3240882b48f2f47f1d`  
		Last Modified: Tue, 03 Nov 2026 01:04:37 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json
