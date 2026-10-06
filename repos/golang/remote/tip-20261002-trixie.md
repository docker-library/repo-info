## `golang:tip-20261002-trixie`

```console
$ docker pull golang@sha256:ef51600e90eb06d652a3d752fee4facab9d59707770cb42854360892217bba24
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20261002-trixie` - linux; amd64

```console
$ docker pull golang@sha256:c945d47a88ece3a6cb91d21e98e94f6641ca7027c4ea92939388b4734a324c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350697020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e13c46428084b2140fd3a891e9874e1152205a6d6131e0158e9d3312723abb7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:17:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:18:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 04:18:26 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 04:18:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:18:26 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:18:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:18:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9659c201ae706df75b45207e8def6df66230eb52a1f5f890e55ae75928cc3afd`  
		Last Modified: Tue, 06 Oct 2026 04:18:55 GMT  
		Size: 102.4 MB (102413004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5139fd7bb1c92327b4600a52ad3d08938caa11dba9f8ad36a5a56e5526b8b6a`  
		Last Modified: Tue, 06 Oct 2026 04:18:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:37b6465e1c680f3d350e3e6946128f307edb7ff0c001a6b5f3276621d51eef45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10826201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86dd6bc957fb211675a85d249b932b493ba133b4df6bc79d4187c148d5adfa7`

```dockerfile
```

-	Layers:
	-	`sha256:f9eb4347ae47f11b070a50ac0ee7e4da7521a3d7374c621d8b45fe7d4497ce8a`  
		Last Modified: Tue, 06 Oct 2026 04:18:53 GMT  
		Size: 10.8 MB (10797516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:919d7c21fb943526014e84dcfa3b13bb46ed5d5723104e913956faf548502665`  
		Last Modified: Tue, 06 Oct 2026 04:18:52 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:14dc024b7bd3c826d45c95f2fa74d3684845e45ce3125f6f6740726e3aa21c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306522966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7446638f8dfffe57146aff164edb0d2df9c8c2ec7b9d276f45c49ef93568ead`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 05:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 05:19:39 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 05:19:39 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 05:19:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 05:19:39 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 05:19:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 05:19:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da2bc1d40e0c89474b55c8511c5a9f0d1fca3b48964954bc979f105fab0963`  
		Last Modified: Tue, 06 Oct 2026 03:41:06 GMT  
		Size: 62.8 MB (62759938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbfa76a27363f1bc77a4d7d0d2a00ab4b656a0caa46a4a48d68ae7a6d19269d`  
		Last Modified: Tue, 06 Oct 2026 05:20:09 GMT  
		Size: 73.1 MB (73050018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0323417d2b49acd97b35f008c958c4c2bbad32876004f5a2385e13b56c3bbeac`  
		Last Modified: Tue, 06 Oct 2026 05:20:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7a05601462e2c5b49c0229497d7a64d55a32e8aee03db59ada35d0dac0bd95a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10622212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887bf3b53dd92b4914acaec00451a495d3ac9261ebe999af9ac15ac76940706d`

```dockerfile
```

-	Layers:
	-	`sha256:6b3c54caf9e10a15d4ab8ba1687d3b3e6319c2094ef1436c437e2e73e2051d62`  
		Last Modified: Tue, 06 Oct 2026 05:20:07 GMT  
		Size: 10.6 MB (10593404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ba805010ec8508a7a373884fa7ea3e1072def9ab971211131d9c3085ac368f`  
		Last Modified: Tue, 06 Oct 2026 05:20:06 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ec4ff35301f646777747de8180c67fbb9aeb64d5b91e81f8f07e03288dde7cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.7 MB (340728111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab09b20523e1e7fb31fab7028a2d17dd6590b91396255fc060bea021e778842`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:16:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:17:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 04:17:47 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 04:17:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:17:47 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:17:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:17:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ec7a04b8292c9e9e24706851e84715c72cd101d86fb1cacc7e8a97440d578d`  
		Last Modified: Tue, 06 Oct 2026 04:18:17 GMT  
		Size: 98.6 MB (98559646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf6ec2b85e8ea1864beefc81705db408d78b7dca6c647fa944cfa05be82e3d1`  
		Last Modified: Tue, 06 Oct 2026 04:18:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:cac523823d8863e2fcc27eba34bd34a65f722cb340d13f786a4702d578eb2b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10946171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20117e98aeead8deee0743462692ff3a2df60a17690ba0df4021cb213b95d867`

```dockerfile
```

-	Layers:
	-	`sha256:274889c721f9ef4e8913f946cac97ed7ab8639fb4afc386548164f22e5563b78`  
		Last Modified: Tue, 06 Oct 2026 04:18:15 GMT  
		Size: 10.9 MB (10917335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02ff607250234a46d01bda67eff488352149f97f931b64b0cee1d10f71054809`  
		Last Modified: Tue, 06 Oct 2026 04:18:14 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; 386

```console
$ docker pull golang@sha256:9d8e452674665e5b1f805088bd8fe0958b8bac23d84fac0d434c9b46bc03697f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351591550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6151514449e4a7899506ab43291819508eddf1d11d165bd79e4a0150004d0c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:13:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:14:56 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 04:14:56 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 04:14:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:14:56 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:14:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:14:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cbfaeb235ad0daa03294a921e8d9fb916fac246df65aa13cbf5696fdb61f8a`  
		Last Modified: Tue, 06 Oct 2026 02:33:15 GMT  
		Size: 69.8 MB (69846987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3239baccb29d9990123070f76fadadc97b1e265a495416d7111245323e4f2e8d`  
		Last Modified: Tue, 06 Oct 2026 04:15:25 GMT  
		Size: 100.9 MB (100852790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17101d32284f750c253e03ce219834b53fd8407682c5118e20bcb6b83b271348`  
		Last Modified: Tue, 06 Oct 2026 04:15:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:446316b2c7f26bbdd69ca31b1349496749304f563d2ce77f151f6e151e80456d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10797419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff195f133cd11132da5a8930b289ac663249c4a7788a498c47fb626ca6e8729`

```dockerfile
```

-	Layers:
	-	`sha256:7509819d4ee3ef00b41ee428dc199cd0d0baab8f176a21d490cfe9241676aa82`  
		Last Modified: Tue, 06 Oct 2026 04:15:23 GMT  
		Size: 10.8 MB (10768777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c10317c431fe178aa5e854c762a52bb9102e5f7600524133e920f5d2126f7a`  
		Last Modified: Tue, 06 Oct 2026 04:15:22 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:053f83540618355b7be50e7a5697b5e8398c435efce23c91c8517d9a320cfeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.4 MB (348383945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22790b29ff8aca01487c557a9cbaa1d7aa9de055f56373b0c763087f9b851a1e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 18:10:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 22:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:50:26 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 22:50:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 22:50:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57552d4d0f86a402301d735d57c01cd3d2d1724c711b625717be1f6749424be9`  
		Last Modified: Sat, 19 Sep 2026 03:17:41 GMT  
		Size: 27.0 MB (27022750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688421ee6cf78616bfc56c3cd74e55a2ab39b5a15aae8b60dd132fa0e6540f48`  
		Last Modified: Sat, 19 Sep 2026 09:08:06 GMT  
		Size: 73.1 MB (73088760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b590588f65a31bc4544eac4a46e84e9867d6f38d4d02d2efa6b84e3cbda62f8`  
		Last Modified: Tue, 29 Sep 2026 18:12:22 GMT  
		Size: 93.1 MB (93115487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64afec86ae2fdee26cefc613f159de1768241e9b20a7c42c2ebc4d3163da73f`  
		Last Modified: Mon, 05 Oct 2026 22:51:41 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:6648bb1e082e580d6b1d3052b50c5b757c86a2a44ca40381c9274b59c4729497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ad7cc443d3c50735fd2ed08da08940c4da3baa64a73d07ea91be05b2ae674d`

```dockerfile
```

-	Layers:
	-	`sha256:11c864333b077332ee3db406445c7d7d8a44635e1702782102db1060f3767b76`  
		Last Modified: Mon, 05 Oct 2026 22:51:42 GMT  
		Size: 10.8 MB (10793307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aaf42073efbe42924d2eb4a84cb7767e60c78e98078cfe1b820d567adda7869`  
		Last Modified: Mon, 05 Oct 2026 22:51:42 GMT  
		Size: 28.7 KB (28738 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; s390x

```console
$ docker pull golang@sha256:da756e0fa015a4153c72561060cb1072466c9b5f427edbe79a1c61266da39772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325161372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341cd7cf52fc5406470509db4a400fd52d95fe21c9f34bdd8b99cc51eff6aeeb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:36:54 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:36:54 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:36:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:36:54 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:17:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:17:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1b78aae7260f76f502ab7b85bc020f8bd10bf4a2140f84573948d91aba0b30`  
		Last Modified: Tue, 06 Oct 2026 02:38:36 GMT  
		Size: 68.7 MB (68656790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818894f74e0dc0949248c7eb29d237084f719dab75ae0949b4e645626f4d8490`  
		Last Modified: Tue, 06 Oct 2026 04:17:42 GMT  
		Size: 76.2 MB (76226899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224d60fdd825abdcc86346793af4d4ea3e1c06771a495a1aada2b7e57593ead`  
		Last Modified: Mon, 05 Oct 2026 21:36:55 GMT  
		Size: 104.0 MB (104003346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d1cc16d24689e313cd1de179c5c1f40fd0bd7f4aa2dec0de23d42b9d094f06`  
		Last Modified: Tue, 06 Oct 2026 04:17:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3c77648990341ae3f18a0d0e1c99d8757a95fa48ab64d1fa1fb1446eeb6a23c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10637343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec21b507b8c3d6cb31144b0fc0ddf812908e4237b8f0c622dfc6891c99746328`

```dockerfile
```

-	Layers:
	-	`sha256:90286ff223ba0969a930c3fafe2d297207f0c1318ba81f6be79e5233d2aa5abf`  
		Last Modified: Tue, 06 Oct 2026 04:17:41 GMT  
		Size: 10.6 MB (10608663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:500e18da7c79541bae4995de07b346755d1894dcef2065737cbfdfacf0d914de`  
		Last Modified: Tue, 06 Oct 2026 04:17:41 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
