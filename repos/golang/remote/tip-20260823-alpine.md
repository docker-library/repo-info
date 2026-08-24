## `golang:tip-20260823-alpine`

```console
$ docker pull golang@sha256:31c1cff740c2620d428879aab7b9a1aade5be5603c3f418d84ea04cc30cc21a9
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260823-alpine` - linux; amd64

```console
$ docker pull golang@sha256:9bbf8b03d91837cd1a2d461a06c355cdf8a8c37f84ed7cfdd9add794ac25e8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106389250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0eca5a623b9d67e67a92c9ea718a0b6cffd250fbdd3cd7b447e9eeece9d08fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:06:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:07:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:45 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:45 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9782579f7add06aa05cf6330e2829c81a946702d82361941ec4527c75192a8e`  
		Last Modified: Mon, 24 Aug 2026 18:08:02 GMT  
		Size: 245.1 KB (245075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5ec76dbd4d404cbaa638424fa28400fa9bc9e560cc28415edde34653affa8`  
		Last Modified: Mon, 24 Aug 2026 18:08:05 GMT  
		Size: 102.3 MB (102297625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2f628f7edee20f7ffc933c6662c8de2d99d1a285fca49176e19785faef6b66`  
		Last Modified: Mon, 24 Aug 2026 18:08:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:6ccc462349bfb780f864a3092dab5789e5964ba8d3e941cc53736a4d6a70009b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c0ee8d043889057549388c8306251e02500df3579aca4f9ace3303f028b0e6`

```dockerfile
```

-	Layers:
	-	`sha256:d6c076b4704f5000c0edb5f35647ba1eb138ef8ccb77f9dd609cc05023e0f959`  
		Last Modified: Mon, 24 Aug 2026 18:08:02 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed5a5fc9538efd369d1944aa212f5975ecc5e69a2bc4360eba75d74202ecba51`  
		Last Modified: Mon, 24 Aug 2026 18:08:02 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:d394ea967900e8e8d6522bb2a77ea0ab40ac555947623e3261583681399c0f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102452247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0845ca173ca97ba99626a662137244337aee3db9890e67bae0414637dcc505`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:08:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:10:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:10:16 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:10:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:10:16 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:10:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:10:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6231a06c68e9ae0a69a43f520d0ec30603a7382dec4700e23b229d9b412b3f4`  
		Last Modified: Mon, 24 Aug 2026 18:10:32 GMT  
		Size: 246.1 KB (246135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618ed23a4f2bd262809e090f42322131386c4c16cfe83154ab0b888b9ff1ce90`  
		Last Modified: Mon, 24 Aug 2026 18:10:35 GMT  
		Size: 98.7 MB (98652503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef90fe94d5b90859827c5377a07ae142f9cad6e9908e10c08b19b65b7604ae6`  
		Last Modified: Mon, 24 Aug 2026 18:10:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:0c2ca509fdb386e0616f7e065afba7e02a51c47d35d282036560fec742746d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b6e15579adbe291f8af95cbd84331ed314c6f49eebe14cc9796a8751dbc70`

```dockerfile
```

-	Layers:
	-	`sha256:960a419b82730640c76ef153d1340c76c8796d517a8fef3507c0049e74d9c0a2`  
		Last Modified: Mon, 24 Aug 2026 18:10:32 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:d796f9611693871964df3ca947a33a036a3a54b50f5da4224d0c462c0a2fd8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101844347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1096e3954919ecdf8bd560c345ded2db13270cadc1e06416f12755f5dd2a70`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:08:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:10:17 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:10:17 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:10:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:10:17 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:10:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:10:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ef2fae7158bd29c5c4cd8ce7e4c2388712bba8a4ceb6705d25bd3b0cef8308`  
		Last Modified: Mon, 24 Aug 2026 18:10:37 GMT  
		Size: 245.1 KB (245121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255779f6f088311aa395ef24afc4b95b730438cebd6e48b859df371384a6824`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 98.3 MB (98338452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92901fb78d259bb292e07fcbcb8422a586666530080d5ef482d97fbc87171914`  
		Last Modified: Mon, 24 Aug 2026 18:10:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:721777118652474b97e617ab39da2e350d5f305de990f006bd4acafaf5b9bad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ec4b4e0bbf643ef5aa29d04e69cab05255a99157c62a7fcac1f4526a3e34e0`

```dockerfile
```

-	Layers:
	-	`sha256:1bfd7112c40103b803fb42f4b14f6074260fff9f730f2355c577e2e47be33334`  
		Last Modified: Mon, 24 Aug 2026 18:10:37 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98a7e3110397dda9f22fcdae82ad99212e69e8068280b3c9c515462897d86005`  
		Last Modified: Mon, 24 Aug 2026 18:10:36 GMT  
		Size: 25.2 KB (25222 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:1ffb2480def0a33ad2f0f56f453e9bfd6799510f8b68be932abebb4f7714840c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101226699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb741e9cdef6fd839b4d8112d892b762f0183e2fa9d0cd6a53e6631b8069feca`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:05:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:07:19 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:19 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:19 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d89b0165a888c0bf663b4b5b63019c8b78d00e890134f4e2331e0eed0c0fad3`  
		Last Modified: Mon, 24 Aug 2026 18:07:37 GMT  
		Size: 247.5 KB (247495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a1d3b809c5999b3dc7e69208936d8f8330b30050130d366bfa62a4bf5e61d`  
		Last Modified: Mon, 24 Aug 2026 18:07:41 GMT  
		Size: 96.8 MB (96796012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba62c518dd3ea4e17c9c2e551e668fb5c009c445d88029fba0366a73a5e6205`  
		Last Modified: Mon, 24 Aug 2026 18:07:37 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:2be9e9f0e77c0cb71c9c566594d40e5f462ecf0ab17f1e369d1c1467250581dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a965e23cd72e423b1e625f1605390d42ef17475b3bf5745c49b6152d72d000`

```dockerfile
```

-	Layers:
	-	`sha256:4125bf867ad841cfc63317a616638873f42acfe893b54a55fa8e6d9db00ef78b`  
		Last Modified: Mon, 24 Aug 2026 18:07:38 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e12635f0b9a6e0dd60852d1da1c428d3d79ee63a1a743a2f1ea15b7aca0b7188`  
		Last Modified: Mon, 24 Aug 2026 18:07:38 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-alpine` - linux; 386

```console
$ docker pull golang@sha256:4523fdb1ca6b8a0024b5bd3548b2c79e1cb1ce4953f6c7a2a86ad79e82b3f4b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104298103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edc43b2c3aae42c01f7ebf01edc3e3393f052935e1ad207f9aab2a90b18a6f2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 24 Aug 2026 18:08:50 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:10:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:10:31 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:10:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:10:31 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:10:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:10:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea51839bc2fee7b676a101629eb16c70a51d6319281cb22da627e126798a02f8`  
		Last Modified: Mon, 24 Aug 2026 18:10:48 GMT  
		Size: 245.6 KB (245595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a8f36cf8449bb2cfbd44774de054c6e99e0a8aea8bf1245033545b0b380609`  
		Last Modified: Mon, 24 Aug 2026 18:07:27 GMT  
		Size: 100.4 MB (100382211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d260bc19ef03870d784776b6b0276b521e0b604c928d6a47940ea458e77d8771`  
		Last Modified: Mon, 24 Aug 2026 18:10:48 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:59d494a77b58a540750a67e8124acbaff34017bd561ab28e616ded9bcbda9a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115a8315ce071d1168395de8c8ed5a4cb9a8f7164e8395fe3b02e4650030e841`

```dockerfile
```

-	Layers:
	-	`sha256:a23ea2f7d0afd74f849a3d8eac03d2273fb67c9b28171831545a722b5f76a1e2`  
		Last Modified: Mon, 24 Aug 2026 18:10:48 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1fa3969c09c61cc5bdbb977c9e8f391031489bc64e8b8e315d90b3eebcf418`  
		Last Modified: Mon, 24 Aug 2026 18:10:48 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:cd2e9d8a73e10bd00514d012f9e5985dea754a10f73b4ff152a0507eaee84f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103046808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e74233d1a956531403da5dfe7fa13778b54755073d24a2f57fbe3d4dcbce78`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:13:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:13:40 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:18:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:18:18 GMT
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
	-	`sha256:dfcb6e0defe743ac8a5d841ea2eadeae0745aa70db2dbb65ba20339689647f97`  
		Last Modified: Mon, 24 Aug 2026 18:14:47 GMT  
		Size: 99.0 MB (98985330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300712ee26a76adfafe5ec3beab8b17d9c351822d1c1aa06bb4900cff5beb2a4`  
		Last Modified: Mon, 24 Aug 2026 18:18:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:1a338d92be6a530d221ad43b5836ae19499bbacc3aa18d7423fb84049f0c5f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9f932096a7b20aee4c2eafb97e8182f3ef20234d3e3b0475d27ea8722f53c`

```dockerfile
```

-	Layers:
	-	`sha256:7cc70c29a8216b51cf47cbab5d04f4a3e161142bf27e5d3ec8761e60ebe00fb3`  
		Last Modified: Mon, 24 Aug 2026 18:18:38 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f432e8ac49f29d9683edb430b37861eee24979b43e4f1db0600b72f12b487ce`  
		Last Modified: Mon, 24 Aug 2026 18:18:38 GMT  
		Size: 25.0 KB (24980 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-alpine` - linux; s390x

```console
$ docker pull golang@sha256:9fb4ac4b78f11e3aa87818de1b78aeef7bd22b4dab99bbc5feab3213cbfacc07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104989414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4715e703fff67d4e338321255e3fdfb362b63014f1eb90354d3b56ba470a07b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:06:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 24 Aug 2026 18:14:24 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:14:24 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:14:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:14:24 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:14:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:14:38 GMT
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
	-	`sha256:12f17e725e160998a302ed6e7a573ce71961997b4c81c9a82a7ee7e0ef3813a6`  
		Last Modified: Mon, 24 Aug 2026 18:15:14 GMT  
		Size: 101.0 MB (101033789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3da381acdd25f3283a7955b7409408a9d5164966dba3d97879b1596f19b835`  
		Last Modified: Mon, 24 Aug 2026 18:15:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:81e309596bfd9170b38327518129cf51f0d7f2e2cded76b94c3f1bae0e5e456b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079317b7150a52152153d0368f5081ce1f16a53592692d02e8c91cbfa432dfda`

```dockerfile
```

-	Layers:
	-	`sha256:a73b2f20f8e6e31a74edd96539ffe539bafb6f5f362dd66ad4e409455c203c0a`  
		Last Modified: Mon, 24 Aug 2026 18:15:13 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c9bd3dde198573adceb7532639e4057c56a36a3a98171c6026c9a12c998bbbe`  
		Last Modified: Mon, 24 Aug 2026 18:15:13 GMT  
		Size: 24.9 KB (24924 bytes)  
		MIME: application/vnd.in-toto+json
