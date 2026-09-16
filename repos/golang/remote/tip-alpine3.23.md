## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:fe32bb9c9367f69a3559f9a76615aa5b5085f30d7842a79f4f4232f94e3fca55
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
$ docker pull golang@sha256:89ee23134cab4829ac38de9f7de0ad3295b2ba680bc259481605fa4674db0e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109543581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf88da19ab741bd96c7e4c43d9d1eb28f4e9280fe190262b45bc412f217b54fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:34:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:35:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:35:37 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:35:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:35:37 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:35:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:35:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d251a74e20d3533d9459e1128c95e4517b0e4c79cbb99c513135fad2550298b`  
		Last Modified: Tue, 15 Sep 2026 22:35:53 GMT  
		Size: 245.1 KB (245054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1db02af440c431eaa2a6ac22350f16d3bcd208c34ca39d479533573dd39e74`  
		Last Modified: Tue, 15 Sep 2026 22:35:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9c3e704a7b9ddff32da84e657a5015e6d5fd12e8ef601784bb3ad6277aa54e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9fe18c78650071d4f2065249e462ea8f933ca38050cb2406e33e22f22bbcfa`

```dockerfile
```

-	Layers:
	-	`sha256:893db24e307d4cbe7c528c5d65a5b1507b5b0e9b81131280fb447e0bf59c6f9c`  
		Last Modified: Tue, 15 Sep 2026 22:35:53 GMT  
		Size: 177.6 KB (177607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ee81354cf7482a35628503642acb556ee3bb6e307eea07dc8c1ef9ad42b0c3a`  
		Last Modified: Tue, 15 Sep 2026 22:35:53 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:3b3ed7b30fdd193384c36ad5668cd0cd5fbb5368fbd23dcde4ed2aa1a7cddacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105448097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5838ac547da31c7dfab1fff6ad767a6996165b89f6d11fb831872403ccca10`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:26:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:28:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:28:16 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:28:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:28:16 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:28:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:28:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd52704ca4171492fa028cc29b209017a154c478a5195cff929079869f9c2953`  
		Last Modified: Tue, 15 Sep 2026 22:28:31 GMT  
		Size: 246.1 KB (246149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb9508dd029c503a81a8bd52b79a32b5213c3ae31081f2fd0601d9e9ccd2b75`  
		Last Modified: Tue, 15 Sep 2026 22:27:50 GMT  
		Size: 101.6 MB (101649194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7050a99fc8715e2a236c9dfee406d0c402c3137420fec33fe48856e9b3f3820e`  
		Last Modified: Tue, 15 Sep 2026 22:28:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ee8e1355b095359ae571f7718ba47ae61f83a234c816aa39def73374af186090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffff02aeca2f754bd79334959ce83ca49974e82b840ada460b15d38aa830181e`

```dockerfile
```

-	Layers:
	-	`sha256:55dad3dffec76bcecaae090a09d94675168fff12d5edb9e93e02a5eebcd1b73a`  
		Last Modified: Tue, 15 Sep 2026 22:28:31 GMT  
		Size: 24.4 KB (24364 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:b3d13b1d9a9019c90ddd0d5f173d38cdb0a5073bc898d2dd96ae61bb66c32c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104831913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db757747e5d902bf0e795f502224c9c387c838724b37578fee267d6823510451`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:45:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:47:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:47:16 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:47:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:47:16 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:47:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:47:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3d3ab22d5618b0af91cd70ee783bb29639210192d4d2c15c12d775ade9fb77`  
		Last Modified: Tue, 15 Sep 2026 22:47:35 GMT  
		Size: 245.1 KB (245136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fe3dfa532dd2fac72592be2ae894d3987725d23b54023c8287c2b5a6e61359`  
		Last Modified: Tue, 15 Sep 2026 22:47:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:1bb0ec8710e0b11b2d1715d17ef54f79f19216bc17f709239867eef54a586828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e83c51f90e1a92492fcbfd112e081d3ee406e463aab3336866bdbe86e263502`

```dockerfile
```

-	Layers:
	-	`sha256:a90d895ef8fe57938d36090f1f634ef3066e02975f9fb0ae0ad291d03b437304`  
		Last Modified: Tue, 15 Sep 2026 22:47:36 GMT  
		Size: 177.0 KB (176959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faff24e0ade454cc1af6eb492a978b03c5a7d5f3c042108df8f4715c5f54abad`  
		Last Modified: Tue, 15 Sep 2026 22:47:35 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:41c9751894e2970928cd257590cc97b23882201eb5d13c8769c92a2ad4bb622d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104210309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588521243c669ca450f14d2633b834e6db4aeddde5edb93fbb3132dfb09f357e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:22:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:23:40 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:40 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:40 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48fb384786cf94969e2241eec5c0f6a77da3ba9cf26d267bc00f907d4414784`  
		Last Modified: Tue, 15 Sep 2026 22:23:58 GMT  
		Size: 247.5 KB (247501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b610d61c706890901e260f0672690e6d7262895a903884ccacd64ef546e6b023`  
		Last Modified: Tue, 15 Sep 2026 22:23:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:0a9a4aa5867f0cd2cb003bfef90da03af4f96caa9835a3498b9c93b062e7ab3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 KB (201590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aec3a9422882a95e9ba291cac5f354e1830bec1666ca22ba694f480997d1b11`

```dockerfile
```

-	Layers:
	-	`sha256:a4f77302f6fba83f59330af3bc06ad2cf6770bb28eddeae8ad61f648bfc365b1`  
		Last Modified: Tue, 15 Sep 2026 22:23:58 GMT  
		Size: 177.0 KB (176989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db6135c317c7610f9687a527bf26c13cb439173f999fa7b604b86e82331bd3bf`  
		Last Modified: Tue, 15 Sep 2026 22:23:58 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:33923949963f3d9755893a53a7a51c3c551005a030ad4d4c24afb1a7b3640850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107289165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675efe2b0814daec068a9b5fe7fde556f30e13e9b93677ed7deedf66ec29933d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:21:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:23:27 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:27 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:27 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ffbb9ea1c1deba166d4cb14e927e731cd8be7423057fdc758d56c84306e37d`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 245.6 KB (245574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc7f98fe858bc31766be80f86ba585b732558367b907e47f1f49b435e6a8319`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4c41f09dcb308a84055c1e7dcc84b1ef5d06fe26ab4c8253911ab09098eb2515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef54b9ae267c55d999871e006efe53448c85e82903342ddf49ce0c402f51dda9`

```dockerfile
```

-	Layers:
	-	`sha256:1c32c37938952e36bb3ede544362d04bd8240f76af000bca3753641cc6c00b57`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fd718fc1163a6367637337cd0f90566f6778bdc8603078649612078b2b0e4ad`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:5a342e53d9f7301a86d78b139e795de3c38ff39f50b6656affbbdd829a709a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106054002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f087a4e78db7a00f0f37a3faa87397e411a0828e01b365219149e1c7892b50b7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOPATH=/go
# Wed, 16 Sep 2026 02:38:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 02:38:44 GMT
COPY /target/ / # buildkit
# Wed, 16 Sep 2026 02:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 16 Sep 2026 02:48:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c573765b09b24aca0c81a2ec6fd7fd55ac09922a693c253d9ed444b9e8b24cf5`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 247.9 KB (247909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ceb2c9618f01c240dc561b5c26ab7c2feab790a9451333a05b4a24f478c5ec`  
		Last Modified: Wed, 16 Sep 2026 02:40:01 GMT  
		Size: 102.0 MB (101993636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a695e6220c267cdbfed7514aa31b2d2ec01aaff942ec350c9fb8983903a239`  
		Last Modified: Wed, 16 Sep 2026 02:48:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b6dbd5d53280ce1f16685d2a39e68710f1b94a5c3e2a82c9172acced50e0ea21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e8ae83abffc764960fbb228130f9c3bf28f6164fefeff475e5cc53a1d4d053`

```dockerfile
```

-	Layers:
	-	`sha256:e3bd0a58389d9201d6b4555e0691f4947f1c9a488ff16bca1b62bec74a937a7b`  
		Last Modified: Wed, 16 Sep 2026 02:48:21 GMT  
		Size: 177.0 KB (176996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06baa49d8bb39d0f90336a45b83a6327a67f8ec96148b4f38e13976b4c6b31c`  
		Last Modified: Wed, 16 Sep 2026 02:48:21 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:ecb28d50f329ba71b85fc2c1414ab34007287dd398aae1bb5d1822bfdf43235f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107772192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266849b71699ec994682c4e5f404b8b9a13a7eb2220eb937cdd52fee8cb85b81`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 23:02:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 23:02:07 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 23:02:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 23:02:07 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 23:02:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 23:02:26 GMT
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
	-	`sha256:d95d3f110433c8b4d3147c53b9cb531fc5e83ffb0a235d18df5923510b3f9aa9`  
		Last Modified: Tue, 08 Sep 2026 23:05:44 GMT  
		Size: 104.0 MB (103953314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce6e24317a8ff0c9b0d70d23e7445572a663be320c754c45de3042a8a170eb0`  
		Last Modified: Tue, 08 Sep 2026 23:05:29 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9c5e9a968b204d8c2e200179ee934d7e61bfd898c6350488d52e76172ed25d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1139ecaa090f260d6a987e41408bfbe43efc3a9b862217c7e25843aae85ba5b5`

```dockerfile
```

-	Layers:
	-	`sha256:c7e1908cdf85261c40e35ddfb5e0656aa6923812948b9fc766d3df762cf6f636`  
		Last Modified: Tue, 08 Sep 2026 23:05:29 GMT  
		Size: 177.0 KB (176992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff96b4135016b3930fa43089b9f3c95f48329e66660f230d24471943227fc2d7`  
		Last Modified: Tue, 08 Sep 2026 23:05:29 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:2cb67decedc99c5b6bb0fedf6ed7396d0b4083a685ef142780c6d8e9086cd1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109235306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d7374a7ac83b7afdd041620bc9745fd1172804779ef78923abc8181d76ba7e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:08:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:08:21 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:32:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:32:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3710e0868e52965c92e51695026c829a917fe06c1a1181ca4b32ad3ff6de5a`  
		Last Modified: Tue, 01 Sep 2026 23:25:51 GMT  
		Size: 246.1 KB (246141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cf706a32919aca7b61ca98611a2df2887125374161a1b8b1b5cfb7fd6fb8cf`  
		Last Modified: Mon, 31 Aug 2026 19:07:59 GMT  
		Size: 105.3 MB (105281758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33f2c26d12513b0e14e5c1073f504c90a7966ccfb6a8975a9d81d914274f9c1`  
		Last Modified: Tue, 01 Sep 2026 23:33:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9effa0a3aa4aba53d9a4bb4170a24c034e779a3d4ad05099816716d0171f313e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444736ca98c4204e0919fe419a52969d322c360dda2dfc3ecef365e29c28c4a0`

```dockerfile
```

-	Layers:
	-	`sha256:74f8a187c987aa0e42f8fc22aa1a2466795a18f3921bcbe98eb98f49bc583642`  
		Last Modified: Tue, 01 Sep 2026 23:33:11 GMT  
		Size: 177.7 KB (177704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960e49bc30ed88b338ca725130088e586f95cd9f8e868f71d802838039a3caf3`  
		Last Modified: Tue, 01 Sep 2026 23:33:12 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
