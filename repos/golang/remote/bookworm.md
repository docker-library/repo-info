## `golang:bookworm`

```console
$ docker pull golang@sha256:484ef6066fa69acb059fdfeda7ba2b8f7391f2ef6abc6f9b8411e669ebd56466
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
$ docker pull golang@sha256:6033334f349f3912236ed6a06c5ed066605e58632dc415779b0d00a1568afa8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300551610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d596369720b60a53a960f13de8abc205229062777d91dcae2b150f0f9af22cf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:17 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:17 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:17 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:17 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d6e959fcd9d75cc9d75bbc6460808c07a591325c56cc4c318372575b92f505`  
		Last Modified: Wed, 19 Aug 2026 19:07:49 GMT  
		Size: 92.5 MB (92545194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daee4590c9478cfdac9f40a88759297738e75fbef28baa5b8ea3c56a8f9bb19f`  
		Last Modified: Wed, 19 Aug 2026 19:06:50 GMT  
		Size: 71.1 MB (71056760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ad4c56c122dac1d3dc7031b362a888dfd11fc0e8e4dd934f9068e29cfc3f27`  
		Last Modified: Wed, 19 Aug 2026 19:07:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bf226d38304a16af09eaea2bbb9c0aca9183170a72001b9b8f71ff58e58353b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5565a89c78c5f297de0be2ee634e07fbc962a00ebdae98d6ca8b99ee1a9f5aff`

```dockerfile
```

-	Layers:
	-	`sha256:135214945206ef72299b54b446fda427de3b015d1abbc5365673df6e10798767`  
		Last Modified: Wed, 19 Aug 2026 19:07:46 GMT  
		Size: 10.5 MB (10497931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bc7c3a75cd1784637538a4c83587eef52e21fe3cccb4be72373690b3b9682`  
		Last Modified: Wed, 19 Aug 2026 19:07:46 GMT  
		Size: 27.2 KB (27226 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:7b72267c025600fa96642d4bf539c304f1faa9e3a1f0f1b34f5cbf9a557b9785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261801193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d70833779f19195d28ae6fdf43709bd02366c608a900da6a35a5bee5471db3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:04 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:04 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:04 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:04 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3164f81fe9b74b5bfa62960ad5afa773cbc682bdd927c3726435bc561290b4c`  
		Last Modified: Wed, 19 Aug 2026 19:07:32 GMT  
		Size: 66.4 MB (66410687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b808de796b2993f7b2974e6a62e59facd20ee4af22e2be560e4dc22e31f5272b`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 69.6 MB (69575259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d71f287f1646517f43f9e26dd8d8013a3339ee225dc825b16c2ac88c2e187e`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:45aff98f0a5de5442422b88d0e2f4edc782038fc4841497d36dd2e022223a310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10331975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc90f528ebaca324dc6349f204bc62e056c3fec378ff891e85bc593a19a90ef`

```dockerfile
```

-	Layers:
	-	`sha256:8de952ce7feecc4e8dfc7ba0134cb4f0db481474dda431b1abe895d54406226d`  
		Last Modified: Wed, 19 Aug 2026 19:07:29 GMT  
		Size: 10.3 MB (10304643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21acb7bdc6ed57adc26e84dd1fbe953964eb9cb519c038fe9abb171bfc274893`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 27.3 KB (27332 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2a96e95da01a466cd9c00de37cb880e2596cc535382c176dfee4e6b742b3af3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.8 MB (290750723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efd57250189d8a71bff8534ea7861892200358b90934b3ee93bc5bfeb874aa5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:01 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc167d08d6a0b758cc4ea17804ae5d32ca76daf0c6905ef2c63bc9e73a9d6daa`  
		Last Modified: Wed, 19 Aug 2026 19:07:30 GMT  
		Size: 86.6 MB (86626884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7d71ede3d0f0c6bd07ffa6581b7c523b2a236cd9c9a0151e44c9cfe43011ab`  
		Last Modified: Wed, 19 Aug 2026 19:06:44 GMT  
		Size: 67.6 MB (67629464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d71f287f1646517f43f9e26dd8d8013a3339ee225dc825b16c2ac88c2e187e`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b749086ce8d761804f78ccce562caa8f0f750e7ecbb937dca3ee604499047fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f3c6ddb878997e341bba14943776f087de9b65ac5fe4b8a3e00259c232ea99`

```dockerfile
```

-	Layers:
	-	`sha256:7d3e18214f7f4177e2b3ac8610503287f2a43fee08770995f33463f6acdd30c1`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 10.5 MB (10525779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7995a55e6d005a7ff9a3fba70592ebe6f55a3fc1424bfe5bdfa5f4fa879829ed`  
		Last Modified: Wed, 19 Aug 2026 19:07:28 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; 386

```console
$ docker pull golang@sha256:5c40413fadc596c8e059b36aad8f1002cef7aba9ceaafcf62e7dd18133405003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.8 MB (299834978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488a4e0b79f1ce9d74f17fa3027694c246a82f848363da449727dfd9728be769`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 19:07:18 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 19:07:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:07:18 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 19:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 19:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed12a6feb1930e559968e2bc0bfe7d26d40716344b44941e3f2e9998b9ffc9`  
		Last Modified: Wed, 05 Aug 2026 01:41:06 GMT  
		Size: 66.2 MB (66249235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9970e58c864448e979c7807e4baf2c4241762e9ece2738711c8315fd00184bf`  
		Last Modified: Wed, 19 Aug 2026 19:07:47 GMT  
		Size: 90.0 MB (89972044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2906014c919aabd3893a58e6d42b0f58624940ae7a68c8e2b25dd4a5a5cc91`  
		Last Modified: Wed, 19 Aug 2026 19:06:59 GMT  
		Size: 69.2 MB (69248548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba4f94294757cd5cc06d2410f90fc92be7a2ff65658633027993a0e25e82b7f`  
		Last Modified: Wed, 19 Aug 2026 19:07:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:cfafaacfeb5df3b3af626343751410d87061d7250c0273ab9336150b78d78119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8350fd08a8399bcdb2c792590ddf0a28ecd659b93c2bdcda4357446b50cd776`

```dockerfile
```

-	Layers:
	-	`sha256:447e392596e4fc515de92dab86cde8d081bde7ae4320b94de1b5ffdcaf791057`  
		Last Modified: Wed, 19 Aug 2026 19:07:45 GMT  
		Size: 10.5 MB (10477501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b964b17c2d713640d7490ff6397928bfe4ed434f2b081544f2fbb5ece4cdf716`  
		Last Modified: Wed, 19 Aug 2026 19:07:45 GMT  
		Size: 27.2 KB (27190 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:a599b9fdd69056e4ff61a28efd1c67038b45ebcfd6502078cb8a6fdbc382f6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306820443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13d5465a1e6e199351c81b5ca75262a0cb78640c90336a0075174e9218185ec`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:31:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:18:56 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 21:18:56 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 21:18:56 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 21:18:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:18:56 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 21:19:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 21:19:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5cf9e08414083437a6d9312a72e2e0811581db4aa953baf2b05dca42a9410d8`  
		Last Modified: Wed, 19 Aug 2026 18:35:14 GMT  
		Size: 90.5 MB (90543099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dfbe9708d45c6eb8bf65e223bd11d146a573692693c7d1a5b6046ab9cb92b4`  
		Last Modified: Wed, 19 Aug 2026 21:19:52 GMT  
		Size: 68.4 MB (68396935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c865379174208737614442e24dfe214ca3daf9040118f9d049e9b76a55b95e70`  
		Last Modified: Wed, 19 Aug 2026 21:19:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:74e242a12e6c947e7d7282953581df8102f46fd848d2656d5a0bc5bb8a4c79b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1950c65c59737d30b91006452094f77725cad3ad115cf5ebb279729df0743fe`

```dockerfile
```

-	Layers:
	-	`sha256:286e02f2680853b4be63a1cd2df0db5b6e3b961a9decad4555de66b14ddf87c2`  
		Last Modified: Wed, 19 Aug 2026 21:19:50 GMT  
		Size: 10.5 MB (10470428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd50cabcb19a6b1cbefc031d3f7bcf7cdd1f4a349e8e4025d73ef20d1665aca7`  
		Last Modified: Wed, 19 Aug 2026 21:19:50 GMT  
		Size: 27.1 KB (27101 bytes)  
		MIME: application/vnd.in-toto+json
