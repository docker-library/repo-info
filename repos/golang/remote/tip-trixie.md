## `golang:tip-trixie`

```console
$ docker pull golang@sha256:89bc6abb1fc9f542d0848f839109009b07d4d5c7e46fb2dee354873466966369
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

### `golang:tip-trixie` - linux; amd64

```console
$ docker pull golang@sha256:497fb57f8ab52d95dfca514761f1db00026840036dd281ea53915df70b1757f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352845206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f757d34dbbb59f7a6e36ad18ab10f409f15abad68b1b46937ad8a5e28b8a77f1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:18:01 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:18:01 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:18:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:18:01 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:18:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:18:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa3dbc6792c531c8550e04152d040eaa115ce17a5429f481a7d5ccb856ad323`  
		Last Modified: Tue, 24 Nov 2026 07:18:31 GMT  
		Size: 102.5 MB (102526401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efe33ce08c2ab749d7e469454c13bd2c73074fd6987df765916f579beb88f77`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 107.4 MB (107439749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d6dfa4d605cb7ea9c018f5ad9cd75a2f022f254c16efdb17089ff3445c9d67`  
		Last Modified: Tue, 24 Nov 2026 07:18:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:69d9b0933d19be0829f2d7ea9f542f9319c7712f4367493627ec861f88a420d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10823376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249881138dbd8cdb89c71980fac0edb1a7f63119bf084620ed0cb4da96fbe1ce`

```dockerfile
```

-	Layers:
	-	`sha256:af638e8f3b298a7c806b798df66fb582bef321fd84f87174ca96c7d84b0f0c1a`  
		Last Modified: Tue, 24 Nov 2026 07:18:29 GMT  
		Size: 10.8 MB (10794691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:028aa88e695cf3ace6b6998c267ae3f266edf9937ee3e392c4f1502b50bae97e`  
		Last Modified: Tue, 24 Nov 2026 07:18:28 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:7fd781c99cf6464cc32861eb063a2a617d3606c00f834dfccc7ec6a3d8cfc13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308767969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f904ff08d57e13aef09d39040171a6648ab4ef2706d5f8acfd51eacad7017c3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 08:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 08:19:53 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 08:19:53 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 08:19:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 08:19:53 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 08:19:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 08:19:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8301dea1564c32e919589729d3a99d246c0e513c2f4ce53d05c49a87fcba793e`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 62.8 MB (62752711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf42509b6053f0b058be7dccdbfb58e0caea5dcadb455c969432b92ef3f21734`  
		Last Modified: Tue, 24 Nov 2026 08:20:21 GMT  
		Size: 73.2 MB (73163544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b245899a237a3af132c690f97082215657bd5be945fcbe2d30fc351bd15f3`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 103.4 MB (103355283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fc5774c7fdb1159b083ac9298bf676b94d576d95cbb0e164e1967ff939dfc7`  
		Last Modified: Tue, 24 Nov 2026 08:20:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:4b7d55287dd430424bedf7360868e8d6ab1c2634119f2ebb9c450bdce497b067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10619386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d983b76ede52a373712568aab2af423c3985c04f9db37dea4c40cb9df035a964`

```dockerfile
```

-	Layers:
	-	`sha256:5b5d5c171891dcaa37d79a5c7f50a21a376d24b276ea97300aa71bcefe684e8a`  
		Last Modified: Tue, 24 Nov 2026 08:20:19 GMT  
		Size: 10.6 MB (10590579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3940af8429851c6172fb09bad78739f51722a6f0e5f88afdeb0b93affe7ed5f9`  
		Last Modified: Tue, 24 Nov 2026 08:20:18 GMT  
		Size: 28.8 KB (28807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:aaacbf3381176f1498c7caefd890ea261c0275988df987ee4fd8a225049e066c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.8 MB (342769931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb44cc8e756c9d9cc2f07bdb4053005b93b68f53451eb06e6d2b3031ecb2387`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:16:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:17:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:17:37 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:17:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:17:37 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:17:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:17:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74dc30419c8ddf6024fd5d4b5ccd6266006cae640fa351c30b1edb731c9c8d8f`  
		Last Modified: Tue, 24 Nov 2026 07:18:06 GMT  
		Size: 98.7 MB (98674415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5832b11a785e394735436b1d989145581e95a9a87780254d1918be0af3a577`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 101.6 MB (101645398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0acf4ce0fe046700b462308123221ec72b8b0771c66f520a7ab85a1328ed687`  
		Last Modified: Tue, 24 Nov 2026 07:18:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:4f0b42882f9e4ea4858b1ec9023ab3cb23bf058e57099ab78958277b318aaf40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10943349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4ad92dcf3eb683788e83160a1d1c850aa4d908f19f7e54f5ddfc2e85b8e196`

```dockerfile
```

-	Layers:
	-	`sha256:4241a65156c0ff78ff4e56a0a0f2db87db0d9c243eeb466496f7fc2212e15500`  
		Last Modified: Tue, 24 Nov 2026 07:18:04 GMT  
		Size: 10.9 MB (10914510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74dbf504dc520cae8ad70e50369cc5de9fde80c3e9e825d59abc525ec92ff505`  
		Last Modified: Tue, 24 Nov 2026 07:18:03 GMT  
		Size: 28.8 KB (28839 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; 386

```console
$ docker pull golang@sha256:e922fd7cba69e27d333d3a6d5a2d56b4970bf305db5da0f769e4123b2767880d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.8 MB (353759437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6b1db534a881f8394560bdb89b4e2e890de4b208d2581839754769b5409dd8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:14:29 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:14:29 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:14:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:14:29 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:14:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:14:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad941d6d2e360c11be5bab67f076a725561b77784d7d2677f094938e20cc0c5`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 26.8 MB (26810342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57f569e4512c64e1bfa4a948ff7d606bc67eb9529e900abeea67665fe98f04b`  
		Last Modified: Tue, 24 Nov 2026 05:25:20 GMT  
		Size: 69.9 MB (69857338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92c63996173e707855cd5ac2fbcca39528f27ad4f086a8e8b5cabe948b42bb4`  
		Last Modified: Tue, 24 Nov 2026 07:14:59 GMT  
		Size: 101.0 MB (100967714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4213e3c8db6bf2b11a1cac7a3711fe6e326415ca3b60eb2f135ec39bd863251d`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 105.2 MB (105198439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fb466f196fb35d067b20b8deb0cd8fc9043b9e4e5ce3dcc18d9c9145b07904`  
		Last Modified: Tue, 24 Nov 2026 07:14:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:41ae26343316a4e92a382c936a615675a5546be565e2248476f4acec60016851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe58a32bb8243c672cc945bcf2011a87fbf8f047047cc5c7c73b916162d0e4`

```dockerfile
```

-	Layers:
	-	`sha256:7466079e791516ce6fd8f6f509a402350b007a071b3b7c364ff05706b2d77b83`  
		Last Modified: Tue, 24 Nov 2026 07:14:57 GMT  
		Size: 10.8 MB (10765954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba73e26e46d5ee1fc2319b63aa8203330bf998f2e0fde6ec22a2ca94f95cb988`  
		Last Modified: Tue, 24 Nov 2026 07:14:56 GMT  
		Size: 28.6 KB (28640 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:76f9c044a3264f00c732ae8d1e7aad61f10da01c37c39b136fe61dd33261a614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350628589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce173c77a433f295ce198932bf8d5b977f67c4ee65ffcd7ddcc9e62732ab865`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:04:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 17:03:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:13 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 18:21:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 18:21:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f511b5b325c69d6a4a96a572a778958b1386314d7c6a837c0a1d614395b62b`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 27.0 MB (27042631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0c5e858e334a1201fd045983093765bfba0cfd88b8f8f40614e0937845326`  
		Last Modified: Tue, 24 Nov 2026 14:05:39 GMT  
		Size: 73.1 MB (73087385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10e173e697c0705d8a71a4cab2c3ec285cd3c89487e3ea3bcf8decd707ea545`  
		Last Modified: Tue, 24 Nov 2026 17:04:52 GMT  
		Size: 93.2 MB (93232734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6398754657f6617d56396f3bdc393c5a6e4b0491499f8730567ce43a74afb4`  
		Last Modified: Mon, 23 Nov 2026 21:53:45 GMT  
		Size: 104.0 MB (104035836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7bdeb29ac1659efb56fc64b7e26cf46de4d9824e860e6c3e25f83342500b34`  
		Last Modified: Tue, 24 Nov 2026 18:22:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:de3be1ac0d5326cc09232a1719188ce1bbc624cf50ee7b03dd76954ef3c5ba76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4cc54b2d26e4fb8548f9d5ff59ead8d1ae0e9b8498c971384ec520f0b71d63`

```dockerfile
```

-	Layers:
	-	`sha256:2834550416a105078501b90690a8a8cc8e3c79463e53e9fac4134fad3cb471ef`  
		Last Modified: Tue, 24 Nov 2026 18:22:28 GMT  
		Size: 10.8 MB (10790478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac9cea4ae48c9452c2a3106c91f49042e68f5ede77f35b5a8b83c36b02a24a4a`  
		Last Modified: Tue, 24 Nov 2026 18:22:27 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:69d7dec85444f3d1024a678427388a9bf18a4822022ef73643ee622260412881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.3 MB (373265320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4840f86c27442e7f7a20812aae8f129be70e272f994f346b55bed1b2aa6b5e55`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 03:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOTOOLCHAIN=local
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOPATH=/go
# Thu, 19 Nov 2026 04:24:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 04:24:43 GMT
COPY /target/ / # buildkit
# Thu, 19 Nov 2026 04:25:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 19 Nov 2026 04:25:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61b6af2de36859513173e78693a2e2982c59b690437aec15bc86a49a7ba885f`  
		Last Modified: Thu, 19 Nov 2026 04:33:38 GMT  
		Size: 132.0 MB (131984085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ca22bbc2fda98851746abe4b299e0c714b7e488a3ecf02950cb68449ddefe`  
		Last Modified: Thu, 19 Nov 2026 04:33:33 GMT  
		Size: 101.7 MB (101703006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae3d49aa57033033ae8acefdc88e432585c08fc8edd1948dc0f8554583655e2`  
		Last Modified: Thu, 19 Nov 2026 04:33:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d5661bdbb250853d35a071051fbea1471e336d6d6959df6e9ef17ada981ec90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10893824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9ed74bd64eb69d737a62080a41df8dec814ae6afa4d6b98a0bd30681e55b4e`

```dockerfile
```

-	Layers:
	-	`sha256:1a614029ead5f89f2f1d8b2bc0ea0e83a5daaba819331191aee4f64b07dc7630`  
		Last Modified: Thu, 19 Nov 2026 04:33:06 GMT  
		Size: 10.9 MB (10865081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb6100d6a94a36eeddee8533ac2ea93bad82315a325dc870bf555137bba5165`  
		Last Modified: Thu, 19 Nov 2026 04:33:02 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; s390x

```console
$ docker pull golang@sha256:26e34cf22bc6621b19e97e562bea9efb4dccbf3bb90451cffde844daf5fb2b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327434078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dcf2075083b9b94f062c735e188c53d036c714ac961fb54083fc666ee9d365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:13:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:50:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:50:43 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:50:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:50:43 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:17:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:17:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3f4ce2bcba42a9f49e1dce7fbd9adaa01993b467a604f99739eb8a2c8ef380`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 26.8 MB (26829608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882c152e55bcff64f0d4b9871cc103b5a85e1de8b9ff0bc0015cf9263213ba7`  
		Last Modified: Tue, 24 Nov 2026 05:42:22 GMT  
		Size: 68.7 MB (68663169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655258223ce4965971161618087ecc4c4483384d9afa5c90e27421fff478a6c9`  
		Last Modified: Tue, 24 Nov 2026 06:14:09 GMT  
		Size: 76.3 MB (76341979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cd34b458c6176d100150fefe22bd10abee9b4e1cc0bcf39f09c5dde1a049c5`  
		Last Modified: Mon, 23 Nov 2026 21:51:39 GMT  
		Size: 106.1 MB (106116472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431e8e8d5d11a7573af029be5893ad12a2a8522b5dcbac6194d0f25297d46180`  
		Last Modified: Tue, 24 Nov 2026 07:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:01ecad02845d5f814f02f6fefca8dfc2e416d893a2bcd0a3a06cdda215ac49c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10633770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8ea5f29ff50c818a73e5200c9441e1a5add0c5c9e0203e4e6c350e902c7061`

```dockerfile
```

-	Layers:
	-	`sha256:88984d0b8e1040222338bc467bb2280df6df57a82e30c2bbf57cfa54dca66bcd`  
		Last Modified: Tue, 24 Nov 2026 07:17:57 GMT  
		Size: 10.6 MB (10605090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18195dbe70c8854dbc2712a4f1eaf6ac592013df1a3819117f2c068225939655`  
		Last Modified: Tue, 24 Nov 2026 07:17:57 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
