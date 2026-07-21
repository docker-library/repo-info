## `golang:tip-20260719-bookworm`

```console
$ docker pull golang@sha256:3d667bd07e722d0125b40dd07f5a7f662cc0f609a8622c82ba8ca8789b723247
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260719-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:17cedf9cfb994ced341fb44be27ba573a2ec0366f07a959ced555896a798c60b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332127277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf3b138db8e78a767bd78c26525f407dee67f6902732cee33183152c28ea35a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:31:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:33:50 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:50 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:50 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d0c73712e149499523b1a99aad9e50a4b3300bd8f9d13fa9f1e66cb841d2da`  
		Last Modified: Mon, 20 Jul 2026 22:34:20 GMT  
		Size: 92.5 MB (92523837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996313dc711ebc6dde48ca5a92f77465a96a6a3e81dc2e76b792d182d5ec5dfb`  
		Last Modified: Mon, 20 Jul 2026 22:33:43 GMT  
		Size: 102.7 MB (102653324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9ff7361159484510313c93b7c9a91c37adcec7091bab8d92d66fae7efbf1c4`  
		Last Modified: Mon, 20 Jul 2026 22:34:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bb134d37a1d78a939ef7ccb40fd4e17415f5cd7e7c566e7abddd0823883f0471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4dd776b4e4b3e0f0c2aaf154abc4349410ac55d6eb4d308500cec30f29c683`

```dockerfile
```

-	Layers:
	-	`sha256:7d5aa6233ef941c8a43171882e2d05cdce3ed9561f395d0762143b4bc7038a22`  
		Last Modified: Mon, 20 Jul 2026 22:34:18 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b6f55b1c3a05e08c2b22dd7e372f2e782ad3847a4a5dfbab9ae3f681776e0c`  
		Last Modified: Mon, 20 Jul 2026 22:34:18 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260719-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:314d208962ae374adeefe007e367065899b2a45374040af3298509d4202d7b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290582643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043ddcf18f593f3c67974fa360a2a5f7c4225302c0b67f7db26124307f3cf48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:32:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:35:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:35:32 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:35:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:35:32 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:35:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:35:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0890883874051ebbc97c0f302949cefff32c87f2ad60cc2477409b9c7da643b4`  
		Last Modified: Tue, 14 Jul 2026 04:15:26 GMT  
		Size: 59.7 MB (59662246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc6fa26615ef285f3b0dda2b9153b2d901d6fc083325ec316671ebb1151fdf`  
		Last Modified: Mon, 20 Jul 2026 22:36:01 GMT  
		Size: 66.4 MB (66376173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3cf11081442ca41c8c94a12c322db133db9da472490dbb51ee2f88c175ca53`  
		Last Modified: Mon, 20 Jul 2026 22:35:58 GMT  
		Size: 98.4 MB (98390879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd3132a1585cddf6abb6a498cef619a766c23daf61b2f9a2fe8009c656ef9d1`  
		Last Modified: Mon, 20 Jul 2026 22:35:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b9230b8c8e68e78f439644c4bd6927637af6ae11d4d37933c4dbc520cc140e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6de8151c88fe9db71b0af053f51bd0818fc9c843aa28359c87f6d0f4a14b4ec`

```dockerfile
```

-	Layers:
	-	`sha256:4479de10f7cfd34efbcb0e1ffb2f399f9e83c9678ba5d87cc5d45171cc59f6ce`  
		Last Modified: Mon, 20 Jul 2026 22:35:58 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c86861d8ea55038e71f80b239fb639450f78c8673789b8f5d6514609a53d3323`  
		Last Modified: Mon, 20 Jul 2026 22:35:58 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260719-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0b1f6e5cdf130c7f6b16c5f302d916555c4baebe535bd2cae5d64a544017671c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (319957190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cffad63c7b2f47066ef76ecda6b4734369082263c8ef722f4f2168865b2c856`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:33:18 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:18 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:18 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299b7a34bcc765c76ff4bb9d186ed0b02dcf399f7a056e8535b4b2b351092c78`  
		Last Modified: Mon, 20 Jul 2026 22:33:46 GMT  
		Size: 86.6 MB (86591144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a531370fa7ce0b91717a7494de070627772fae8c89a31a138f623b83fb14c3f`  
		Last Modified: Mon, 20 Jul 2026 22:33:19 GMT  
		Size: 96.9 MB (96871349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752abaefd64daa2bbb3fc32db18c4fee8d2d33d5642c006f69b9deac442be7c4`  
		Last Modified: Mon, 20 Jul 2026 22:33:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:14a5cc993acbfd58a4ccf496bcf737d0d8d405861653bbd7c1b09903209ffe22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5925c70803699808f8da88e06af30c93bb575475b05b835339a2ee247f94f5`

```dockerfile
```

-	Layers:
	-	`sha256:71e99429ce2ce60dd60111c015168019b41a8cd509c814d03e64bee53c46ad13`  
		Last Modified: Mon, 20 Jul 2026 22:33:45 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae3cab97e3a55158b845fa6a3c497e76a68cc8e370c44f05b632cf0ed1516ad7`  
		Last Modified: Mon, 20 Jul 2026 22:33:44 GMT  
		Size: 28.5 KB (28522 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260719-bookworm` - linux; 386

```console
$ docker pull golang@sha256:48cc9d1734b08ef15fd8076b4c8824fb31b42cffdf2cab19e6d62fc9d97de53e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (331005767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5e747a6b53b7d45d00af321db24c8a6f15f2c3bb18053bf1e0e75ce32ddc31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:31:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:34:05 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:05 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:05 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:34:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:34:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a17209efcdd987645a47d85b886216acc5254a2a0c1aef2364b9a70bdfd8b2`  
		Last Modified: Tue, 14 Jul 2026 02:38:33 GMT  
		Size: 66.2 MB (66249184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca82b01d4a2cf47087ef9857fd53466cde2a7b725fa16cd26f7541dc356e77d`  
		Last Modified: Mon, 20 Jul 2026 22:34:33 GMT  
		Size: 89.9 MB (89941064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d0808d45d845a665453ee563edaf4321797e8bebbff828b9a8fe359d36560f`  
		Last Modified: Mon, 20 Jul 2026 22:34:16 GMT  
		Size: 100.5 MB (100450088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd48a76bc7824e24395a6908b4808ebd41cd0e3eecc8a8f20ce4684fdd56b11`  
		Last Modified: Mon, 20 Jul 2026 22:34:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8165a38dea83688bda785a5a3b47e34c159ab2d75f8ac86fb76617b8d3009fa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17237d0267761fb57c462894f88c0ec245c4787156d0d694f8255572d6d2b821`

```dockerfile
```

-	Layers:
	-	`sha256:342e4ea7211dd06fa07084f67c016190b1f0134f9e9dd819e62ff9113aad0675`  
		Last Modified: Mon, 20 Jul 2026 22:34:31 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6a0bdf32cf8b38f0f99ad7252d92ec8613c7c2a8e79b19b8f417c2715cb3569`  
		Last Modified: Mon, 20 Jul 2026 22:34:31 GMT  
		Size: 28.4 KB (28357 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260719-bookworm` - linux; mips64le

```console
$ docker pull golang@sha256:3bc1535bc0f964f512638b5031380f197cc59f89416d9e9b754c5686dae9832c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301855983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d240c258e9a6110a33ce17aacbaae69a1e67e99671a6a986104a611d505fa3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 15:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 20:35:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 21:27:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:55:08 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:55:08 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:55:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:55:08 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:55:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:55:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2c328c8c141bfe93d6858b21fa00b7c39f26eabfa97b46e975fdb98a417abb35`  
		Last Modified: Tue, 14 Jul 2026 00:13:01 GMT  
		Size: 48.8 MB (48787637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76566152e1d6c0e89b31535cd95a023c05f7a786977745a6d5a4e7142f155ef7`  
		Last Modified: Tue, 14 Jul 2026 15:24:33 GMT  
		Size: 23.6 MB (23624346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e94da2d06bbf493038b6b10b2d438560e41649cc15cd3a34176f7d9c726ae2`  
		Last Modified: Tue, 14 Jul 2026 20:36:21 GMT  
		Size: 63.3 MB (63317624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518d15ab415a9a35659ceba9c9a510178d3cd2c5a02b0a6eba1e273ebee823a`  
		Last Modified: Tue, 14 Jul 2026 21:29:49 GMT  
		Size: 70.1 MB (70117864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf4befa04b94bbf8373c10dd1d2039b1de0a82d6e7b025c4f96482fd91d969c`  
		Last Modified: Mon, 20 Jul 2026 22:57:20 GMT  
		Size: 96.0 MB (96008354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b925e32e7e938e2ba20d701b9cbf86bc9245280db3e0f2d69fe5b5552fd0d933`  
		Last Modified: Mon, 20 Jul 2026 22:57:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2a5cdecc3b65873ff142d0909aec3cb246d674b4e5f7d21fa9740b7db1c29004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c221c038168b8780b7637a971a5d3758ab86508f65d075f154e3bc7eb528b`

```dockerfile
```

-	Layers:
	-	`sha256:2bf57ae834ec41eeb87b6dcc74cb25e09e0f04db5405d8f706e065bb877a95e4`  
		Last Modified: Mon, 20 Jul 2026 22:57:10 GMT  
		Size: 27.1 KB (27123 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260719-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:ab1d3709415da9493a08ef56723eec1c94d0072697cbada24299933f07e5dbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.5 MB (337451269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902bdb56ecb9d3d82da32c63a7ac8131ef253c6fe7baeaac07e89e77a4852d9a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 01:07:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:34:22 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:22 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:22 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:34:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:34:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206cda10cbd9dac32ecbd02a80861ff43df730ef77172b28d0e3c72a02c96ae`  
		Last Modified: Tue, 14 Jul 2026 03:49:23 GMT  
		Size: 25.7 MB (25687296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc397ad605293503e3db0dcc973f7b867a960c6167203f96e7b22c80e4c3cc`  
		Last Modified: Tue, 14 Jul 2026 12:13:50 GMT  
		Size: 69.9 MB (69851191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a3bd205b670d335c6c798628740518ee4b864cf91339f9960003ca39f6a0e9`  
		Last Modified: Wed, 15 Jul 2026 01:08:15 GMT  
		Size: 90.5 MB (90527550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17a0421053a5709df860da09f4bd3b9d442169c5231e73c4aa0684c63bd57e9`  
		Last Modified: Mon, 20 Jul 2026 22:35:31 GMT  
		Size: 99.0 MB (99043239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f765d12f383cb41a1c7b1099590ebf8da3cc11b2458e51ae8b6aa3459895b31`  
		Last Modified: Mon, 20 Jul 2026 22:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9d831f67abf92e77578ea6e7db2e4ab16cf882a12071d1a6e22bafd5f2235170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffd0ce3cb865692a24d46725a976f1aa84e9804d1fd14163fe5257f5c72b989`

```dockerfile
```

-	Layers:
	-	`sha256:726332420fa6a2f538786d58edbc9e41cbdf675687acda254a83da08940f14eb`  
		Last Modified: Mon, 20 Jul 2026 22:35:28 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5117f5088ed47647db190828b01e6edd64e1567bb2bdc7ec6d56ebe399c20ceb`  
		Last Modified: Mon, 20 Jul 2026 22:35:28 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260719-bookworm` - linux; s390x

```console
$ docker pull golang@sha256:eb49e77ba9bc50377714dc4fe298c6a2617faed570863b7561259f8832572bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304939691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c3f13a022557bb844b53157102e97a97a7c6b5bd42204be97c50c49e60c160`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:46:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:35:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:35:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:35:11 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:35:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:35:11 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:35:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fa1f9755ea504ea510505c6aa6140e24c157db826373159a938bdb7846c5eb`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 24.0 MB (24039166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278779eeefc8e0ab5a2dec92882cc188d61f2766e99be2360e27e73c4c186e6`  
		Last Modified: Tue, 14 Jul 2026 04:47:17 GMT  
		Size: 63.5 MB (63505738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d01a6d10437945296a85b4039fb0e1f03270a6ca294ba8abbd9f63ea7d50c4`  
		Last Modified: Mon, 20 Jul 2026 22:37:01 GMT  
		Size: 69.1 MB (69120069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80917ab9f5dd2699aeeac6d177e78fe0f73c25e06b88f3586f9b3e010b46f3a`  
		Last Modified: Mon, 20 Jul 2026 22:36:03 GMT  
		Size: 101.1 MB (101117281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519e3f033e2e6a1641a1b6837e5d5b1a19df863b57715fbd949e6b6873f06381`  
		Last Modified: Mon, 20 Jul 2026 22:36:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260719-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:88f405907e092117d31822aa35770575175b136e23202010e93c41467e5abb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10358005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a169969c11a8baa3d204650ae350d8acbbdad1bca2470e032563a277167297a`

```dockerfile
```

-	Layers:
	-	`sha256:2f008449f09ae84f51129db7cab4ce8cdeed286f269eb931e6897ea5ef362ea9`  
		Last Modified: Mon, 20 Jul 2026 22:36:59 GMT  
		Size: 10.3 MB (10329615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aea91ce83b0793b6ad30075aa43ac43c1df519d518b40103c8c2ac4760aef163`  
		Last Modified: Mon, 20 Jul 2026 22:36:58 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json
