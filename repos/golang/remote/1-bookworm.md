## `golang:1-bookworm`

```console
$ docker pull golang@sha256:6c5605ab3a9a9fb3c4eafe5b3d63cdbf3881caf113262b67862547b54a9db599
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
$ docker pull golang@sha256:617c816dc4e193e16a6a84e1bc830761f728a6bcef3430e85a7ab19b830ea5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258037282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12952f6de6245044ccb642eff6d5cc9ed49e5a9f049a055f654faf30d32332d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:17:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:17:12 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 03:17:12 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:17:12 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:17:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:17:12 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:17:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:17:14 GMT
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
	-	`sha256:6a9cda5ad4e7ca3d4fa5831e67eb4866b8e68d071ed5b9958980c842839635d7`  
		Last Modified: Wed, 05 Aug 2026 03:17:38 GMT  
		Size: 66.4 MB (66410358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d50e4cae4549da06de268b90425a23de52829e97abd32ea089c2918ada10a06`  
		Last Modified: Wed, 05 Aug 2026 03:17:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f7812351a258df7b9f3d8259a7072a858fbf9b01e8a6fb399186610fccbebc44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b10c5fb9e6bbef5f28b249ac5ee4f36e9bd0738be01006f2137e2347816d02`

```dockerfile
```

-	Layers:
	-	`sha256:d0d739c129087b8eba4876c79211230a767d1fd04733a1bb16a48bf6530f5c9d`  
		Last Modified: Wed, 05 Aug 2026 03:17:36 GMT  
		Size: 10.3 MB (10304643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b205f7b080903d4e85185192a43a28e0c88dad40d30c524cadca9d6ceefd5a2e`  
		Last Modified: Wed, 05 Aug 2026 03:17:36 GMT  
		Size: 27.9 KB (27903 bytes)  
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
$ docker pull golang@sha256:e23bc63dcd7b76b44f6c78c4bd967a8ce45316c9e8babcf0627790cc0e57082a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296202191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf56743338ca6e242ce44d8e34360f6f19881b5bcd9616f30e8b165d711f3f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:33 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:17:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:17:33 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:17:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:17:33 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:17:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:17:35 GMT
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
	-	`sha256:b848abf2c245b69a73f67ac97f283c7efd7a159f41d8e53b85753c0d26c742c2`  
		Last Modified: Wed, 05 Aug 2026 02:17:59 GMT  
		Size: 90.0 MB (89972050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810a6c696a7553d287dbc3133c8599f1a3b360698dbbbb09fbdf2ef1838922b0`  
		Last Modified: Wed, 05 Aug 2026 02:17:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c20eac514a5c9308b01bb49fe4eaf873b340a0b814cb1234f2aed52b70030569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d724106493ecb0c6858738f520bbde31edd04296637ecee89f1394b74e5fcf96`

```dockerfile
```

-	Layers:
	-	`sha256:c41d97691c2d73cb32382882189f6de82d4ad1395b13ba729e15c877eeb5916f`  
		Last Modified: Wed, 05 Aug 2026 02:17:57 GMT  
		Size: 10.5 MB (10477501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d70a9f4c4660f7b40d0a0ce51ca978930475eb6858c0e57c49096420dc4138d`  
		Last Modified: Wed, 05 Aug 2026 02:17:57 GMT  
		Size: 27.8 KB (27761 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:c3b9649187439d8c16ebd597520b1875ec1e12088c85ec1b2bc46c7593dd2ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303287111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3d555d122a1e1f48b0e333a6fd1a9e5b112bde1cd36bdeab9d1e3f4015cb99`
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
# Wed, 05 Aug 2026 09:23:51 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 09:23:51 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 09:23:51 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 09:23:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 09:23:51 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 09:23:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 09:23:55 GMT
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
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14da58e4935ba00b9342dd08c64dae70978e210559271d5c37b311640ef3f0af`  
		Last Modified: Wed, 05 Aug 2026 09:24:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:aeea17b7ff602eac4bdfc4c820940bed9d15b6912714b987eab5d17d3a957185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b7a1a5f65853e8495d38bb871df1984eb1d73827526e5e7458aebe318db4d8`

```dockerfile
```

-	Layers:
	-	`sha256:861c7d7a8720df0de8ceeeaf6a4530f1d744f446b6e338d19d9feaf9e5922317`  
		Last Modified: Wed, 05 Aug 2026 09:24:40 GMT  
		Size: 10.5 MB (10470428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c839b76f624ec4ec0ce888401c2f91dcc4f5820a56244fd48bdda7b49b762cb1`  
		Last Modified: Wed, 05 Aug 2026 09:24:40 GMT  
		Size: 27.8 KB (27844 bytes)  
		MIME: application/vnd.in-toto+json
