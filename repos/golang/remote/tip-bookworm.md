## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:c5b393c0f4079f4f85375f4bda3fc52ce23b5704710c3065dd746dc360f496eb
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

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:76807e93f87b93e228211405a49c88c48c3a2439ac9e84e97ec875488fea7059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331547636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1831e61f16f2cec9b07be3c54798ada249c034034ce71428c1a292cc94e82d31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:53:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:55:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:55:16 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:55:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:55:16 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:55:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:55:18 GMT
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
	-	`sha256:b387b60c2e804bfb89ade88659eff2748bbbccc10d8ace2bd73b98bbef17a09d`  
		Last Modified: Wed, 05 Aug 2026 15:55:45 GMT  
		Size: 92.5 MB (92545232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92dc218be0df1f621943b2a33251205e331284a5f1a2efe83ac54f227d41676c`  
		Last Modified: Wed, 05 Aug 2026 15:55:18 GMT  
		Size: 102.1 MB (102052749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ea5e0d46f924f74b308ad4475863b5c134c534a8a503b978ca155a7e9c8ab9`  
		Last Modified: Wed, 05 Aug 2026 15:55:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:90e2fbf73513e072410da917b43d685349b1ab572dae0305e768604afaafbd89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07782da8c1b39cb261ab817f33f6778a3d110cce1c185fa36f1d882814b0aa39`

```dockerfile
```

-	Layers:
	-	`sha256:8c06f5f641cecd21cd9f6bdf9f090a3821685933f6f77c380651d0e7e2ca633d`  
		Last Modified: Wed, 05 Aug 2026 15:55:43 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a28740ddf145fc9050ceba82ed25bde443f3acdf7cc94342a6ebf6457b406f9c`  
		Last Modified: Wed, 05 Aug 2026 15:55:42 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:b0235b53c38c27f1216c7a9340ff1aa5f1199084825a1d410431f5c9b30a4f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290356283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1360a1c44b70720241205cc69fb87ee82edff9245d035ab0923a23282918dfe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:53:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:56:29 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:56:29 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:56:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:56:29 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:56:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:56:32 GMT
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
	-	`sha256:dcd6dd34d8b2fe63dec3ed9bf017fe4adb876afd6c7aa770bec4fcc8d7dcb5e0`  
		Last Modified: Wed, 05 Aug 2026 15:56:57 GMT  
		Size: 66.4 MB (66410416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8795e13e904689dc0ab9318643932dd285b18af802688ec1b65fe619ac97635`  
		Last Modified: Wed, 05 Aug 2026 15:56:36 GMT  
		Size: 98.1 MB (98130620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6efb3b6241f5507564aea8285ffaa86b5d41bd3e8c4e00f0000ccdce8a65e73`  
		Last Modified: Wed, 05 Aug 2026 15:56:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f8de750ebe4d7a882815372b2224494135ff45290f6c32f479f4ce713a6f5dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ae0b082dc39393486ca07edf9847b9f64d503b6576aed1e17d500739b00f8e`

```dockerfile
```

-	Layers:
	-	`sha256:c3e057771b370b01009c57d47dd1baf7b8ebc55c411f3c1e0c05f42adef77acb`  
		Last Modified: Wed, 05 Aug 2026 15:56:55 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7019359e4e588895fc5a683429e3ff248596b60b04c8447da2e773c54fe6faeb`  
		Last Modified: Wed, 05 Aug 2026 15:56:55 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a5beb6ad50bb707bdac6dd250622df705ac24c9a5596ee140e57ee0b5b3c6929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319702127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b01b2ee5021f053e486984c5f29d6e80f05b6e6067e37ad2c7b1b5304d15882`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:53:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:55:04 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:55:04 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:55:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:55:04 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:55:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:55:07 GMT
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
	-	`sha256:92643d212f63105c8ffda6458663b1c7886262633c191d079aa904960aee6d19`  
		Last Modified: Wed, 05 Aug 2026 15:55:33 GMT  
		Size: 86.6 MB (86627122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdff13f3fedf010839e2a729c122f56b509e044d34c9941cb852f8ff20c34ecc`  
		Last Modified: Wed, 05 Aug 2026 15:54:37 GMT  
		Size: 96.6 MB (96580632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18a5b34ca8bbd4ec20dac665457c620917a07692d8257c5c6452fc71be9a00a`  
		Last Modified: Wed, 05 Aug 2026 15:55:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:e8e30baf09cca3ba0b225135b1fbc55578ccf4997e80c54860c143b1151399e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3407f06f55d8fca1077755e4e4c462a5abb2ae42a5a5b4adb95a8e19d20881`

```dockerfile
```

-	Layers:
	-	`sha256:11f0dac4d5cc83f44678ba91b2dd594ba1b839d1416d3c0a43a7388b26e5df56`  
		Last Modified: Wed, 05 Aug 2026 15:55:31 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97cdd3463ef08e82c71430ff6ad076dfbd37262ead83f9a25485cf94c0864ba2`  
		Last Modified: Wed, 05 Aug 2026 15:55:30 GMT  
		Size: 28.5 KB (28522 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:e4c239154305da37165bee948a2d0385125c3dda1a2ce8bcf7f92ec525f3d9ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.8 MB (330785947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c12da752d24bd716010c80ad435ea7d8ccafb47fd051ffd93b790147f79b1c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:53:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:55:26 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:55:26 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:55:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:55:26 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:55:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:55:29 GMT
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
	-	`sha256:fa3e33cbe4230dcdfd70dd1662d761f36affc79c68050bab62be34cd16e9fa07`  
		Last Modified: Wed, 05 Aug 2026 15:55:54 GMT  
		Size: 90.0 MB (89972371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8655dcc4705ec6f39f4d42310692a1c4f0a76cb47c9b348543ca84dc02c212b3`  
		Last Modified: Wed, 05 Aug 2026 15:55:32 GMT  
		Size: 100.2 MB (100199193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1706d72a46311a8e4f17bd118233cc8b391450c6b974d690bec3fbddf840fe71`  
		Last Modified: Wed, 05 Aug 2026 15:55:52 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8c372ac3ff21a9285e5fe206497e064bcf532774d42ef1a1ae78c979c75bfb43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59be48e6461d9df3996e21a55c5bc32acce89db877e2bc4ce8406de26176ee27`

```dockerfile
```

-	Layers:
	-	`sha256:6bc0ebe6530a1c3e6c58da85b99e5d216cf6e6d29b8beb139585eb3aad8345eb`  
		Last Modified: Wed, 05 Aug 2026 15:55:52 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a544bf154fb2317aa7c42903995da9fa0e8c337259022b48e56095672a89ba36`  
		Last Modified: Wed, 05 Aug 2026 15:55:52 GMT  
		Size: 28.4 KB (28357 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:6ddd6a5cc508ba8b1be962d4f95ebec71fc9f0f86c7c00a849e508486f6ae0b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.2 MB (337168511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162db70ed995ac4b25c5a0fa2135b451794fab9a145ffd278d8d3a0194d27f9c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 09:22:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 15:56:40 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:56:40 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:56:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:56:40 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:58:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:58:31 GMT
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
	-	`sha256:ef57b69f1fedab5ad34f2fdabfffa7506439baabbe4e3212377368cd92cbb10f`  
		Last Modified: Wed, 05 Aug 2026 09:23:24 GMT  
		Size: 90.5 MB (90543573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a2672b142c1b932eb7d7a7ebc9a418d3f9a645350f02ae2af7b5962ead76cb`  
		Last Modified: Wed, 05 Aug 2026 15:57:39 GMT  
		Size: 98.7 MB (98744528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535593004949f8c59939047b3593f1c30fdeaf6a496780db28092fd2520bc46f`  
		Last Modified: Wed, 05 Aug 2026 15:59:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:cbfbf937085e185f7d3e7b944765a6c1dc7c17dc6f161b38e066ec326b96be49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d6dfe70323f21ece7e420b63f8c85ad2936b2e66737fb87f7212933669b832`

```dockerfile
```

-	Layers:
	-	`sha256:30b94eb3718b7556991fb746bfe180f6334bd9279bcd673d897fa8287a0fa171`  
		Last Modified: Wed, 05 Aug 2026 15:59:05 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd61b8f66262b5d95deef7b018be1a16459ddf43e91ea13d660952bee48772c6`  
		Last Modified: Wed, 05 Aug 2026 15:59:04 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json
