## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:5e14d602536ecc67bf5180a52460ecbaca4886b252544ccad161e94a514cdc55
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
$ docker pull golang@sha256:352792e99271c401c415f1104660b0342dd21616191b5e900d39b120bd9873f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331684195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629a757aac3c039cc40dcb99100cccc17eb2ea74dfbafaa7d993d4daea46fa8b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:12:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:14:15 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:14:15 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:14:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:14:15 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:14:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:14:18 GMT
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
	-	`sha256:b34a782a4a45d0636574e7bb5e3ba89fc719d1f31e5f1fbf73542de6ba5349e4`  
		Last Modified: Wed, 19 Aug 2026 00:14:44 GMT  
		Size: 92.5 MB (92545233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6302ad5acbd0a72908d0d8441f6880515b63b18bc90a73306654fdbb4103ea`  
		Last Modified: Wed, 19 Aug 2026 00:14:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6cfc1d88eea8c8432d0d512176222bf84cdca3b2e01a27ba19813f5725fa42b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2965f7b69bd74ddd111d71ec72dc61f3fa32bd669a2f3847272b09a26b4e39a`

```dockerfile
```

-	Layers:
	-	`sha256:e0d887a7350f133fb78e07a6e0dceba3c776b60ce24f1b37b97fadb7e1eb78dc`  
		Last Modified: Wed, 19 Aug 2026 00:14:42 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c19d2db49cad757ed48fd1c0bc6d22d0b0243784da7336fe2b4c017e4a2b7b`  
		Last Modified: Wed, 19 Aug 2026 00:14:41 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:b107254741576c564ae2bb842b1e64c5fec3dd2d9dd4b606177e97396a210dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290473840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf67fcecae6d31b2eaebd4c9a65ad257dc2134e04639f6794d600d44300e0ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:15:24 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:15:24 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:15:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:15:24 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:15:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:15:27 GMT
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
	-	`sha256:fb3b36008a0bcafa0004f4e3ff4b44b8007ab8e5919f8c41dad375bfaea9d8d3`  
		Last Modified: Wed, 19 Aug 2026 00:15:52 GMT  
		Size: 66.4 MB (66410685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8630b96b806c0acf66c84547f4829254d1610c4c81acb69cba2bb507c8ea928`  
		Last Modified: Wed, 19 Aug 2026 00:15:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:64a0e8ad20b4ed917276a4144dc28eee5b99cad468281df37778397440a54db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:019136966e22a0fa930bf404ece99b2cf9e3f8b5a1b4f1a750112159a6d5efb2`

```dockerfile
```

-	Layers:
	-	`sha256:e28afd6f2de3b3ce7d7b96231e25af375e74617282cb627a7ccef6c6cb06f2b2`  
		Last Modified: Wed, 19 Aug 2026 00:15:51 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88280e4c1eb05805beb3f9c423334c49c48ede4203460a444abc11536bb778a3`  
		Last Modified: Wed, 19 Aug 2026 00:15:50 GMT  
		Size: 28.2 KB (28210 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:77c2494e0eeafb6d11f1458293220e2eec5dea89e195c851206c199ada339d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319808897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24183db9af74716d944d71b9ddac2a23a228276dbf32eabecfb847a8835dbf07`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:12:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:13:48 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:48 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:48 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:51 GMT
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
	-	`sha256:093dd42e53a898989f33c8522280f1e6b84233bfd57f6ad5a55725b43fd85143`  
		Last Modified: Wed, 19 Aug 2026 00:14:17 GMT  
		Size: 86.6 MB (86627020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7c5d7fc67653c48caac2e65f718e8d6be7390d53ef124f12cdaa150fa4347c`  
		Last Modified: Wed, 19 Aug 2026 00:14:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2c05b8d473b39829eadb538ef312123ff0bbfb4d16f2629f2d2127d690952bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f08f92f1bdd6fecb73916b67aeb15a2c0e518a583090c5fb54172d99e732ffb0`

```dockerfile
```

-	Layers:
	-	`sha256:c597b4bf547c731a77dbc608421fd00ee794d9ffdccd0b0b6caacaed60331818`  
		Last Modified: Wed, 19 Aug 2026 00:14:15 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a65f15f2ff5b79ef76458c9972e9ad98c89dbbfc4e52195fbbf0e8f14cde5f`  
		Last Modified: Wed, 19 Aug 2026 00:14:14 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:ae4989a8636144aabf30756f7747059924a22e77fefd8a3ffb0efd2d4c3ff656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330919892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef03d5f1e6ece31fdfb16b5bba85b7eece29f497eb6b17bcd04ee8dacc7f6c7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:13:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:14:43 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:14:43 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:14:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:14:43 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:14:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:14:46 GMT
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
	-	`sha256:654e4ac2703258930f5af0a281c2aad45daeec229917bf306b9762520be7ceb1`  
		Last Modified: Wed, 19 Aug 2026 00:15:11 GMT  
		Size: 90.0 MB (89972074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f823cd9fc7db2067e335af5bf50c60f90e81418b1234563ebbb89608245bc89c`  
		Last Modified: Wed, 19 Aug 2026 00:15:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:07212ddb462a925352d700b42a24d3e11cb4001709185251b50e1f8a1cdc3dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932a8b7d0ca4f625927cd9775d4954b4dab52bbac4fce01f3bdd66c1a7ed3691`

```dockerfile
```

-	Layers:
	-	`sha256:3fa274ce454bb7782fbd3ecb162857de981af76a76673f73255fe6ee85ea97e8`  
		Last Modified: Wed, 19 Aug 2026 00:15:09 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8cb82e23db2596678675de9dee5347a534fd3c20f4bc834e283edb0c15b1495`  
		Last Modified: Wed, 19 Aug 2026 00:15:09 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:65da95787b91707417fffffa46baa5987155c3c2d530604321d11536054a5aaa
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

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c64847feabee8f3c2513f8b3b3407b96a5d2f3cfd0e432063b38ec5ae5e46b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd36465152d369401cf9425e2c750acb18c0e1ed7bd9d96b58b4713f8ddab6e`

```dockerfile
```

-	Layers:
	-	`sha256:571c5060e13aa7f1a03fc6d38a7f6dd5b5de02471d7d934c4deaa5ee08d7f069`  
		Last Modified: Thu, 13 Aug 2026 22:30:57 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:777651e6568cfa037bc2b0ee77d26603104fd92fcce414ae8458dc4a1c364b21`  
		Last Modified: Thu, 13 Aug 2026 22:30:56 GMT  
		Size: 28.1 KB (28144 bytes)  
		MIME: application/vnd.in-toto+json
