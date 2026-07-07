## `golang:tip-20260702-trixie`

```console
$ docker pull golang@sha256:f23de975e08e14ab24a871a393faa219d251684e685cf4adbc295ac973f2139e
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

### `golang:tip-20260702-trixie` - linux; amd64

```console
$ docker pull golang@sha256:9efcbda8986df719d0939d21a496ce03134736af66c5bca167f06c66faebe7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347612405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c2d33945382bf026300e3691be8694fd4c56b1d89570a9b2355be63b678de5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:06:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:08:38 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:08:38 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:08:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:08:38 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:08:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:08:40 GMT
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
	-	`sha256:dbb4ddc6b74f1941557024e48efca92aff81fc29dff7a8c47cd301a377522cc5`  
		Last Modified: Mon, 06 Jul 2026 20:09:09 GMT  
		Size: 102.3 MB (102273349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd1c92ad6988f1e4a91a34b372fd19ca387750289ceb135fe024003cff8c1d9`  
		Last Modified: Thu, 02 Jul 2026 20:04:48 GMT  
		Size: 102.6 MB (102608572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4327a9500f47b96be4819e3d8eb75c4e7ad5e30b3b84d364aa64f989b5af9319`  
		Last Modified: Mon, 06 Jul 2026 20:09:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:72a9e69ce687f8691a0016b1a2d25544577858bf37ef17710e33d9b764c05407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:555bf629bd520df97f85d4990d2a0678c2398d41c7c42ee89ecffddd8e98396b`

```dockerfile
```

-	Layers:
	-	`sha256:a6a102f428fc046d26ff1a7d730983294b614ab1e175cfd01ac2fdf76c6b6874`  
		Last Modified: Mon, 06 Jul 2026 20:09:05 GMT  
		Size: 10.8 MB (10785971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc14c59a4e3b41d7a64f5f44e5a9c50e0526c48900ffadc43e34f5cf60de6170`  
		Last Modified: Mon, 06 Jul 2026 20:09:04 GMT  
		Size: 29.0 KB (28973 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:4171da2721b88c157e83e51c36eed3dacdfd3311350ca180cc42095cca303b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303356802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd833f92d514a30d87815a7166c2f203ca6b01c9b2cff805d26c3f223260e58c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:06:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:09:28 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:28 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:28 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:31 GMT
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
	-	`sha256:20ba79d9fea0c46563ffdfe0d1c6e96c646d22769e79758df493794bc66163ac`  
		Last Modified: Mon, 06 Jul 2026 20:09:58 GMT  
		Size: 72.9 MB (72916838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2521b5e84f3eb625b30d0a87085905f7848aba41e58efeac6475d5cc2efa328`  
		Last Modified: Thu, 02 Jul 2026 20:04:46 GMT  
		Size: 98.3 MB (98308843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d175424faaa4d9edb63e7af4b9db3bffe910a92b0a9b2c606f7149911ae650c`  
		Last Modified: Mon, 06 Jul 2026 20:09:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:eea8c6c2f6622deafc9f135967fdf3c274a4a10d9753bf7fa0c418c89c730597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2aae9d5ffd4202c667fe888966372bc29284b3fc57ebab79159ef2927c0369`

```dockerfile
```

-	Layers:
	-	`sha256:ef745e74fa9e819c653a2a1f13ec5af054d8a7e902275b2dff26fb1972d1bb89`  
		Last Modified: Mon, 06 Jul 2026 20:09:56 GMT  
		Size: 10.6 MB (10581858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7cf0e8af72ca91a35e621ad8662deb7da63c5c361ebff0974e7f3a6a9a2019d`  
		Last Modified: Mon, 06 Jul 2026 20:09:55 GMT  
		Size: 29.1 KB (29088 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:84599e333f610eaa5b05a53ab508cc526dc9d5f54b76ab87ef14313c351c76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337706785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0298272da9eb66d7309f62456351a891aca44c9fd6273a04ae650df1ff5271e6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:06:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:08:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:08:16 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:08:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:08:16 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:08:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:08:19 GMT
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
	-	`sha256:beb502c95396f4c97f71d61934fe24720c98892eced3ba1d46e10772e45bc1f5`  
		Last Modified: Mon, 06 Jul 2026 20:08:47 GMT  
		Size: 98.4 MB (98417098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799855040db20c258a4625b397d8157c0e8c8f6fb4330c6dd9bf7584e6997533`  
		Last Modified: Thu, 02 Jul 2026 20:04:53 GMT  
		Size: 97.0 MB (96991627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02f51160ac36ac34a30464e15469288f02f53e1835f2e98b19af0949af3523`  
		Last Modified: Mon, 06 Jul 2026 20:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f562e4649a0761df43a2854db7b55fe03bcc3ba49b0c347ea65da036e160f81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10934913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bbbb1d8f307473cd5c06db7ad3cfec4fef8c65e47352c49293e720c076732f`

```dockerfile
```

-	Layers:
	-	`sha256:97e5e524ca0851730efe3c51fbff5c6591fa30e6774dc223d9a41832596ec27f`  
		Last Modified: Mon, 06 Jul 2026 20:08:43 GMT  
		Size: 10.9 MB (10905789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7075ba026ac99d82b987db5035406a07b193aa82b114fcd0018183caa0619d7`  
		Last Modified: Mon, 06 Jul 2026 20:08:43 GMT  
		Size: 29.1 KB (29124 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-trixie` - linux; 386

```console
$ docker pull golang@sha256:ac89490bf9e501bcfafefb3b84e0aa53009e26759325e28a3553037e10eb7c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.5 MB (348546060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9278334b215e85f8c23266b267bcb68b18035c6e42332aa39bfc067970e184a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:06:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:09:05 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:05 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:05 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:08 GMT
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
	-	`sha256:bd84345c7017199711e389cd5a31b69e686f1bb997ceb5bd2b93a22d4e893393`  
		Last Modified: Mon, 06 Jul 2026 20:09:38 GMT  
		Size: 100.7 MB (100716164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cbde1b461f8bce7bfc1cd1f21a1d7e86c0287b6db3fca745c83eb61347a6e8`  
		Last Modified: Thu, 02 Jul 2026 20:04:45 GMT  
		Size: 100.4 MB (100379181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09aa0b8f29201fddc7c5d8376a241cf10e5296803705a411782be8dc9ba23610`  
		Last Modified: Mon, 06 Jul 2026 20:09:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:dbef4d95af6e2f8dc365500c32014a0bd53297880f3ff4122f4e5f2d49f301bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c0479e22028caf5afca1911e0db53a74b9cdbf97751c81e46ca5a5f0defeed`

```dockerfile
```

-	Layers:
	-	`sha256:38b8cf8f6e90696c4085d42a3b250548de52f4e0f4edf96207d85d1a0a103ca8`  
		Last Modified: Mon, 06 Jul 2026 20:09:34 GMT  
		Size: 10.8 MB (10757234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75bf23e47baebb0ea5f1e7cab61f07819c8eaa9fd89b5221d54ea6137d6349d9`  
		Last Modified: Mon, 06 Jul 2026 20:09:33 GMT  
		Size: 28.9 KB (28929 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:010861b791806947e381133183f1e7c37d0732bc3e38f44f8722a19d88c75e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.2 MB (345159120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bfd38002a954a7e6714bad2b969685e61fb62218d8e523fa55f14dd4663b32`
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
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:31:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:31:43 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:31:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:31:48 GMT
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
	-	`sha256:ca4ec4c4387f8f7f83dc176a500406f82c3fd2e6dd09f7893384d4f62afdf0cc`  
		Last Modified: Thu, 02 Jul 2026 20:04:51 GMT  
		Size: 99.0 MB (98979957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d874f13d0b5f9baf06d7889143dea445fe224dc7125f73c7f12ff6db9a2c3ab`  
		Last Modified: Mon, 06 Jul 2026 20:32:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:9adee2d3faebab7e3fc4e2168295dcddb6564c73803fc531213dd99c0f2c35bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10810781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0c69e903b475f8456454a0b51a9a9187c3dcfae29f67dfc50275fe2a018a50`

```dockerfile
```

-	Layers:
	-	`sha256:c864f8f4298d1bede32d1fe95f97a5b90d20034f062c9fc25720762a12a23dff`  
		Last Modified: Mon, 06 Jul 2026 20:32:45 GMT  
		Size: 10.8 MB (10781759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b6d7bb10a803cb4099880a636f678cbdf04f1a4c58dba01d09fd89d0505c3e5`  
		Last Modified: Mon, 06 Jul 2026 20:32:45 GMT  
		Size: 29.0 KB (29022 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-trixie` - linux; s390x

```console
$ docker pull golang@sha256:ac980423052d8ec8cf25bf82a05ed25c5b0e903ff1cf89128ea9082c9f725bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321967154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287cd249ab158d6e1512e15b19caff0e0c1414199c84bc70822d05844445cf42`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 06 Jul 2026 20:40:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:38:38 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:38:38 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:38:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:38:38 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:40:31 GMT
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
	-	`sha256:449735da812053e2d33eb2ff239f88b38055a8dfc611a3a13771ad9fdeea6dee`  
		Last Modified: Mon, 06 Jul 2026 20:42:46 GMT  
		Size: 76.1 MB (76083866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30338cafbec1cacd6cfc0e40572821cab5c72836742d527d6275b5cd089d0b66`  
		Last Modified: Thu, 02 Jul 2026 20:04:49 GMT  
		Size: 101.0 MB (101047453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd6f0e25486f2ad65558aa2eb29079a2d128922e2692413bef1d33c58b18bc3`  
		Last Modified: Mon, 06 Jul 2026 20:42:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3d08fddac5bef9e675883807c7c85ca66058d66ff8f698a11e8f3ef27909ab8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b929334221d14dc905542dee4462316a99d1cdb5ca7e865e187d3d64ebfcb8`

```dockerfile
```

-	Layers:
	-	`sha256:e7717d8b8e73a54e090d18514ee84d078d6d6eb7d5a01c979c762e5fb6dc56ec`  
		Last Modified: Mon, 06 Jul 2026 20:42:44 GMT  
		Size: 10.6 MB (10597119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eda32090a17c548a9532946378e2f03e99ca01f66d1d158a23fa3ac0ea9f855`  
		Last Modified: Mon, 06 Jul 2026 20:42:42 GMT  
		Size: 29.0 KB (28967 bytes)  
		MIME: application/vnd.in-toto+json
