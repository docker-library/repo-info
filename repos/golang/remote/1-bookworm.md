## `golang:1-bookworm`

```console
$ docker pull golang@sha256:f5b1ea492ad3e465d57c79dcea9393c2f0710ca2dce326078691851fd4307737
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

### `golang:1-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:db25d241820546be7b96953eea8d3e6bd15d413d59d00a75b68b74dfb5e2ecd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.8 MB (296783285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d0722a95032b7c587ebcaa940d9318d29941f884b065be903117d2f7fd740`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:57 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:16:57 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:16:57 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:16:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:16:57 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:17:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:17:01 GMT
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
	-	`sha256:a08f648fa4d04dabeb3b6bf01d6fcc88b735909ff28175cd66570fa9c5b480a5`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 92.5 MB (92545237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cf7d797e8142be303097f8bba26957376c368d50dc02ce02c5ebf6e689da30`  
		Last Modified: Wed, 05 Aug 2026 02:17:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:dffdba56fa785c65d2d17592cc0fb5dd923d8d410e710fbb089f411d3e4c940e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da63ab7ba08ab35c8a5110230578c4b6a96cfd94be2cd877bf2d86476b60f559`

```dockerfile
```

-	Layers:
	-	`sha256:1a7877b250282c7f3bc139c9e2dd6ba0e153b503624113149155b128afe0aad0`  
		Last Modified: Wed, 05 Aug 2026 02:17:23 GMT  
		Size: 10.5 MB (10497931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0f9fada728411ffdc618e777783769d1278020783c19230f380a0253e8f2206`  
		Last Modified: Wed, 05 Aug 2026 02:17:23 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:1be026b10cf0b237831c41ab642ae89337572f2224756ffa94fbe12d331ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257999666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682a42d53f42b360b310519de7b58af581c7e0bcd5eb83fe2442f4d2e7575b1c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:15:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:15:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 05:15:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 05:15:37 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 05:15:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:15:37 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 05:15:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 05:15:40 GMT
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
	-	`sha256:54c236db76d9a9befe427e5c1018fb9da5f946115ab6ced50efda5ce71d61b37`  
		Last Modified: Tue, 14 Jul 2026 05:16:04 GMT  
		Size: 66.4 MB (66372399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f7540b09803a0fecd4d5e1572e7a0b4fa5fe9120da7a576b704bd77930327f`  
		Last Modified: Tue, 14 Jul 2026 05:16:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:fe1c0c7d6cff03a48857754926acc784275c9ffa655dd63004207d3a929f02fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f623825207b61f58bc0fd71448ddd0e285dede5267e903b4b9611b0c4a4b84c9`

```dockerfile
```

-	Layers:
	-	`sha256:1ef056bbee8b00e06b221e3b2ad1a6b603e356acaadec637ccc26ed73b6743a1`  
		Last Modified: Tue, 14 Jul 2026 05:16:02 GMT  
		Size: 10.3 MB (10304643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22d43f9ed72037c8eb7f9582a889fbfec847f9c92289d98fc08e2a0c100618ed`  
		Last Modified: Tue, 14 Jul 2026 05:16:01 GMT  
		Size: 27.9 KB (27902 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c7a901823e3ab2106934dbf63f6554496783e707305466656391a55b9237ac19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.3 MB (287298607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dde5d847348cf9a5ffe32e2f20a1c47f1396ccda6569630c4345f7ffa0f6260`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:48 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:16:48 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:16:48 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:16:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:16:48 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:16:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:16:51 GMT
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
	-	`sha256:6689a918450c5ccb9b7136467a45cfb17d82154e18a7b31c4b52e2981f3b0c73`  
		Last Modified: Wed, 05 Aug 2026 02:17:16 GMT  
		Size: 86.6 MB (86626992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1495f32848f0733a59a47533c2240cab838dac0db0bd25df8044bbfe2d52a99b`  
		Last Modified: Wed, 05 Aug 2026 02:17:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:83bce6f48e986b78d9e7161fc90dc85200755dc9079dee5a77fa5bbb2c29ca91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566f3a71556f0e8dfa8e550903610c1d11610b7e5c3a9526f9f1e3794ea714bc`

```dockerfile
```

-	Layers:
	-	`sha256:e86223bed2bdf24ebfc03cd46611400a0238ec24164e724d0d41ee9f49ac4a15`  
		Last Modified: Wed, 05 Aug 2026 02:17:14 GMT  
		Size: 10.5 MB (10525779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfc36cf8abb4f9da1b57036b40b721956266a5d2d2d703d56a7f92a42bf57c35`  
		Last Modified: Wed, 05 Aug 2026 02:17:14 GMT  
		Size: 27.9 KB (27930 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; 386

```console
$ docker pull golang@sha256:d55ae07a9dd49d72a415f21bdd3f221de69296d8c8481c1a0d7c0cbbd6eaa1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296166201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498aa0f41e04491e3584ee592060f4b34d1588e7a734079604e3ee8bd19b128b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:36 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:36 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:36 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
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
	-	`sha256:ce92a27d05cef049bc61e6b4ab7ce0a699a27f37ffef18b740bdc153cd5414c6`  
		Last Modified: Tue, 14 Jul 2026 03:18:06 GMT  
		Size: 89.9 MB (89935829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc2605e076f38641dff173fa6dcd7b32be5c4be63164ed88a2f5edcb0716827`  
		Last Modified: Tue, 14 Jul 2026 03:18:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d4132f15323da9b4de601e9fe148e7a284bf5f5b73d4d4bfef6ce43e1f45485d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572c13a2c07ccf26a65d23f27b058e5756170ac86d3bd59750dfa3f1f6d4ad04`

```dockerfile
```

-	Layers:
	-	`sha256:ba758d51d83262fef0978017c38c2b6478eae868ba5fc0961945f348f55a6a59`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 10.5 MB (10477501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b8f65dfa63d47a89a56eb202ec26b5ae5b51b388d0a4c0386124482efe47a1`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 27.8 KB (27761 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:12c4946b0d448ab20fdb842e82476b0436ed3dff84639b421a90e4dff4f87300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303271175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad75ad714b6eefd89dbfcb7eea1fcc388a82f6029a4c2ebf8b7a1b582134171`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 14:53:20 GMT
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
# Tue, 14 Jul 2026 14:54:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 14:54:41 GMT
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
	-	`sha256:f5e1c1327f55ef70a75bb73f617c569396d35e33b9a18f948709d816f296956c`  
		Last Modified: Tue, 14 Jul 2026 14:54:17 GMT  
		Size: 90.5 MB (90527567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9839986f72aaca2347b7deefd93a3d8845b817587999e81158f978f25cf0dfc8`  
		Last Modified: Tue, 14 Jul 2026 14:55:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b487cf8c5277f46b87a5d4f3b77a5c44cfc4015775a22ef007750b63a8d3d24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e6e6e4123062fad0b8a5f72a9f9122f7be749c81e65f28ce2e032bcacba1b8`

```dockerfile
```

-	Layers:
	-	`sha256:07bb5c0e406007f50023f13c57f01a6ed054fbfdafb670d74859c687499a52f5`  
		Last Modified: Tue, 14 Jul 2026 14:55:13 GMT  
		Size: 10.5 MB (10470428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60724ce673da2e63ca971d04de6d13282fa8d3a4ce11400404d9244115a3e92e`  
		Last Modified: Tue, 14 Jul 2026 14:55:12 GMT  
		Size: 27.7 KB (27672 bytes)  
		MIME: application/vnd.in-toto+json
