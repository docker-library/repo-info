## `golang:1-trixie`

```console
$ docker pull golang@sha256:116489021a0d8ca3facf79f84ee69052cff88733547150a644d45c5eaa91dc43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:1-trixie` - linux; amd64

```console
$ docker pull golang@sha256:bf0bf2dd9146b6d1a79ddc35ebcd7cca2f49d47091accefe3a12b8483a3c9ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.3 MB (312291984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0c205d5d6d69087c555490ba3b0b465e9d4d0d043acd301aaba29a3049b627`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 07 Jul 2026 22:11:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:52 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:52 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:52 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:52 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e90ebf9d5d036cf6da367727c266e87fb3e42c5ad9a5f56cbdf71da9c4ff635`  
		Last Modified: Tue, 07 Jul 2026 22:12:24 GMT  
		Size: 102.3 MB (102273106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd897731cffb5e0e0e2ecc46fd853eea5d29081273efc0451183456e3be0b540`  
		Last Modified: Tue, 07 Jul 2026 22:12:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:094d1369e66fb0e0a649f3390d4cd9e4be6d3ba7f4f3ab3be5e47010f9ef10cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10816314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9ee8b0de977c50003c5f16546a878719700b5599f4d2712d7edcf2fe0752ed`

```dockerfile
```

-	Layers:
	-	`sha256:97ebda53a78ed4d2e4e8073908d462f76436d196c3a30c8481a5616f3a566cd6`  
		Last Modified: Tue, 07 Jul 2026 22:12:22 GMT  
		Size: 10.8 MB (10787361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb1e2cec9f4e1ba31bff9c3596c6c27d7fbf86a3f3fba42ad70b9659a462b58`  
		Last Modified: Tue, 07 Jul 2026 22:12:22 GMT  
		Size: 29.0 KB (28953 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:7ec011227c66f209278af10353aa825cdbbb8c586ea9f754fd92e5615bdb41f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270859401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef18aac5fd780044bc09ddc992ad62dd686f4e0017da215b6a1e9526644b5e27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 07 Jul 2026 22:11:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:53 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:53 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:53 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:53 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5391dda58327007b323e3f3d892147e59e5e36215f08b370a235cf10aaf0a`  
		Last Modified: Wed, 24 Jun 2026 02:25:20 GMT  
		Size: 23.6 MB (23635872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0beb5aedec8fb711aa9d2285593f5263bc56957c577c835eda5256d1d6cc6`  
		Last Modified: Wed, 24 Jun 2026 03:55:30 GMT  
		Size: 62.7 MB (62746374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c7ed6c8572b61c8f28865cdfa8a63e71d7419a30c06720a6511279f824f345`  
		Last Modified: Tue, 07 Jul 2026 22:12:23 GMT  
		Size: 72.9 MB (72916602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd897731cffb5e0e0e2ecc46fd853eea5d29081273efc0451183456e3be0b540`  
		Last Modified: Tue, 07 Jul 2026 22:12:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:bc282cbd755fe6aa2e13c0f3401e2660748da75cebe46db206a34f6aa3730a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10612367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994e86f24be1f32ec1fc03cd2cf1bdab24cc77d3dddc641ab67eaf1768e41c5b`

```dockerfile
```

-	Layers:
	-	`sha256:d03a3cc3c6495fe93cd46925c8902978684489e130f4c0f8d6dd925b8d55aff8`  
		Last Modified: Tue, 07 Jul 2026 22:12:21 GMT  
		Size: 10.6 MB (10583280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce55d506913500b051e26f2dc68d09b23e55866122aebb29d198d8fedfbfe345`  
		Last Modified: Tue, 07 Jul 2026 22:12:21 GMT  
		Size: 29.1 KB (29087 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:cc897e8153281afc92931632a0c9eea36a5d45ffdb6a76772701dcd81252edbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304892334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0169cdd55b7995fcf29144b296b9c8611b8eee58ca66001469bccf8b3781129e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 07 Jul 2026 22:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:43 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:43 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:43 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:43 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ac8115e01eb07804f8d4992acecdbbbf8cd61263a25a86c9b1215ebb80322f`  
		Last Modified: Tue, 07 Jul 2026 22:12:18 GMT  
		Size: 98.4 MB (98417032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0784aa5b95737b23078422e69a5bf48136298044e4d969c2d9fb2acefff91436`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:1af1d1ca4c997616181341e009f73349274f396a6f48230330ad02ebe114658d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10936358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e80396c390003d83690a3569cdd0c743df3072e52eda22124f9dcaab50bc4c`

```dockerfile
```

-	Layers:
	-	`sha256:549e214febacb451a7f78bea6f5142ae199d903263dae1e2c763d55823ddfa03`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 10.9 MB (10907227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cfa6d709eadac13441ca365424f5a664e9c21d9328653f17b5317005a92c9fc`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 29.1 KB (29131 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; 386

```console
$ docker pull golang@sha256:c0d486520838ecc9417aec8560b4d0bd10fcb2156021b9f360a785e273488727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313782421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16182831d8788090fa84ae756c123b49b8588cd1db174020f53d6caf16f4348`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 07 Jul 2026 22:12:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:12:36 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:36 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:36 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429f3d50e84943497f0eadc90e14107210f6f5e2fba29257d54a1c7858400bdf`  
		Last Modified: Wed, 24 Jun 2026 01:44:16 GMT  
		Size: 26.8 MB (26797404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296cd1d205c61c3d8ebf0c638f588eaec576bb036a91f5b50f8b6183fc3010e8`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 69.8 MB (69817498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f9691998f5f951bca5e4b8e3d2e08b479e99d780b5173117a46f06b5f892bb`  
		Last Modified: Tue, 07 Jul 2026 22:13:10 GMT  
		Size: 100.7 MB (100715948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f151103c5d7cf344e185055a3e2e92f86d596b9015fea6465be2afeb9fe126`  
		Last Modified: Tue, 07 Jul 2026 22:13:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:dc40dd01b8e9d3eb14382162d3fc19b8c919ba7809ed6b8939d2accbf50f8942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10787500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495cedbac5c62505cf227ebf79539fff62f2d70463be58167cdea37f7b85462f`

```dockerfile
```

-	Layers:
	-	`sha256:6d81da7f05d3a3473f8068dd25f4b81dd33da866bab42c0388f54fc280d71e7d`  
		Last Modified: Tue, 07 Jul 2026 22:13:08 GMT  
		Size: 10.8 MB (10758604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d795ca15a9e1385730240413b2d118fac8f394e5ba06c9ab5b46d060bf24483`  
		Last Modified: Tue, 07 Jul 2026 22:13:08 GMT  
		Size: 28.9 KB (28896 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:fee2f323969fe95be7da1fb8459c6889151698027bc61f94eec073fe036b9526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311042291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce46460fd5ed3d1216c3ad094796ad3f860b8fe362f0c932aa459c698b0566ec`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:43:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:13:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:13:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ed5e38143201332b94deb1de4d86e0ea7e941dbc7b5d2be2a83cc8b919f4fc`  
		Last Modified: Wed, 24 Jun 2026 11:44:51 GMT  
		Size: 93.0 MB (92976176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec9e6800dcf222ed0f2722f879f10cc45731df8c464a90aa18088df89b4b88f`  
		Last Modified: Tue, 07 Jul 2026 22:14:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8e82785438bf716b923225368b83c54e0a42364e1837ec4428ecca7db047d1a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10812020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b917c583a530b62faf440f0f04736ded1e3e996cf8333954d047e526132bcd68`

```dockerfile
```

-	Layers:
	-	`sha256:e5a171a813c3c3375af454c03f12b32cdb1c7273e7fdcbd2d7ee9d330452eba8`  
		Last Modified: Tue, 07 Jul 2026 22:14:19 GMT  
		Size: 10.8 MB (10783173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6be3e8897139b39422b56300918d0600b5360a26b30a3140aee15f24548abf3d`  
		Last Modified: Tue, 07 Jul 2026 22:14:18 GMT  
		Size: 28.8 KB (28847 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:bece6893883ccb561fe3a2d4f49df233a32944c48f01824a85328bbc009c932f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336362252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0796451777553a34560e4e4561cecf28bc16676e39f9b5879ecb73ab458443a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:38:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOPATH=/go
# Wed, 08 Jul 2026 20:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 20:35:16 GMT
COPY /target/ / # buildkit
# Wed, 08 Jul 2026 20:35:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 08 Jul 2026 20:35:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f854ea9591f54c8e550c7f31cd5f962c88a13760b39c26f5b0ebfd7e965cc529`  
		Last Modified: Mon, 29 Jun 2026 16:47:05 GMT  
		Size: 131.8 MB (131753884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ba61866bff16c6d67dd671f0c2945d522b517e8a4429596c829088207b394e`  
		Last Modified: Wed, 08 Jul 2026 20:41:58 GMT  
		Size: 65.2 MB (65163350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35ac67605f4f55c2d113abce57cc019bed8b5b789d66d9b2b6769eb27589852`  
		Last Modified: Wed, 08 Jul 2026 20:41:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3d09689d07d4f6237e84349cc93486224a1e22ba28dd5619c9827b48d522ef56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10886067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b21a8db7e3eb46f8d9b6cb7e5e137e271330e406982b5a7ab4807b6dc8e22c`

```dockerfile
```

-	Layers:
	-	`sha256:b0bb2752c7b2ed13e47e2a037b5b14b2343d34090ab162e6ae3c3d09f90edccd`  
		Last Modified: Wed, 08 Jul 2026 20:41:49 GMT  
		Size: 10.9 MB (10857042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9794649e569f4c6de1e160ae1c4011eb9566a5c836433dd86bfe2016d8397517`  
		Last Modified: Wed, 08 Jul 2026 20:41:46 GMT  
		Size: 29.0 KB (29025 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; s390x

```console
$ docker pull golang@sha256:1898d60558c14867878a89a06370a98ebb5ec0ff55f18e618fe038e635ab7f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287445410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb708ada4c45df6f5c551c50cdfcc52d7689468952abb6eda09db44a25f6c12`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 00:04:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:24 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:24 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:24 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba01797f0882bd2be0740120045ce9b50fbd82d27178b77711fb50a54069397`  
		Last Modified: Tue, 30 Jun 2026 00:05:32 GMT  
		Size: 76.1 MB (76080732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8bd4affd3edd2b3829cc4a29a59b792320442169c2dbfbe7e9f5816db84e8`  
		Last Modified: Tue, 07 Jul 2026 22:11:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f0ff3451c8b635e10a22f294822c3ca67b933fdd40bfd0bbb0d90f9b1d32789b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6746f7a6ebd57c1c327e3158795fdba7050b9313b191e06c7c58ba1fa949745c`

```dockerfile
```

-	Layers:
	-	`sha256:b3b3837c0e5855cdaf572a81a6a96f5a9e1fab016c59e6d4ddef56badbc016c4`  
		Last Modified: Tue, 07 Jul 2026 22:11:58 GMT  
		Size: 10.6 MB (10597761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09b038c6b3116eb72e84eec1afafc982e07d78257a53f84ad9b4a7556c0c280f`  
		Last Modified: Tue, 07 Jul 2026 22:11:58 GMT  
		Size: 28.9 KB (28948 bytes)  
		MIME: application/vnd.in-toto+json
