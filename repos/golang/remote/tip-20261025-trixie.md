## `golang:tip-20261025-trixie`

```console
$ docker pull golang@sha256:c193715c73d860c1723627838603b87fb526e79b04a132642479a47051fe48d0
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
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20261025-trixie` - linux; amd64

```console
$ docker pull golang@sha256:e8125bee4bd803af99e85e64d4d69e854e03a42f48784a9d7c4147122372d055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.5 MB (350472001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d5f99f7f3bc3d035d4ea6dc5a535e046e52b52c6728911b43c46a89478545a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 16:26:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:01 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:01 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:01 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614395653380b68226f2e54b246767ddf3fadff0248537697b826422b16c17f7`  
		Last Modified: Tue, 27 Oct 2026 16:28:36 GMT  
		Size: 102.4 MB (102445336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82722e2c046f52bc924fd3eab9f7d4fbf5bbac9fb0ce67fcca5e63377a411258`  
		Last Modified: Tue, 27 Oct 2026 16:28:35 GMT  
		Size: 105.2 MB (105178487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d32b4c6147557b31b8b60418d953b05bc74d058503c638cb7531ec210e56ad`  
		Last Modified: Tue, 27 Oct 2026 16:28:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f5f67662bda714ef9ab3e0a288a8a3657275b3f098affdd1940d9428023731c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1a100569e8927d0c82fb92525295d6da467f6aa46147bf0cae0b417363fe80`

```dockerfile
```

-	Layers:
	-	`sha256:82ee4d2be6a6a9888339a41c0ba9158a08674b66e92e7ad59f0945cf9fc80f34`  
		Last Modified: Tue, 27 Oct 2026 16:28:29 GMT  
		Size: 10.8 MB (10796239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82186f85ce7845edd0269598fa69bb0aae30d330459fc1d093b931114a49e6d1`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:ba8a8bc490c490a84da744f056aa2c0f797573b03934698ef121b35d9066a75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306355558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82519dfd5331d495176651aa7828803ae445a6ec45e91bc6578823c07de1377a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 16:26:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:25 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8566ae0f3b9c1352522afabe5b2fad30b8932a273775033a74687b1cc4bca0`  
		Last Modified: Tue, 27 Oct 2026 16:28:55 GMT  
		Size: 73.1 MB (73083052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ed0706d066a1f8a8160080fb6eb18909eb49a3d840816f9c4cd9c4cf85b15`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 101.1 MB (101059169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20aa84e913a46f1f3556ed197b868736a67863614183aac1bea135b9fd29089c`  
		Last Modified: Tue, 27 Oct 2026 16:28:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:075a394def9f547a5d8c8563faf854489f611160dcb61c1b28b796461d7a6e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8ccc0bf13f61651fb78a1f174e25e5b590bdba487bedd5ad0dbeb9cec66e80`

```dockerfile
```

-	Layers:
	-	`sha256:31dfbfa232d6b9ae1bdc69271c247dcd15468fd138c99a4e1319c431a24ab8e3`  
		Last Modified: Tue, 27 Oct 2026 16:28:53 GMT  
		Size: 10.6 MB (10592127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d49ea16a67b1be8b065558f3f542e5ef2b498093ce1ad0ede91e027107613ce`  
		Last Modified: Tue, 27 Oct 2026 16:28:52 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8ad626934d75643e5fb92cf35880ebee056b7dd1de42bfc54d5658282a7da196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340589144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac76779ff3b7bae8952568b087f45c2c86651c231e258b0fa7b02d52595a703`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 16:27:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:27:56 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:27:56 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:27:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:27:56 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604796977742d06b61d09afa604b5ce4cb6dc52142871c90c931d68945e2dd0f`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 98.6 MB (98592516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e63cc2709b769d01b299b6ecc290dd6fd049fba9121425facd2f9f9d685556d`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 99.6 MB (99564116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:344e36833385e1ed7b540d4486754098823a4a461538a1ad3a40a462b57a78fa`  
		Last Modified: Tue, 27 Oct 2026 16:28:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:299ba7e2103c3a20cd6b0d30a3501f5ba19ecd5ff5aca5929c6174a3b8ad852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbda6b0c192c6ef07d799304881e6fe71a2290af067ebab3c7435080052a8c2`

```dockerfile
```

-	Layers:
	-	`sha256:788d7110838e9cd56157f12eb78ac94f3914328a316f1be4e421a490721ab997`  
		Last Modified: Tue, 27 Oct 2026 16:28:24 GMT  
		Size: 10.9 MB (10916058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac6b55235f5477ea1ebd17e6451950ad185720558cece471cfc823a59be20df`  
		Last Modified: Tue, 27 Oct 2026 16:28:24 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-trixie` - linux; 386

```console
$ docker pull golang@sha256:d32063ce59e342dc9f88ff79d016459e91615f5a7e4346aa570ee0017efd7970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351412037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ffcadf212c518bfb5d8a88165681cf34b9e39f414340c373fe666aa1b0a37f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 16:27:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:21 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:21 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909f16c3ccf238c02074d6be87cb65bdd236ef35710db0691a4d49412dc9f8`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 69.9 MB (69856853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993a3b15fe141926acd2fcaf0752ffa6bc589dcc5634e1e6cdc7d95b5bc4f167`  
		Last Modified: Tue, 27 Oct 2026 16:28:50 GMT  
		Size: 100.9 MB (100885470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472f9a541f4058200fdb5c688e93c6b823dc26a63f30bfce9ee0889838aec45e`  
		Last Modified: Tue, 27 Oct 2026 16:28:47 GMT  
		Size: 103.0 MB (102961292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a7514773c35e336c25c244dd5787ae0d0a2e4728e0095486bea2c47a95d769`  
		Last Modified: Tue, 27 Oct 2026 16:28:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:31e11be8af96476afd3079b4f9564097ee713bbc8fd1f32e41160fe71074eb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f911321389eafc9dc392ae843ca0f4471c1aa02514812a76574450f59fa2d9c5`

```dockerfile
```

-	Layers:
	-	`sha256:8fe0a7822f0fc0d19d2d831eb6637e4d50ef523e3d630ba0b3cd871726e35c3d`  
		Last Modified: Tue, 27 Oct 2026 16:28:47 GMT  
		Size: 10.8 MB (10767500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53f5195313b64b185ac33458fceaba6974fbe7caf707399535afdf3556a0cf69`  
		Last Modified: Tue, 27 Oct 2026 16:28:46 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261025-trixie` - linux; s390x

```console
$ docker pull golang@sha256:516d344e38f86d270139e85010178c595437849729c8fbbb11ba51d56564517d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (325015874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4237404b6735af6333d53c649b454212911727e9f6d98c0c7cbf75b3cdfecc3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 16:28:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:30:02 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:30:02 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:30:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:30:02 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:30:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:30:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad9198af36aeca36e916c327d2492d551dfc465058aef0869cfce6606f095a7`  
		Last Modified: Tue, 27 Oct 2026 16:30:58 GMT  
		Size: 76.3 MB (76259741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d7035eb958b24f1737d1e86275272f4744df284b425d94bcac03d56709fdd`  
		Last Modified: Tue, 27 Oct 2026 16:30:59 GMT  
		Size: 103.8 MB (103818476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56007b21b418a32fb0bb8f2ff807bfc2d6dda40c3ea81daec7d86cf01a93e18c`  
		Last Modified: Tue, 27 Oct 2026 16:30:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261025-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:1eaa15d05b5b4c5fab2b898a71f3e2084c521d0ee27b5450df479172716ac8f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10636066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb31467176d49ac5bc0a3d8f7cb25940b9246ffea4a9e1e2b7677f61c0ec5b6`

```dockerfile
```

-	Layers:
	-	`sha256:a8e8e27cec4df725c478d2fcbb44adb2e77a9a9c1a76215a76fbe2958749a46f`  
		Last Modified: Tue, 27 Oct 2026 16:30:56 GMT  
		Size: 10.6 MB (10607386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855cea0d37c02021063b2404989e051a2bf76eae2ea1ff846d22a6d08316a8e2`  
		Last Modified: Tue, 27 Oct 2026 16:30:55 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
