## `golang:tip-20260815-alpine`

```console
$ docker pull golang@sha256:e4d4966eb094103f3bc12313eeb86b8648a4090455ae905743dad12e99d95f30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260815-alpine` - linux; amd64

```console
$ docker pull golang@sha256:c62d67e75643529a1568691e7019953425bdaa8eae5c57aad35c5347b713a85e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106280922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab03fc89740d37efed615ae6f3f9fa414f6d225ddf23c9a8ffc4bff70a9311d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:10:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:12:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:47 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:47 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:12:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:12:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cac997f82ccece3b22fe0bf68b2f21f7d9b3b0ca0b4900d8dd7cdab9d28984`  
		Last Modified: Wed, 19 Aug 2026 18:13:05 GMT  
		Size: 245.1 KB (245066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d4ad265b43af1e869a95fd356b9028b4e5fdda49374a55044e4d1019877216`  
		Last Modified: Wed, 19 Aug 2026 18:13:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:b5ee5abd01ab883f10b66daf0b276226ae82e6f9485b9a590d963f621f2682cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e6a5bbccf8f136e61902c5758feaeb62650c1c51b31592bb7cd79ff4820678`

```dockerfile
```

-	Layers:
	-	`sha256:b95160c1285edba770ce66e4fcecb6e6038fb9906c1c78b19974d4415532291d`  
		Last Modified: Wed, 19 Aug 2026 18:13:05 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b98ed2396f9627caa3cac047e78b6748ae60e9b8176fa2ea1076cdbfda249d19`  
		Last Modified: Wed, 19 Aug 2026 18:13:05 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:9d4f7685f61a75f4403cdc003008b95b7c983eb78e1930b259039704a07cdcc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102368028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeffa3a79742c38fbbaca5dfd795f511dc33c97075c9efeb9a6b31987e78ba9e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:08:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:11:23 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:11:23 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:11:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:11:23 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:11:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:11:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9a27438929582e4d3aaf1d8bef5e966b81d069b9c0f6d77dc2baa2687e52a7`  
		Last Modified: Wed, 19 Aug 2026 18:11:38 GMT  
		Size: 246.1 KB (246135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcc62bfbeb36462a50ce5b709d5263ccf49472a53306f8874fd2293a9404bc8`  
		Last Modified: Wed, 19 Aug 2026 00:13:51 GMT  
		Size: 98.6 MB (98568285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662140f3c81aa50655b70adf1f5bd87613ec9dbbeebafecedcc58b7a6e3dc41b`  
		Last Modified: Wed, 19 Aug 2026 18:11:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:fc9ad23e82e7f92ae86a4268addc5754c0556c8150bf19d2acb0c4fceeda4291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a910a271c0367979fd8d17c7373bb48bf175fda89289656095968989207f3a91`

```dockerfile
```

-	Layers:
	-	`sha256:93ac4778937f3cdc3423b56b36cb5047547493d80cd099f24d1142994472d9dd`  
		Last Modified: Wed, 19 Aug 2026 18:11:38 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1890f412b06b764140a6f9f4fda2ec7533fa0d5922c802bebb273f16d9b7657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101753800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f55ee001df8d4576f89996fe57012c8ef0d924f1b0ee41266fb27dfdf6ef27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:13:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:15:46 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:15:46 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:15:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:15:46 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:15:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:15:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42515f3f3ea2bf2ab2478a18602a88ebdc4564a1af6881cf286166fbb672d320`  
		Last Modified: Wed, 19 Aug 2026 18:16:05 GMT  
		Size: 245.1 KB (245118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0b6ca4ac0cfb08b10300db911020163f9136bcf2fb19a7e0a5b44120748826`  
		Last Modified: Wed, 19 Aug 2026 18:16:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9e0933216620f3ab8ce98c9c7ccec44911807eed3ecf6589cc3b1c78d6ef3a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b66651e15e6553a6d064772369e2ae80398bb9e0a3c8440b465f03924d2ba9`

```dockerfile
```

-	Layers:
	-	`sha256:717e86ab5177bb15ab1a13425aa9738e6bce160fd1fd6138908dc182e9db1e3e`  
		Last Modified: Wed, 19 Aug 2026 18:16:05 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2b9579cedfd59393379b35709884d4d7f2f1e0f3351b261c69cf280d925b07b`  
		Last Modified: Wed, 19 Aug 2026 18:16:05 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:21ff1971355c7b674b64e36df99aa040c7cf27c16695c132951670c4583ab533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101118197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b6d72a04369260b1e1f110559bf491cd765833b950386bf56791234b13a7cb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:10:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:12:18 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:18 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:18 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:12:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:12:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3250e1a9fd0615d30b9cf47bf6aaef3ecb487edeabc31ddb2f4dd4d8676bbfc`  
		Last Modified: Wed, 19 Aug 2026 18:12:36 GMT  
		Size: 247.5 KB (247500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44c6c858a1191fe5917d5c331630e1953b0b163c779487fa011d4fa4dc76870`  
		Last Modified: Wed, 19 Aug 2026 18:12:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d55749e1ebdc357d950d022b1183f0c9e62de1175d2a459994417e188c9f7653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a2b6555c00a087e871b029e0030919128d5fb460d39ff82f0044cb9b589256`

```dockerfile
```

-	Layers:
	-	`sha256:9b6947ad8a31b8fc1a47b9bc7eaaff00cfcdd763f9fadffe267e1e7ac8ff40de`  
		Last Modified: Wed, 19 Aug 2026 18:12:36 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:583ca4e26e2db62ea1a53818789cec39c5b4d03296426576697d01aaef592dce`  
		Last Modified: Wed, 19 Aug 2026 18:12:36 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; 386

```console
$ docker pull golang@sha256:ab19984cef04c06118e3df9d4a74a7ddfdcd452fc84573790dcbae494b7f877d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104249327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00f8166cb6e2314e423cbfd3da7e65a5831733312fe457debf5b838d03167f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:11:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:13:20 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:13:20 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:13:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:13:20 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:13:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:13:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d83095fa4577a50246004a97e96e89270dbdc74a3009d270cd182b6e53ab328`  
		Last Modified: Wed, 19 Aug 2026 18:13:37 GMT  
		Size: 245.6 KB (245596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67603e1ed0bbd4980447af29e0b83a25ab95175b345248f06ba5ce999e7c8079`  
		Last Modified: Wed, 19 Aug 2026 18:13:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4ae05c4711b43629a9a9ec7f742c857fcc75b19d6bb6378c200be316902d7d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18f6a7304b72fdfab59b4c5efc076692a83e66cfafb880bfed823b4af37098d`

```dockerfile
```

-	Layers:
	-	`sha256:fb4e12666671629c16d495201272e0f20021b973ca91e5171d16da7f0933e9f5`  
		Last Modified: Wed, 19 Aug 2026 18:13:37 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b0eb885a6f7a67c0fd117bc801285954588e263e8d68882ff64ca4746067979`  
		Last Modified: Wed, 19 Aug 2026 18:13:37 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:30217ef7eef83169b1acfc8d1dc60e38e073bb1c61a357a3b196a18994ae269e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103602872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680e79ccb3f82f9d0c218d05a9a4c27db0d0b0e1e4c4f213790e2dc7d798004a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 01:38:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 01:38:45 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 02:20:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 02:20:21 GMT
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
	-	`sha256:8b66ced02a080459655fe9028bf92837cf230d038730ed43c848544aa262c9c3`  
		Last Modified: Wed, 19 Aug 2026 01:46:04 GMT  
		Size: 99.8 MB (99782858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297f7baea542cb0f1a174829815723cd73b1882f38a941d85491e8d8fa41c804`  
		Last Modified: Wed, 19 Aug 2026 02:21:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:f8049471d381e5300190fe629196a4f4657c5f9cb585bde0a624df22a600b851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb40ba31a00a93dd5616a7f5fdeff027de524ac66420231b059c4c8bf00ad16`

```dockerfile
```

-	Layers:
	-	`sha256:4b6b44fdb73bca14e87403b6d946d8747b9045119dc3d21fc091691f66ec8b6b`  
		Last Modified: Wed, 19 Aug 2026 02:21:37 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f972a0461e87745fe261b87a7120790246e956c0ccbb5e0194bdae0f0a84ba3d`  
		Last Modified: Wed, 19 Aug 2026 02:21:37 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; s390x

```console
$ docker pull golang@sha256:fd2515375fe74f53dd9e76eac07c93fcba50a884464bedfad7326093f15d10da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104903693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b6e89b087ba0360a7d2885097f75ff3fd5f24567959a033f25fc9abc5e0bfa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:57 GMT
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
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289b5e867dee8258d2bc7ee83bccbf1005763af2a8e03ba1284bdfe16b0745c2`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246146 bytes)  
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

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:588faf42c57f4262e1a4d2ff18755f4df34bdd6376786da6e63d002e7e129962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d481e4a03a68f4d2400d3a794f81d694b3fcc99aeb3ce45d4254d891bbb5fa8`

```dockerfile
```

-	Layers:
	-	`sha256:b8737cb322946cb0a123b2d2eeec35dfbd7e43bfaf15b50eab7ccc0f6ca61ff6`  
		Last Modified: Wed, 19 Aug 2026 18:19:41 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6477363295fee1392ec5752a62e14a995345a91285751ed9fab1b14edd5e6498`  
		Last Modified: Wed, 19 Aug 2026 18:19:40 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json
