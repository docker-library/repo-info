## `golang:tip-20260829-bookworm`

```console
$ docker pull golang@sha256:e9677d3a7c2a2084ef005f5f6e3540929072679e54abb9e92f01739156d456f8
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

### `golang:tip-20260829-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:2ab935363280e058ff8a46825cefebc0218f9d01ff4998b6a665a5adf7a9c5ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336158085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cf5b50d9695f096a5eab9d5611e0f910ae7672e23a8f00f1cfbda8ac349032`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:34:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:35:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:35:24 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:35:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:35:24 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:35:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:35:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f51637a4b7571afed5597986d3e01886e90a49311c69050d7a4e36c01cbde`  
		Last Modified: Tue, 01 Sep 2026 23:35:53 GMT  
		Size: 92.5 MB (92545094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1749c03789d9e81dba707ab345cde7e034bc9e5638c82fdcb570d9644f19690d`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 106.6 MB (106646158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2506199099c574de1f6405ab43d50e34c86b71e06ba14bc55d0205c9272949`  
		Last Modified: Tue, 01 Sep 2026 23:35:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4aa883350bc9a5a0a031ba8c51eb22405ae1d0e48a1bd1d9d25826d8f79eaf75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aaf6e8f755b1633c6858e6ea118129f563c551176d576c6bd5238c60479c7f8`

```dockerfile
```

-	Layers:
	-	`sha256:4121cf910f8a53871e39864460a7713da454366741e21a4c18ff575a3a3605fa`  
		Last Modified: Tue, 01 Sep 2026 23:35:51 GMT  
		Size: 10.5 MB (10503829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6196090da9c066e61302e7b12acb28864a528be159cce31f1180e1fd048c326d`  
		Last Modified: Tue, 01 Sep 2026 23:35:51 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:5b746b9cc57296988a851ba6d5883055257d154a8108c21bee33cc38798427bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294618121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c745e7e19582609a9c35f27af6f021f5232cc028c69ba2145d77e518c1e9e8c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:25:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:32:17 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:32:17 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:32:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:32:17 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:32:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:32:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bea2502cc4969aaccfb0b419e5083357264de431659333a9e41b14207fc426`  
		Last Modified: Tue, 01 Sep 2026 23:25:38 GMT  
		Size: 66.4 MB (66410742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ec9892daff3df8c8868fd667921d182ceb849f1e765c9d1e87e011cc3d4bf`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 102.4 MB (102379426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1649e4d168ae20e6096918667a304cb740bdb52ff869cba89c8fae7a7a9c85`  
		Last Modified: Tue, 01 Sep 2026 23:32:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:e4ffa9525f539639118f104a69e29e19bde0712faaee43bad687e6dbe48f62e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10338737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136bfa027fbbb2e30650f86c9fb668228e7978336a5dc287694f415d761d22ee`

```dockerfile
```

-	Layers:
	-	`sha256:ff64cebe9f98e1264585cd5eb79340e191fae6f2575188d6e8019257b096343f`  
		Last Modified: Tue, 01 Sep 2026 23:32:42 GMT  
		Size: 10.3 MB (10310523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:566a0138c421f98bfbecf473b2fd9ad8ee7566e5a468b07e388185be977fcf80`  
		Last Modified: Tue, 01 Sep 2026 23:32:42 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5aad74c02dd94b45090b393a14c69b6c249bf62dbdccabba9c75323e3b9f88b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323901566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e830e00adaa4229afbbb8cfd0497f254d7166ad5ee1cf8199b24c41f34995db5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:33:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:34:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:34:57 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:34:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:34:57 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:35:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6fe9a996577500818043949aef1b90a7b5e1ed36cd47da4621b2e04718acf2`  
		Last Modified: Tue, 01 Sep 2026 23:35:26 GMT  
		Size: 86.6 MB (86626907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5a76591736ba2ca2076090e2b5bb1ee1cb0453562e9eaef712f2aa29b3c161`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 100.8 MB (100762014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7997a802c969596bae162562bda8274f3827add0a3ecdd52a41f9f2a71c3b97c`  
		Last Modified: Tue, 01 Sep 2026 23:35:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4541cc5966559a1fc1a23c4bfb85dacafff9e7fb5dc6f780d1d7a1dcf879f410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7398e42f70c7ef6ff01f42458362ce18bc2a9b0e3911ecef8295146253d31e11`

```dockerfile
```

-	Layers:
	-	`sha256:d109945d8066bbaec6615744d08be2f9dac6c412369146c961823bfcf1a85fc3`  
		Last Modified: Tue, 01 Sep 2026 23:35:24 GMT  
		Size: 10.5 MB (10531653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23e061b06643eb5905de6cdd1031ed1830354fcb5d424c78537c040f1109353e`  
		Last Modified: Tue, 01 Sep 2026 23:35:23 GMT  
		Size: 28.2 KB (28236 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; 386

```console
$ docker pull golang@sha256:6193bd61c489ef0f497405ff5d7b61bb61a5ded916835cca62ecd7e21f03ceae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335212980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa530f3a903bc4dd366f794a96cd70ab73b2cd218fdca24a5cecfc4b7c22ca7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:35:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:36:51 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:36:51 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:36:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:36:51 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:36:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:36:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a911b5b8410e83e0fc2e9f9539c04eb544ba0799379e4c1ff929acee34aa2d`  
		Last Modified: Tue, 01 Sep 2026 23:37:18 GMT  
		Size: 90.0 MB (89972130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a64d88b0f9490dd6f4ee5fc00d3336481d6330a0401ccfec0d4720041096b`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 104.6 MB (104612480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cd01464e34c77feb49fa065a0ba274c8e6ac74fc1d9a6f73a97bdf1d58d813`  
		Last Modified: Tue, 01 Sep 2026 23:37:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:dc323a8ee8426ef5e6f15a948bc161c7838c3c6c945fca305badb832538a3967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10511475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d9831684e62ec07a5d05fff1b48bf9552505d9082ff37314cc77ed14602d12`

```dockerfile
```

-	Layers:
	-	`sha256:c4b64918c53da7ee96ecbfa9602065c8af84855411c03c2a3f29bedff84294a5`  
		Last Modified: Tue, 01 Sep 2026 23:37:16 GMT  
		Size: 10.5 MB (10483407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8f6f3b7e1f44d8b2278886de089ad9b1205e0f3db214d92c5efb608946b021b`  
		Last Modified: Tue, 01 Sep 2026 23:37:16 GMT  
		Size: 28.1 KB (28068 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:c6936dacbac31f6af8ed319bcad4d8f19c7e98cfa4da7e32131f46f3e414e29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341509038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e326ae4b8591656843b3a6b60f97ec92db2e66520b6857d628e4b1eaf21a2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 20:05:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 20:07:50 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 20:07:50 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 20:07:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 20:07:50 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 20:07:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 20:07:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab97d6c86c4c9d046b724863206ba218be9b417cddc31a614c2878f576cc609c`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 90.5 MB (90543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641597d3f37f91732431e944316d54cb7c879b61c66d0ebd8dbca246b602bf4`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 103.1 MB (103064271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2944f6d538601df13ba164142c5ba427343111509fa96850398bad8344a27690`  
		Last Modified: Mon, 31 Aug 2026 20:08:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:e2b04d85768b54384269a60fc0bd32ef12858b16890302dd9063ca83c07ead77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1661ad32863d6cd0bdfa8fb85d048e5127d634fe040153a7649f5e1ebaf17f`

```dockerfile
```

-	Layers:
	-	`sha256:36d23efb03aba20abf1f071e4c5279e93b6edf827952f3f68514d32b1d7b11b7`  
		Last Modified: Wed, 02 Sep 2026 01:12:11 GMT  
		Size: 10.5 MB (10476316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d149ff6c7b4caa348dbc56dd8d11c3444b2ec811b8196d9d76bba6cff33633e9`  
		Last Modified: Wed, 02 Sep 2026 01:12:11 GMT  
		Size: 28.1 KB (28147 bytes)  
		MIME: application/vnd.in-toto+json
