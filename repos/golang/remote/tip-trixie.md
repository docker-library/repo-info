## `golang:tip-trixie`

```console
$ docker pull golang@sha256:d6d95bdfe890c408373be6e074c73037d910975a6b982eb3fa1a6416066e45ba
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-trixie` - linux; amd64

```console
$ docker pull golang@sha256:d56f04edeb90a86dc02f380c50cdd76b3cc1eb713ea0a20361ac4e4572f2c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.4 MB (359401153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06333de26111c942fc61edeb76e15ffeb3ad3c35dfee01b1f8b5d8cfea3120f0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 23 Nov 2026 21:51:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:32 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:32 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052efc1d990a1e342e483a0402de9a92ea99efcd36d5325a01883121058d2334`  
		Last Modified: Mon, 23 Nov 2026 21:53:04 GMT  
		Size: 109.1 MB (109095654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efe33ce08c2ab749d7e469454c13bd2c73074fd6987df765916f579beb88f77`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 107.4 MB (107439749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacdb6479db9deae1ec340d7ef9ba3ca83105cbe2f4bce5e152403ee77c0dc6c`  
		Last Modified: Mon, 23 Nov 2026 21:53:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:58e584a72ced78055c2f33be9ad8523de466754e8b3baaa9dbbb55a48b982581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb3f4af5f6ad8cb9d701dfa532628b1b262e7cf77f0eefe3a0d08aba2c7ebf9`

```dockerfile
```

-	Layers:
	-	`sha256:b7d513a3d8398e241b8ff309d124738a469228ef0abd401252223c74d122e6b7`  
		Last Modified: Mon, 23 Nov 2026 21:53:02 GMT  
		Size: 10.8 MB (10795463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae0c13d34f61ba850a098a1b4b80e544e41e6e17f92edcb2bbb9e05e4dd6c52`  
		Last Modified: Mon, 23 Nov 2026 21:53:01 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:48d7bc0eee6b430c404860d1f1cf6797888a8ecc8a6787b3704002cd1e907955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.7 MB (314718842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bd87487086e4e5a3959361de27979072d6bcbfd861446eb527cc96826c6709`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 23 Nov 2026 21:50:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:45 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:45 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:51:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:51:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baed59a62de6286bda359e23f0ed38cc1f292029c76d66d6a587c6e9cc61e382`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 79.1 MB (79135706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b245899a237a3af132c690f97082215657bd5be945fcbe2d30fc351bd15f3`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 103.4 MB (103355283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f8a9a596f57ab72d197e698d9c29f5979b27f262bbab2dfb3cacc98cb17291`  
		Last Modified: Mon, 23 Nov 2026 21:52:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7009deebb6e9adaf0840b13afd8628cdc3a331915643056c102ac3f1c6025bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1318e9575f561854c168c76daea58c821bdfb10aa5b4371746189a343bafadfd`

```dockerfile
```

-	Layers:
	-	`sha256:c53c99c08b21d029fe7313caabd5f4357d45a7c53ed23edfb57b23d5e9f64cf4`  
		Last Modified: Mon, 23 Nov 2026 21:52:12 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20cf5e7088f0ac172391c24d25b24d26590c41dc9040ecb68369cbba28a6da3f`  
		Last Modified: Mon, 23 Nov 2026 21:52:12 GMT  
		Size: 28.8 KB (28807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c0e88cd25b458e801c151ea4e477aa18c9b7f0cf67e15ba4f6e695073091eb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.4 MB (349375873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710d9d733ff9f69d84d4a2c2859b571aee66af3acfd9e17e176c88684421619e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 23 Nov 2026 21:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:27 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:27 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:51:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:51:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1608f5ab49b90649941c4e17f17d76111339da6300fb6053107322aecf94fe`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 105.3 MB (105280427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5832b11a785e394735436b1d989145581e95a9a87780254d1918be0af3a577`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 101.6 MB (101645398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b46f1971a9e4361d175b00675388d9f51de185ff3e0fbfdaca584e87b91e220`  
		Last Modified: Mon, 23 Nov 2026 21:51:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:076a56b38eb72206f403fee24db4fe0486db68b19d90c57853d1317c2e7110c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449a37372f95558a78f1cac284dbdd8bf7c6ab381badfc8146043d494b74e046`

```dockerfile
```

-	Layers:
	-	`sha256:8e8c3f936554f9dd5644c40748b7b4e3eea34a11b329fc4ff4b77cdb48ce3230`  
		Last Modified: Mon, 23 Nov 2026 21:51:56 GMT  
		Size: 10.9 MB (10915282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca18404f40abb42f759051e938da9bb891fa5df79d403bb83cf75cf7107d488a`  
		Last Modified: Mon, 23 Nov 2026 21:51:55 GMT  
		Size: 28.8 KB (28844 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; 386

```console
$ docker pull golang@sha256:f587ffc3d7285bd9d467f0691a20a92adbbdd179d59dcdb2a542fd987933db6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.9 MB (359925291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f7d1eea69afa401c2d190495664b2df5368284e390371dee0e11e164d3388d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 23 Nov 2026 21:50:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:48 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:51:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:51:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5550752f2c94d1cffe02c2db84f2a600bbddbbd6c2f1be32e084ecf2ea62962`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 107.1 MB (107149761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4213e3c8db6bf2b11a1cac7a3711fe6e326415ca3b60eb2f135ec39bd863251d`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 105.2 MB (105198439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d995f178015f3e31cc9eecce1d0215d33bed19b7b968e08528f40d82d74fc7bf`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:72ab0612bec37d34aaab1cb23485290fe19d2143f8d0324f54a61ab015e8c06f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574ee2907f894535fe47eb84d78464755f7d73a2770e2dbb53cc19d0c853cdab`

```dockerfile
```

-	Layers:
	-	`sha256:ace356fe1bdc56686077ce348e6c740d14b09ce88d5da1890087f1883e105295`  
		Last Modified: Mon, 23 Nov 2026 21:52:16 GMT  
		Size: 10.8 MB (10766725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a327f384d9caf761c96ef2c6295e8f0a76caddc2e34f12efed4b662c7d311f8`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 28.6 KB (28641 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:8b272fd931f251f596bc81ee0b2bc09050204fd8954235c1983958a22f89d47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.0 MB (357990716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7dc21389856f403fa89ff84f28a5cc2a76416cab470b487a810603ef70b1f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 23 Nov 2026 21:52:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:13 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0538299ffef82b87ee7af9b54b12830d0842976c048f9ac1496cb0b1e38ae0cb`  
		Last Modified: Mon, 23 Nov 2026 21:53:56 GMT  
		Size: 100.6 MB (100612461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6398754657f6617d56396f3bdc393c5a6e4b0491499f8730567ce43a74afb4`  
		Last Modified: Mon, 23 Nov 2026 21:53:45 GMT  
		Size: 104.0 MB (104035836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4466acc2903ebb859565971d228c2d6e4b09e961e1464bedc7043dc710cbdc`  
		Last Modified: Mon, 23 Nov 2026 21:53:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f577f7a7652c99345390111600f17fa9f362d9b3fe27af5c4e5b1deb27f6553a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25ad23203139e242672944a5f81b6dae90814c5e38b86522fd668ea7201d095`

```dockerfile
```

-	Layers:
	-	`sha256:5ade467fea793e57f396cf193bfa0f3f3830e058162d03bf7082283e126ee221`  
		Last Modified: Mon, 23 Nov 2026 21:53:53 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8674c455fd217b940f8b44592a724775c683a2c2fe6ce5bc9fbd49a8365d765f`  
		Last Modified: Mon, 23 Nov 2026 21:53:53 GMT  
		Size: 28.6 KB (28568 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:69d7dec85444f3d1024a678427388a9bf18a4822022ef73643ee622260412881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.3 MB (373265320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4840f86c27442e7f7a20812aae8f129be70e272f994f346b55bed1b2aa6b5e55`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 03:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOTOOLCHAIN=local
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOPATH=/go
# Thu, 19 Nov 2026 04:24:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 04:24:43 GMT
COPY /target/ / # buildkit
# Thu, 19 Nov 2026 04:25:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 19 Nov 2026 04:25:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61b6af2de36859513173e78693a2e2982c59b690437aec15bc86a49a7ba885f`  
		Last Modified: Thu, 19 Nov 2026 04:33:38 GMT  
		Size: 132.0 MB (131984085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ca22bbc2fda98851746abe4b299e0c714b7e488a3ecf02950cb68449ddefe`  
		Last Modified: Thu, 19 Nov 2026 04:33:33 GMT  
		Size: 101.7 MB (101703006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae3d49aa57033033ae8acefdc88e432585c08fc8edd1948dc0f8554583655e2`  
		Last Modified: Thu, 19 Nov 2026 04:33:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d5661bdbb250853d35a071051fbea1471e336d6d6959df6e9ef17ada981ec90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10893824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9ed74bd64eb69d737a62080a41df8dec814ae6afa4d6b98a0bd30681e55b4e`

```dockerfile
```

-	Layers:
	-	`sha256:1a614029ead5f89f2f1d8b2bc0ea0e83a5daaba819331191aee4f64b07dc7630`  
		Last Modified: Thu, 19 Nov 2026 04:33:06 GMT  
		Size: 10.9 MB (10865081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb6100d6a94a36eeddee8533ac2ea93bad82315a325dc870bf555137bba5165`  
		Last Modified: Thu, 19 Nov 2026 04:33:02 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; s390x

```console
$ docker pull golang@sha256:7997bae3c98c3da4a37a0b0e6c6b0b924744c3e4469553bc07d230ce569f953e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.3 MB (333288828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7f5835fe53a5aed5fbf5619416fb8c84cb293fc58737f7e2700a6f36c7dccf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 23 Nov 2026 21:50:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:50:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:50:43 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:50:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:50:43 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:50:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:50:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212143a8e0a67d1b0cfa434b07ebb689e9d4c6c09cabc94cd242b395b806e964`  
		Last Modified: Mon, 23 Nov 2026 21:51:38 GMT  
		Size: 82.2 MB (82209657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cd34b458c6176d100150fefe22bd10abee9b4e1cc0bcf39f09c5dde1a049c5`  
		Last Modified: Mon, 23 Nov 2026 21:51:39 GMT  
		Size: 106.1 MB (106116472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497aa672766abf1bc2871dfda34afe5431aa422a1b53bfdfb7d16fc8e986f6a5`  
		Last Modified: Mon, 23 Nov 2026 21:51:36 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8b7bec8592bd80b665416758e658d1c2a5d94673777f479e652562490ddebe2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b24929dee797a6958ff7051306626a3c04c9c87e6417e81bda92bb452d1c928`

```dockerfile
```

-	Layers:
	-	`sha256:72893e7e7493b8f3611eb0bad4f64712369a960d2b6547910880f84f344b1b07`  
		Last Modified: Mon, 23 Nov 2026 21:51:36 GMT  
		Size: 10.6 MB (10605862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc390945cf0c75984e6aca25e1644e71a841f1efdc71a98a744e1c07d7950db2`  
		Last Modified: Mon, 23 Nov 2026 21:51:36 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
