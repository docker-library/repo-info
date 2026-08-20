## `golang:tip-20260815-bookworm`

```console
$ docker pull golang@sha256:51ea99b91e789e9b13c55faa71bdd5097855f5b5ea75c5017f8f8b9afa96c17e
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

### `golang:tip-20260815-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:1abdd340f98cd7378a2667c35b6dfcd3d6471c543449465c00626f03f8ca41f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331684102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1fd31ae675814e813eefd77140f97cdce43cee8945660d87341a6be22c0008`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:11:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:12:28 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:28 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:28 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:30 GMT
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
	-	`sha256:c7acd1b8329869cb2d981f22a6191bf41e02eb7712faeb8fbbd89e366e5d45de`  
		Last Modified: Wed, 19 Aug 2026 20:12:55 GMT  
		Size: 92.5 MB (92545138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc087dccb6ae670b11bb15facfbcd008e46f19c86909db117c568d60eb91341`  
		Last Modified: Wed, 19 Aug 2026 20:12:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c480bac6712b8ffa56f7d981f9eded4ff61746762e94aca52bfd0f2c799ca2b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b4134b165789d77f9c719d3338adeb473377ef5c0933b6b7f1325dc16f7d17`

```dockerfile
```

-	Layers:
	-	`sha256:f50675458481bf0e13a279190433797b9e5b0c2a4b1de8a2c9e535ba982c445b`  
		Last Modified: Wed, 19 Aug 2026 20:12:53 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd557a2662abd86b6b5fc15d36e42898ad32b68fd52377e279b09e232c1673e2`  
		Last Modified: Wed, 19 Aug 2026 20:12:52 GMT  
		Size: 28.1 KB (28101 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:5a1cdad5dc917ab76fe71088e78b12e753bb3899e4a5330bc645a8fff1a24419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30f39b8d05d0fdcfe975bb9ff41e40849d275f7243f4323ec130a47d7304d12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:13:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:16:05 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:16:05 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:16:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:16:05 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:16:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:16:08 GMT
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
	-	`sha256:e3060048842693ad2ab9c29d3917d9fb3266aea72537053c124862d866769da3`  
		Last Modified: Wed, 19 Aug 2026 20:16:33 GMT  
		Size: 66.4 MB (66410715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdbe3055e33c84b06eace05b519202c58aa08de502574c92bac761ab58aafda`  
		Last Modified: Wed, 19 Aug 2026 20:16:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:262b977e2c25be0ea54cd560def382d0943733680802cc247e2cdca47b79ed89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbbee8aaca01ff2141569f87b94ae09408d745781b64f111baefe5f8b38aa243`

```dockerfile
```

-	Layers:
	-	`sha256:dcec7a1d46adc748eeaa4b376b100013b17105f69941bc0e424a603f60715717`  
		Last Modified: Wed, 19 Aug 2026 20:16:31 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05265b77fbfb421337ca08c2dc3ede38de4b3a0a5c5b3a8a6e7eff71d4ccaf10`  
		Last Modified: Wed, 19 Aug 2026 20:16:31 GMT  
		Size: 28.2 KB (28210 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:198860ead97c8f2953c4198a21a6e7b38cec2e06ad8d5141b62f9124473f1656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319808964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b2ce3c8d78042e006209ccc0a476d4d4fa8debda4486835b43538939f70dc2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:11:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:12:55 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:55 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:55 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:58 GMT
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
	-	`sha256:fedc38549e6da1afa4ce10cf54e980ad075866abe37c1be94ab4d074366ed86a`  
		Last Modified: Wed, 19 Aug 2026 20:13:24 GMT  
		Size: 86.6 MB (86627088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96afea0a33f6f2cf640623579e6a7916f5a2f097d442a767c97d1501748c1c8c`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:964bce29b2d2c9faf8f98b03d2a699e09d74f8857bfc872fabe932d5652bc8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdd90dff5c4918ca7be7aa71b6d6ddae38e8e3f998cb809fe3e14cda6c54639`

```dockerfile
```

-	Layers:
	-	`sha256:24b5111ff502017302a62df0c5cd738ff2a62e31eea4114e2a77e1011625ccc3`  
		Last Modified: Wed, 19 Aug 2026 20:13:22 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ea0ba7c0f30982c40b9a6df33268171559b310c74575dbd40fe80d2c5b63aa3`  
		Last Modified: Wed, 19 Aug 2026 20:13:22 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; 386

```console
$ docker pull golang@sha256:0f1726b769908140c55221c6b84a7fd10e5717baaac4e769aecc330c343b086c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330919945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaadab6f7e975a44dbc09aa7f6953f9697c080a1c93be997967816a2b3ff3f22`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:11:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:13:53 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:13:53 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:13:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:13:53 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:13:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:13:55 GMT
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
	-	`sha256:88f6bc0ecfc7f4120203a71f5d45e2b88ac7eef2e6947bf95bbcf4cbd3ec4212`  
		Last Modified: Wed, 19 Aug 2026 20:14:22 GMT  
		Size: 90.0 MB (89972128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa13ff15412e09cc86860e9f3f532268d8db947fc0117b60099561a8515fbce4`  
		Last Modified: Wed, 19 Aug 2026 20:14:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ec13f0293f924ece1dae9d68f15678327d74202a8d54eb879305a8a8cae8df6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde17991788ce377163cb1e0f6c7398e698943f6310271d68dfa36945f3b0658`

```dockerfile
```

-	Layers:
	-	`sha256:c082abfffd6f1fa59f6444b5cf42d2f2068d0264e9e02af90d30cd0cbf46adb8`  
		Last Modified: Wed, 19 Aug 2026 20:14:20 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1914cf76f36dc5d6f397a0763fb113158e451eddabfdcb9c327d0105efcf4faa`  
		Last Modified: Wed, 19 Aug 2026 20:14:20 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:86410e20fa0bfa7f56f198d5e62c7326b1dd486e0e2c075d2bbeb536f432beb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337300409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8802548538e67f723fa0b6f0e3c32a34dbd148afcc59de705e03817508e81d`
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
# Wed, 19 Aug 2026 23:54:25 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 23:54:25 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 23:54:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 23:54:25 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 23:58:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 23:58:04 GMT
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
	-	`sha256:6f2c0bde20aa559307571359bc3123d355d3707d58d3dcf348b04f5e47d6fad5`  
		Last Modified: Wed, 19 Aug 2026 23:55:20 GMT  
		Size: 98.9 MB (98876901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13eed36978ca57ece2ddb4fb6f8455b820c2b88b58ca191a0c8accba978897bc`  
		Last Modified: Wed, 19 Aug 2026 23:58:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:21d363642a3861e9928441b76c8aaec93dd009dddc4516c522f585b06bf24f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e361c9e2214391f77b77c34c680022495a8c3f87350cdea605963d133bc4f8e`

```dockerfile
```

-	Layers:
	-	`sha256:25e005dbf65f04f7c01f27c032c2fa243092d0e939f53bf5932326c42ab52b81`  
		Last Modified: Wed, 19 Aug 2026 23:58:43 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829dffb82ba998add3220cd8c6b3de43aa1fca43ae2a5d08cbc70150045b5f58`  
		Last Modified: Wed, 19 Aug 2026 23:58:40 GMT  
		Size: 28.1 KB (28144 bytes)  
		MIME: application/vnd.in-toto+json
