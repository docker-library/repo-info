## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:c69e9a71450e0706a76075cb8b32e858035b143d60d83c6085f3b12c4a05bcc8
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
$ docker pull golang@sha256:7a376491a988f9fc39d8d309aa3c831e0003a472cedd34467330083746c09fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331792382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0136923bd3e22080823aa11128c8fb4ce9554ffc20375c7125adc90592ba318`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:06:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:58 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:58 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:58 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:08:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:08:01 GMT
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
	-	`sha256:cb7f8bae226d138bb08d82f4241ec3e9877552a8b816b2cb17467f12939ab063`  
		Last Modified: Mon, 24 Aug 2026 18:08:27 GMT  
		Size: 92.5 MB (92545104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5ec76dbd4d404cbaa638424fa28400fa9bc9e560cc28415edde34653affa8`  
		Last Modified: Mon, 24 Aug 2026 18:08:05 GMT  
		Size: 102.3 MB (102297625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7ebc2a400f06377c9d9386e252b218a703d4572bc045076a416eee7e8bfcd5`  
		Last Modified: Mon, 24 Aug 2026 18:08:25 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2c446a788ba07c908184df9327809e08045894a955fba1d31a96f3729a95b5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043944a1d10e82d214e14814ca6a75301b3e11a2d924c16d15d86e776aad22f9`

```dockerfile
```

-	Layers:
	-	`sha256:4a91f66b8586e4597cbbd912719326841419429aa43e8b702d1deec44c9ca7d0`  
		Last Modified: Mon, 24 Aug 2026 18:08:25 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf7b34c50a9eb2754f2ed8defec487c8e57636aba6349eb9787a08d72679557e`  
		Last Modified: Mon, 24 Aug 2026 18:08:25 GMT  
		Size: 28.1 KB (28100 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:74fc62b189f99e8a128d6cf5e252fa90d37c78f4f077980b81fa3e34527af77a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290564496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9c03289d18c1359c52c7de497b552d2ce1dc39df4247cbe171c0e56a0714fc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:06 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:06 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:06 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:09 GMT
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
	-	`sha256:d56633bc17a1e8e433d22374af7f39669e2af8b926bdba2d83ce6b2d05bcf172`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 66.4 MB (66410798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255779f6f088311aa395ef24afc4b95b730438cebd6e48b859df371384a6824`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 98.3 MB (98338452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bed5950a9de1ff769b3917806590c0effc6e507e7833aaaca6dca3e0ac4632`  
		Last Modified: Mon, 24 Aug 2026 18:07:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:3a4a729d49b2e00571d8160e484122f4962d67375a5f1eb5af1540aa24f89ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8b902d485fa6956054091135e9ee65fda15c49f92bf8d28511506779940559`

```dockerfile
```

-	Layers:
	-	`sha256:655726010c29f73da48c4c77e9c9ad15f13007f057b8697ee43a625e3e510cfb`  
		Last Modified: Mon, 24 Aug 2026 18:07:33 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69683d2d8b302c7bc14e6b016598c21fbf21cc1bf8c39e9842951468d30b041d`  
		Last Modified: Mon, 24 Aug 2026 18:07:32 GMT  
		Size: 28.2 KB (28209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:29a21c8c3d5e1981bc82ca7fd6ef27c8ba63f9b584cf905a588e5cc865b5d40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319917310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecb0037dc315f58b03af7cd64fb1fd1e53997786e032c007f95c968c0b6f526`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:06:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:26 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:26 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:29 GMT
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
	-	`sha256:bc73eb55c913daea3fb76869e18f601b3b7034adb414805b893c1e9fa16ba060`  
		Last Modified: Mon, 24 Aug 2026 18:07:56 GMT  
		Size: 86.6 MB (86626924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a1d3b809c5999b3dc7e69208936d8f8330b30050130d366bfa62a4bf5e61d`  
		Last Modified: Mon, 24 Aug 2026 18:07:41 GMT  
		Size: 96.8 MB (96796012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64efe50e1c674b54044936e0a769c4acae87d424a17246f7cd44b6032b5703cd`  
		Last Modified: Mon, 24 Aug 2026 18:07:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:61445053285e0ddd1878de2634a6dabf153bcfe6e3675f983683bd3202913fe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b563ea515224e9d586e8a2b9b855358f9f107d304ae4a1d8099ce6db3c97f71`

```dockerfile
```

-	Layers:
	-	`sha256:398c4725f6537defccd382c7e1202f5a9d46733c4286bf76b1a2ab9dc2fd6619`  
		Last Modified: Mon, 24 Aug 2026 18:07:53 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd85e39451ab0ab0c69ab4debe3009a10e48121a45ba3d485942bee720eb74f`  
		Last Modified: Mon, 24 Aug 2026 18:07:52 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:2ba871401bc17265fab24cc0276955b9c027aab762c2a23871e9d7bb0b958ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330968629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bf8934509332b997cf1eebafba4e954dbfba0f6e50d83862bdd4dc699793e2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:06:55 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:06:55 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:06:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:06:55 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:09:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:09:33 GMT
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
	-	`sha256:3d1fa640d289d9577dae31b28fcf5a18cd782a57f6ceae0fe1ea8c6ddae6fe39`  
		Last Modified: Mon, 24 Aug 2026 18:09:59 GMT  
		Size: 90.0 MB (89972033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a8f36cf8449bb2cfbd44774de054c6e99e0a8aea8bf1245033545b0b380609`  
		Last Modified: Mon, 24 Aug 2026 18:07:27 GMT  
		Size: 100.4 MB (100382211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518c20b7adea75e00f5ce7723e397ed18522fde7b8de5224c8d84326b832820d`  
		Last Modified: Mon, 24 Aug 2026 18:09:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:5b099e825a236c730e410c4bddfe2ef1cc099a1d57a7a400ebc01fd378ba9ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b0c650e9603b055aeeb9a3201e59877edc6b37ffc220bc624bd440809f68df`

```dockerfile
```

-	Layers:
	-	`sha256:c1044cd338ddfb49a659208d559259181afeff08c61935523d88292be8d5a7e5`  
		Last Modified: Mon, 24 Aug 2026 18:09:56 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c8518976a4bdeb1bb4ae05ab488cb030492639832e991010b800524f420cc22`  
		Last Modified: Mon, 24 Aug 2026 18:09:56 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:c2c2352230a7ae02f708ce71c407e3d11f74d8d3c099125d829239e58006a54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337408838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddefa1bae2cc81b4619f8264f42cc349e8b0df0f4d86910e1c546e4727d2fd16`
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
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:13:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:13:40 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:13:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:13:46 GMT
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
	-	`sha256:dfcb6e0defe743ac8a5d841ea2eadeae0745aa70db2dbb65ba20339689647f97`  
		Last Modified: Mon, 24 Aug 2026 18:14:47 GMT  
		Size: 99.0 MB (98985330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cd86baf27477aee07196d34e2c053f058575f9e12a0ef63d8e7f0fbdbe1db`  
		Last Modified: Mon, 24 Aug 2026 18:14:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:70ce82cde01641d30b12513c1c5f400551e604ed25cf3ceab7168d17b054f774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df91568bc3f01439ff174cf391ceb2708c72729bbf8aded4aac4c269fff3183`

```dockerfile
```

-	Layers:
	-	`sha256:86f3fcea58511e154262acc8000c6ebb64b5d865bf21c18c1dc55ebf67f98cfa`  
		Last Modified: Mon, 24 Aug 2026 18:14:45 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20526d61716be6cfae598e7fdacf3bcc926f6f6f4064143d187224a3c708d807`  
		Last Modified: Mon, 24 Aug 2026 18:14:44 GMT  
		Size: 28.0 KB (27971 bytes)  
		MIME: application/vnd.in-toto+json
