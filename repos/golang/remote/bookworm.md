## `golang:bookworm`

```console
$ docker pull golang@sha256:ce59b41415e2524ae99926fe1f37ce48ba8c194dcbd2a56a65436cdcefa2bd34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `golang:bookworm` - linux; amd64

```console
$ docker pull golang@sha256:8c4f7ee39e95f12739404475e5be21f2be462ddeb4470eb0f88f5edbd330a375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.7 MB (300735168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd13c20af4eaaa16d6197ae6aa6edfa1953930ca25e8acc4fa8f6cae3588f713`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:16 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:15:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:15:16 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:15:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:15:16 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:15:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:15:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155bd04c3f7d2b797b61f614603e283c1c5e8cc324ba8f587a2ffb6b52f9cbeb`  
		Last Modified: Tue, 24 Nov 2026 06:15:48 GMT  
		Size: 92.7 MB (92679034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d129a974dd319fef9f5f496bf3a04194c14ba0fbf95635c2d5577185dd0b2f`  
		Last Modified: Tue, 10 Nov 2026 18:20:43 GMT  
		Size: 71.2 MB (71223837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969e64485dc2b453aa336a8caa3e1052d6f57e1b089b578b1fb6372ca41082bd`  
		Last Modified: Tue, 24 Nov 2026 06:15:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:56feeb961752ba38889c67712ed66623867952354c3352981173dad15080c3ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10527640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b5517aa666d12b5aa4e4b43bf1e685a83e60fb6a54ad0f51e4555a18b3219a`

```dockerfile
```

-	Layers:
	-	`sha256:b25cf0337f42ee14818a9146d6ac7c28735da454afdbf591f73d4475df572b73`  
		Last Modified: Tue, 24 Nov 2026 06:15:47 GMT  
		Size: 10.5 MB (10500414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cb18535af9cde16c3fb897cae508a39d9c7a1c54c4c2d362ca3defcb4e66745`  
		Last Modified: Tue, 24 Nov 2026 06:15:46 GMT  
		Size: 27.2 KB (27226 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:c06423666d48a8c56f27d071ac8ed0ee72cfe88afc00b8396ea740869e9f1727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261955110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba51c29062319a4e1b38dfb8ef8b782b127590a1aba98a7aca06d19d841bdfd2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:12:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:12:41 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 07:12:41 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:12:41 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:12:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:12:41 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:12:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:12:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aecb817db0f9e40c6e19edcff5610744501481756bfd0fbc3b3cfe54d407ef`  
		Last Modified: Tue, 24 Nov 2026 06:42:14 GMT  
		Size: 59.7 MB (59697363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168a86d91d5a10316c507c2d5b7be3ef5695d30cdb8562a7dc441814143c2252`  
		Last Modified: Tue, 24 Nov 2026 07:13:08 GMT  
		Size: 66.5 MB (66532407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ab9cea82d17d7b101f541f4ecfbb6f5af2bde3cf6c49715c9fc54b6864466b`  
		Last Modified: Tue, 10 Nov 2026 18:20:03 GMT  
		Size: 69.7 MB (69732535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb7a031e917f96f1f212a1e17199b6e6852da244395e7d62e5521145c3b0b44`  
		Last Modified: Tue, 24 Nov 2026 07:13:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6ccbb07a456db45f57ff453c48a6f275c5bc257c9759157be63464abc3d259a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10334458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9c37020859ee6cda77aa59097ae3b3bb66e2fd8978b4c3f3324e4d12a46ae8`

```dockerfile
```

-	Layers:
	-	`sha256:d49e0e5287d216513981c2113acb28d1bf5f5b924ca07a575c7f0b5269951201`  
		Last Modified: Tue, 24 Nov 2026 07:13:06 GMT  
		Size: 10.3 MB (10307126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:882771767ed3cadb4a64a3c226a28029bb88c57e1872328b89e36e4104336e45`  
		Last Modified: Tue, 24 Nov 2026 07:13:06 GMT  
		Size: 27.3 KB (27332 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:7693863f32db8deefca58946315bb63cd8845a48310ddbadff158ece70996eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290915161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e2994444d9e30fb7c78637f5b692788831b7a210db89b51cdd06dc96d7083a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:27 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:13:27 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:13:27 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:13:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:13:27 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:13:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:13:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8edb411307fe1d32b33c6003dd3c64861169f0eadcd881d5cd44e4d71e35dab`  
		Last Modified: Tue, 24 Nov 2026 06:13:54 GMT  
		Size: 86.7 MB (86749314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2570c62d304fb94a946f8e736b532b0adcafee91acb6c9c2d10806ac87bb96bd`  
		Last Modified: Tue, 10 Nov 2026 18:19:55 GMT  
		Size: 67.8 MB (67784510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032d1ea386e931f755470679b6088176a30729e78392f79807cab22287d3ed5a`  
		Last Modified: Tue, 24 Nov 2026 06:13:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:50284424129c243fb4292298b7937aeb623af083cfefbae244cf58259ed43764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10555622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839f5b001ce1024087d2e9fde2319b72846c9df44e8c9cff9b0622e75097d66c`

```dockerfile
```

-	Layers:
	-	`sha256:85ed30f64a4bf9707ef1f01e986755e36a98c2509e59a279b441695f1e9ca03f`  
		Last Modified: Tue, 24 Nov 2026 06:13:52 GMT  
		Size: 10.5 MB (10528262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9e1472a5131844f1fe18664418e99910e26e0154ab82ef5d3f4ba03c9a9a03f`  
		Last Modified: Tue, 24 Nov 2026 06:13:51 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; 386

```console
$ docker pull golang@sha256:d403f0315168da00e6ad8b3376f09acc5a5d6917aa135616d5769884b826954b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (300002336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ff15fbc19acfc3fc6aa76a798b78aa52b765e41d82013b0e53905c94937c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:32 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:15:32 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:15:32 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:15:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:15:32 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:15:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:15:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dab45eed6abc8d2bffa7ecbd77476aa63bebb9085d90a9465823b63c72419c`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 66.3 MB (66278926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13433112549b388b6d5dc6cd8171e8eeb18dd203b2a7f4199b8e325737ae3009`  
		Last Modified: Tue, 24 Nov 2026 06:16:04 GMT  
		Size: 90.1 MB (90099614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74abf8975a8de6101097451affb3e791d46e0600b7751c037cf3467c0973248b`  
		Last Modified: Tue, 10 Nov 2026 18:20:20 GMT  
		Size: 69.4 MB (69404318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f204b9858850c33d7137dd1ac4dca0576dd9a9f209e51b84a30c6d9edd7c31e`  
		Last Modified: Tue, 24 Nov 2026 06:16:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9e3a33dfbb99ba5777400734633568d8baeaa0100d5ba8a07dd3c20c9d7d89af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10507176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560a5aa70dd60225c1fb2e480b4b38becc3a672abcfcec3f32397e220ed26252`

```dockerfile
```

-	Layers:
	-	`sha256:46cba08b4667b93551e319da68d797aaa173bc8e6eff71f140b42534dad65217`  
		Last Modified: Tue, 24 Nov 2026 06:16:02 GMT  
		Size: 10.5 MB (10479986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d59faa01b2a9d542d9a2677497190bae30da2c48d3d99caca5d5ece5fe2403a0`  
		Last Modified: Tue, 24 Nov 2026 06:16:01 GMT  
		Size: 27.2 KB (27190 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:f2eb9775f87e533886215a41c3f73c11c7c4ae8af653aaeedc80167f12970c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.0 MB (307011287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08737faabac3dc99fb1ef7f8082f58ef14760e4911bab70b66ec4427af68235c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 06:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 14:03:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 17:02:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 17:01:31 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 17:01:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 17:01:31 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 17:01:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 17:01:31 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 17:02:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 17:02:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7ed8c49f58d7cef751e5a8d933be1e5cbede20189d3feec192fcca8c63783a`  
		Last Modified: Tue, 24 Nov 2026 06:51:01 GMT  
		Size: 25.5 MB (25515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8a075a611c950b5418ef5c183f5c32939050bc2f1b43d9f568986900fa9b4b`  
		Last Modified: Tue, 24 Nov 2026 14:03:43 GMT  
		Size: 69.9 MB (69899368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1bf07d06e9448bbf0b4e295b852948c79a848b92368ffb799682b88425f63d`  
		Last Modified: Tue, 24 Nov 2026 17:03:54 GMT  
		Size: 90.7 MB (90671615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936ff7bdd356b6321d4d066574778945eb16f3eeb57dfe78006287ea6903e635`  
		Last Modified: Tue, 10 Nov 2026 18:19:53 GMT  
		Size: 68.6 MB (68556462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b3860865add1867bb601d237b0a03f3e4a78ab88b0b0480780320da3a01259`  
		Last Modified: Tue, 24 Nov 2026 17:03:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bb69945a3ad7d3fc67ccc804f55dc845f5c4c0a1589542a6d11a7226d7aa3afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10500008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8e2ed00ac97b4c9f895e5b95958d8c6707a0d29ba73ca23fe40e2c1258ed17`

```dockerfile
```

-	Layers:
	-	`sha256:fa11633a9f71484ec3a094de4bf9cc4421c264bc6fdfee4b005a9c9850dae032`  
		Last Modified: Tue, 24 Nov 2026 17:03:51 GMT  
		Size: 10.5 MB (10472907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:884aad4850691816e464d69fdb55f01cf5e5d173542eda940af7f0a0fb3f72b1`  
		Last Modified: Tue, 24 Nov 2026 17:03:51 GMT  
		Size: 27.1 KB (27101 bytes)  
		MIME: application/vnd.in-toto+json
