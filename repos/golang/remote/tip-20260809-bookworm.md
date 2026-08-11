## `golang:tip-20260809-bookworm`

```console
$ docker pull golang@sha256:40a89274328faf3dde031a3d960ab85fbb36d6b860735e1cf0c79a06dc615e44
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

### `golang:tip-20260809-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:389dd6fae7491b4a8f3fde84984a15d4314dd1c9ebdbb6eb9c05e6418ac110ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.6 MB (331617502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa341ee72d51c1b85f2d206a22db4790d03bd5a3be8bedfc0b37835eba3fd8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:30:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:35:24 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:35:24 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:35:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:35:24 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:35:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:35:26 GMT
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
	-	`sha256:8f2eac155dd37374ef41074069de4e0615845a3dfd628eda41de88197e795366`  
		Last Modified: Mon, 10 Aug 2026 23:30:48 GMT  
		Size: 92.5 MB (92545189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ba79db5c7c8b5bee8dd5476917bcc23598ce562ecefd16aed54bc7ddb14e38`  
		Last Modified: Mon, 10 Aug 2026 23:32:52 GMT  
		Size: 102.1 MB (102122658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8f3be9efd59f481c4d62e13e4231395b587c447b37dd4201c5976a08fefd25`  
		Last Modified: Mon, 10 Aug 2026 23:35:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6215138e76f22da55fd41afaee077c613bbfd1c2db83485252a5c38d69600399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6089ef10f3a9b89aa366001838e39a2ebf2ea7df3d646ffb41d9791ee2440a48`

```dockerfile
```

-	Layers:
	-	`sha256:2ce732d5ad422b99f4509d94463f15637867a475445aa499b9341c7d60abedd3`  
		Last Modified: Mon, 10 Aug 2026 23:35:46 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa36fcce2b53813a4fe299e4d9fea8d41ff63757cd06f62d2b717e84d75ddb5`  
		Last Modified: Mon, 10 Aug 2026 23:35:46 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:7007e3e9a35c40768b6fa997b5f76e8c3775f366a017aa4d7f9539093d16be10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290421600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7841792b7641223a24185cfe43f7d5abb90f88dbb97ba99bbcf100a1b201eeb4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:33:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:36:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:36:36 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:36:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:36:36 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:36:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:36:39 GMT
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
	-	`sha256:6199d61b169b327acfb125ec24e9a57d26423ecd42853315918206e65f15cde8`  
		Last Modified: Mon, 10 Aug 2026 23:37:04 GMT  
		Size: 66.4 MB (66410572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fc34d5d8629d6029c50a31a63e1c2cb81b094a58e2d08a759a5cff36008918`  
		Last Modified: Mon, 10 Aug 2026 23:31:34 GMT  
		Size: 98.2 MB (98195783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be535095cd0fa28782284ff4c634e31b762cf46b744d648fcbf0dafd87463c1`  
		Last Modified: Mon, 10 Aug 2026 23:37:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:66426259126562fa823681c5271deddf01105edb3a1b205a617d606b75eacaf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496f240042a10e9b3b5d8608aed9bb421523b63b8e2b5702eeb0f92fb34db2c3`

```dockerfile
```

-	Layers:
	-	`sha256:0b63f31ba963687f978ed812a5ce5e096ae58487c05ce5f545642d5a4fa6ff8d`  
		Last Modified: Mon, 10 Aug 2026 23:37:02 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53bb045b073ac80136cfa8d453c3ec053e8d8335dc44ae042e996a2b8388966b`  
		Last Modified: Mon, 10 Aug 2026 23:37:02 GMT  
		Size: 28.2 KB (28210 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4fa453ca3ee0623989f77cc275c60fe6cf956e91522ecb83f967aa179dc85606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319745530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683858b4cb7fd3f7954bf658b8d75cbd8aba60e46f0dd779f83eee4b8d62ef22`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:28:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:35:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:35:21 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:35:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:35:21 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:35:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:35:24 GMT
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
	-	`sha256:b3fe1a291ca00a9989ea7ff9e8dca5521530e8200aeeb1a886462f8f7faebc93`  
		Last Modified: Mon, 10 Aug 2026 23:29:24 GMT  
		Size: 86.6 MB (86627086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d818a4d1d5c30faebf580653ca52f803e6bfa975af792681a5892e0202fba`  
		Last Modified: Mon, 10 Aug 2026 23:31:08 GMT  
		Size: 96.6 MB (96624070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70520bc889b4a8a7f3b99491f2585b9deb0bf5f11bd5d4f2ab54dd2f85a2b824`  
		Last Modified: Mon, 10 Aug 2026 23:35:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c77b32b0b81b847e4c8ecd0268ea6d29df1b93e6c56bea69bb8f233ae9298424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e2c3143ae3cb08ae9606c19cbbaca002e78b5483c8155a71acc1df2e7bd9e7`

```dockerfile
```

-	Layers:
	-	`sha256:56f8f6e52a9b3112319135b198952d031c8d215792a4c166e7ae76c0b6c43beb`  
		Last Modified: Mon, 10 Aug 2026 23:35:46 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e3469b8eb7d18173191838bd3057b3f851524c9ad36dd9b2d6dbd021d3c67e`  
		Last Modified: Mon, 10 Aug 2026 23:35:45 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; 386

```console
$ docker pull golang@sha256:2f791c04d9960152fd9142bb53c6e513cf4ddc34633d424ab0a28a289b0880e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.8 MB (330849248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47891f873a4334c09747cc2e7c8a1a10fb495719c3a3b680a2c2f19ff09119ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:27:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:35:59 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:35:59 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:35:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:35:59 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:36:01 GMT
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
	-	`sha256:8e7c7ed312bb957c8ed5ceb055b8471aacb13dfdece779dea4adadcddc0d3895`  
		Last Modified: Mon, 10 Aug 2026 23:27:45 GMT  
		Size: 90.0 MB (89971899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3193c8848ea73ab15af846ebf6ea81cd7e12867309e713849b7d248d32dc3451`  
		Last Modified: Mon, 10 Aug 2026 23:29:39 GMT  
		Size: 100.3 MB (100262964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc2aaa571fdc2b2ab734d2a695a5fb62fce1c0849f8178b98907960da55e00b`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:23a21a904575632502a5fd93fd1fa00f7fd51511eace1dedb1158aef0d9814f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc9feb0ccb01c62660b8168d53051f879b1570caa2bbc6a0f1144ccc5e14bcb`

```dockerfile
```

-	Layers:
	-	`sha256:ce5f1627abf4064008183fcd95c68aa829a59ea418796ffd92a79073da93ad69`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a66ff225321f88dd9f6a687adb7e628d84a6c28019c6c82ac661ae013c560541`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:7100124e1e11f9cff08ae17cb09aafb536ee9cf0123276ea55f5d036e0990d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.2 MB (337240253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d061e41c19edc9dcc0041271a1331ffebbd566e3ab68942bb2c56bf6a55be79d`
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
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:42:31 GMT
COPY /target/ / # buildkit
# Tue, 11 Aug 2026 00:13:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 11 Aug 2026 00:13:44 GMT
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
	-	`sha256:a9d95ff9656836b4d4f9ed4e91f0626382d9c4c4ab41dde220889f5b92f87744`  
		Last Modified: Mon, 10 Aug 2026 23:43:24 GMT  
		Size: 98.8 MB (98816272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72dfacb0f59f337b1a80ae048923bd0e64bce8d9440ab90489ab87f3e91d6b6`  
		Last Modified: Tue, 11 Aug 2026 00:14:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:84b2b575cd964248fb9905a9f852e03613d6aace8b41005c5b866f06863fb551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621539e10f37216c78981aed6a5ce5860406f929e572e43659fe02c86efb720f`

```dockerfile
```

-	Layers:
	-	`sha256:8ad695e754d584345cb4a15b8f7af6a62c7820cce81792c755c16f279def39bb`  
		Last Modified: Tue, 11 Aug 2026 00:14:23 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e07f8f9394e2f874f4daa9d889eb619b12862112788eb2590d723cc86a62ac2`  
		Last Modified: Tue, 11 Aug 2026 00:14:22 GMT  
		Size: 28.0 KB (27971 bytes)  
		MIME: application/vnd.in-toto+json
