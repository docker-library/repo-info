## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:f33da8575c8b494a66bbdfc12e51731763d9119d0dc96245cd207d36338b1ced
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
$ docker pull golang@sha256:4b78940645f5386b3f2877e32be9a870a86d60fbbc95376a2f8b728a1fa80e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109289250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7d68ab91253e594be4a63488d759a3056274ac6986808b24f44c1b8ab84314`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 22:56:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 12 Oct 2026 22:57:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 22:57:32 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 22:57:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:57:32 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 22:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 22:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd297d99e1260cf9cec99f5bf535e9b20568d4879740ad9dfabe58f489e14c7`  
		Last Modified: Mon, 12 Oct 2026 22:57:50 GMT  
		Size: 247.5 KB (247522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65717b91cdad98d6ed6d8f43d8abd7754dcdfb05ec6c68cf36deb1aae597fdb1`  
		Last Modified: Mon, 12 Oct 2026 22:57:33 GMT  
		Size: 105.2 MB (105193062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b72bd21da6f6bddd5cb6d60a704e7f33b915c4865a84701ace4499bf5307fa6`  
		Last Modified: Mon, 12 Oct 2026 22:57:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e22232ff9e2c90c0e763735be2efa975e25b07c82e47fdecabc0789ab1bde20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42af5ce81eff4f2012da80cf7387cbc42052d3aaf1a629a594bd4a66936a27c`

```dockerfile
```

-	Layers:
	-	`sha256:bec8bc66c0ea8e1e41feb6d8f60dcfd380128f0281ae086934eab5568a122c52`  
		Last Modified: Mon, 12 Oct 2026 22:57:50 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37d79a8cbea07bb686bf33a5501f87d1a1c10f025dbe5b047cf339ce2bda58d3`  
		Last Modified: Mon, 12 Oct 2026 22:57:50 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:0db195d9c7a623001db2bdecb3974b1a1b3322d2b70a4654b1968c891aa5042c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105184069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005b63c8bacc559873035622c38e1813d5fab9e86faa33c4599ba10bee791add`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 23:02:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 12 Oct 2026 23:04:37 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:04:37 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:04:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:04:37 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:04:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:04:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d35124dd593cae47f71565466dbce339202bdb40e7851cfee2636e5e377abe`  
		Last Modified: Mon, 12 Oct 2026 23:04:53 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1b4b46b02c22895c8f4ed970ea325532300d689dd8bba18841d95462874ad`  
		Last Modified: Mon, 12 Oct 2026 23:04:35 GMT  
		Size: 101.4 MB (101380526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a558f076690f452e9a4a2e3f96dac4b013b3e24835984bc9abdd5ce6bc7750`  
		Last Modified: Mon, 12 Oct 2026 23:04:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:93e51668b10efda22d5866d5048d8d6fe3c90927711b6ea9d2556dc9d35cc342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0113c43666003bbc0383ebb8cc5e0c84f8106758e0158e6e481b56e56e065ff9`

```dockerfile
```

-	Layers:
	-	`sha256:ad0e08f5039842bb458a07141b93bfa76686172be9d3c166e3d4463c936ca37b`  
		Last Modified: Mon, 12 Oct 2026 23:04:53 GMT  
		Size: 24.4 KB (24365 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:138866659bb0c81ed0c848925a204875eea625cf24bb5abde8df6497616b284f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104593670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea078766580c49032890fb2f66d3d93b860bd06b9c0a430d681aeb5a5820e81`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 23:03:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 12 Oct 2026 23:05:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:05:32 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:05:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:32 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:05:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:05:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168ea221e00e3ec8692dfb5bb252dd7e6ad81de2316d51844d06a98df10ed4c8`  
		Last Modified: Mon, 12 Oct 2026 23:05:50 GMT  
		Size: 247.6 KB (247566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc87745cdb05c3d59e063baf735960355ce5abd2dd91683f9a6a9eeaf3b0fc73`  
		Last Modified: Mon, 12 Oct 2026 23:05:53 GMT  
		Size: 101.1 MB (101083033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1740470c4bdf0e9756b9ec647cf40a13f90d3906693b17bc5df5524417584ae9`  
		Last Modified: Mon, 12 Oct 2026 23:05:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:5945c72d4f91c58fa66b6ceded62627b97eba79520af1c70e51125ef9e82f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4136011bb15aab38941c2ad186f94c3e640d91e37f683e0862843a950b18dc7b`

```dockerfile
```

-	Layers:
	-	`sha256:f77f97837a30bec07617d75f0825def1441f352beb3b37088a8e7aae0c663346`  
		Last Modified: Mon, 12 Oct 2026 23:05:50 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d5f22f2f51d1a75aea1d1cfd319785da9b1e65d2ecb7edfe35b2ccf0a21691`  
		Last Modified: Mon, 12 Oct 2026 23:05:51 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a987d8b7a25ae5f98060a632850139d7539ee21eee6e0c54b0b2198a6d4f146a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103997451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9802dc9c4503ac1e554ead6a3942a9a86d9c25bb097b5e20406701d819c9bf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 23:05:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 12 Oct 2026 23:06:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:06:43 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:06:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:06:43 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe22c8bcbd655f01b1e1a30060a001e01ea46723750eb4d69afe2773280e9e5`  
		Last Modified: Mon, 12 Oct 2026 23:07:02 GMT  
		Size: 249.8 KB (249844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a6b26d4e0c26f9dbbaa330a0512a75f183e7b29ecbcd724145cc58533764d6`  
		Last Modified: Mon, 12 Oct 2026 23:05:58 GMT  
		Size: 99.6 MB (99561393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796e7b525ad84f013011680efbfb1a3948a3e83298e22721be6acc5a4b44dae3`  
		Last Modified: Mon, 12 Oct 2026 23:07:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:8fe9f32287dd51f0c682b3d582fc0743329be7cd8c0dba3a952fcdd8cf3597d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860b333713351a209bc5c1c82984cb66d4de975b86e598d9d948c8cfec65451f`

```dockerfile
```

-	Layers:
	-	`sha256:ecd18b2a0e8a7b07cdbdf4fda85c21cce242f21afaf426e511d9d01bfc23eddc`  
		Last Modified: Mon, 12 Oct 2026 23:07:02 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e77dba908cd073a4508e290e04986c60d3654f774e4a58149dc05bbbfcef30f`  
		Last Modified: Mon, 12 Oct 2026 23:07:02 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:afd7b91f4b60b73bc0c552319ad5b4b1ca5e90595d01ae2a0d0fb3b9ebb28569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106886542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09a765917c3a4661582925d2912eac3d2f8a19e54fd6ea19a2419b72a7b916c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 23:00:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 12 Oct 2026 23:01:47 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:01:47 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:01:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:01:47 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:01:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:01:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13f5adba4ab667d34c91f817eacab8ddcb79f260f41fc0084866d8aef489833`  
		Last Modified: Mon, 12 Oct 2026 23:02:03 GMT  
		Size: 248.1 KB (248058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb807c52ee12493231d14bc2a22bbd56636bfe01015243adb3e22dee40c0d0c`  
		Last Modified: Mon, 12 Oct 2026 23:02:10 GMT  
		Size: 103.0 MB (102963215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874e901fc4bf6c71495ff63852c6e9edb189bb51bcaf18439cf71cfad04724e2`  
		Last Modified: Mon, 12 Oct 2026 23:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:c7999a6009fe4f99a1cfc2841cf444cc13ac54428a2cba4183690df27b3291ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2385dd110cd09b7d99db12a9abebb96f7310f395d4f1526711419354cb46d8ea`

```dockerfile
```

-	Layers:
	-	`sha256:dd98fb4bb99c9ba4089845070a75b2e69f4fa62cfa6363930e4f631615cc3717`  
		Last Modified: Mon, 12 Oct 2026 23:02:03 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00257b8b45d40e1ee6d20364f486dec5e3c69f65cd4e82ec1c5073393b019cfa`  
		Last Modified: Mon, 12 Oct 2026 23:02:03 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:447ac14d5c53b01845f1dd57b8a95a0eade0f9071d20276d1eaf7346c0b5f82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105833596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851817f8345bea7e882f16518e8b2d539d6c7e5622f0b19cef6aef742f4b6d77`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:15 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 13 Oct 2026 00:54:13 GMT
ENV GOTOOLCHAIN=local
# Tue, 13 Oct 2026 00:54:13 GMT
ENV GOPATH=/go
# Tue, 13 Oct 2026 00:54:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:54:13 GMT
COPY /target/ / # buildkit
# Tue, 13 Oct 2026 00:59:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 13 Oct 2026 00:59:58 GMT
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
	-	`sha256:4b34e883d33722590e15fddfa61da90ec14728b57ee958546f7a00424614c84c`  
		Last Modified: Tue, 13 Oct 2026 00:55:32 GMT  
		Size: 101.8 MB (101768410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03fe61c13ec114f146913ac335362d37abe146a91fd72a708d7fc22d7126328`  
		Last Modified: Tue, 13 Oct 2026 01:00:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a46be78cb07b036e1b6a1d96efd4758ca64da25333953ccd9174c45952580678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762050893a2072fb5744d6b62baa3584c2fbc590c14040b546c406b0371287be`

```dockerfile
```

-	Layers:
	-	`sha256:b132c9b343b9be1b8c9a77faae361704fa063eb3ae6306aed2192de9aa4481a6`  
		Last Modified: Tue, 13 Oct 2026 01:00:13 GMT  
		Size: 178.3 KB (178289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f80604bae58b1062af532f7fcf05b8da9ebd73990ab56a2623fe25b53291f4`  
		Last Modified: Tue, 13 Oct 2026 01:00:13 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:75d8c48ffcded47dccc00c89ea77faa7471ff02162606834a45de0a8ec052e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105971504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497f20802ff61bca2ba7ebc0e9d26826a68d0cfbd20604121fd21432a1966e26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 14 Oct 2026 03:44:12 GMT
ENV GOTOOLCHAIN=local
# Wed, 14 Oct 2026 03:44:12 GMT
ENV GOPATH=/go
# Wed, 14 Oct 2026 03:44:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 03:44:12 GMT
COPY /target/ / # buildkit
# Wed, 14 Oct 2026 04:58:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 14 Oct 2026 04:58:31 GMT
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
	-	`sha256:3f686821d439c90a713f67c450fbd3f02efc57ea0fb9d8422c655741e608f173`  
		Last Modified: Wed, 14 Oct 2026 03:51:38 GMT  
		Size: 102.1 MB (102147070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025c90d97bafa36b5b9e1c088a3d4f9b8ac52827baf4db050109e066fc6f8645`  
		Last Modified: Wed, 14 Oct 2026 04:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:f208d3d2970868f789d04065802c691fc2a7ac7c000d7642ec4202aa5de8547e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb523729791f9e07603ca98fc48800494fc927fca5e32b6c789c34d9c2b6eea2`

```dockerfile
```

-	Layers:
	-	`sha256:33771593282e3ae217d69edfcd63f8d67dbba346850ae27e71e92ce514b97a81`  
		Last Modified: Wed, 14 Oct 2026 04:59:52 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:365d45a172863bae507137c9d41b05b3a62905b3715acc5e1e5cd9ce53a79b4a`  
		Last Modified: Wed, 14 Oct 2026 04:59:52 GMT  
		Size: 23.7 KB (23720 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:4c264915d72ceb24efcaa1a211c868c0bf26cd61c40198dfe29a52169abec56d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107786579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d11ea7316843538fa229c5db1bd6a59ea009b6dedb2144b95e9e20bb5be0651`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 12 Oct 2026 23:07:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:07:43 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:07:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:07:43 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:07:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:07:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43634c453f74eed3f83d5578f4fd982aa592ea1a55a006a5df0f43d5775a88de`  
		Last Modified: Thu, 08 Oct 2026 17:13:13 GMT  
		Size: 248.6 KB (248578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887538aad0ecae41064e3556c7c745b7a16e3a786559b00a5655b81402b10bd7`  
		Last Modified: Mon, 12 Oct 2026 23:08:34 GMT  
		Size: 103.8 MB (103824587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560cf5edda53a0098876cd0f3d1a90ab922f6bc27eeaccbb0ec5a043f09cad02`  
		Last Modified: Mon, 12 Oct 2026 23:08:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9d7ce5e78cb09a57c5637c199ec8e4bde43640e042ad9cd1db5a32aa4ab7f7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d55abfa6b1a1575bac472e9dd39ff19096de8e2cb36649f586411c98a7eee1`

```dockerfile
```

-	Layers:
	-	`sha256:a9484e05815152205d6dedb65a2f99651b233627500546c1faba5d3f29b60ee1`  
		Last Modified: Mon, 12 Oct 2026 23:08:29 GMT  
		Size: 179.0 KB (178997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:962c3eba4d9a28111c386f4b87f801c6eacd5a4c9f3c43403d7c943598361cdf`  
		Last Modified: Mon, 12 Oct 2026 23:08:29 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
