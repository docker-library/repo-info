## `golang:tip-trixie`

```console
$ docker pull golang@sha256:c2499d7b37758ef957f19225ade409533013a6ce05bf469e5c992e90c1ffb7b4
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
$ docker pull golang@sha256:cc1af49f44e36b32e88737a42613f8eabbd9372d68bc1a0ef5e2b7d62b8b8449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350439728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad43c918652c5cd8f35033707dd89880be978e52c743563aca982e8d66814d53`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 20 Oct 2026 03:10:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:11:39 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:11:39 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:11:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:11:39 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:11:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:11:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8fdf7fdf615d23e3b6276f2cddc9137852720e290963715b3cf2e3b5d56f47`  
		Last Modified: Tue, 20 Oct 2026 03:12:12 GMT  
		Size: 102.4 MB (102445082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e38077118c51023a8ebfc9ba3e68f73e8abef519b57f79863a15f2c974912c`  
		Last Modified: Tue, 20 Oct 2026 03:12:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:50c3adf0bdf44b6b2186b5d4cc2315b8f4bcce131da7b7d38663cdd6a06731fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10826201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bca24a62659e26ce22b48d7aa5a54d35d79c172816dbf4f1eb1c900611e8dd`

```dockerfile
```

-	Layers:
	-	`sha256:1b5d80f44c78a677a5bc045cfa43c3fc5034792961908a833f534b9c413be331`  
		Last Modified: Tue, 20 Oct 2026 03:12:10 GMT  
		Size: 10.8 MB (10797516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:801320aa3dbef4b4349c5975ff77c5736b862f06c053e36a4db63b7af7654e8c`  
		Last Modified: Tue, 20 Oct 2026 03:12:09 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:2b30c21e951d79d82b48a1a97d26d76de2cfb49e62121af13b755c298fbe3f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306351718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3863b29e13f34252e04ef2d9720cb740d76707cfc49d35765581b1a3521699f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 20 Oct 2026 03:13:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:15:00 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:15:00 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:15:00 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:15:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:15:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da2bc1d40e0c89474b55c8511c5a9f0d1fca3b48964954bc979f105fab0963`  
		Last Modified: Tue, 06 Oct 2026 03:41:06 GMT  
		Size: 62.8 MB (62759938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102bba1758fb0ad967a29fc43e3bf0097c00881b7d291e9ded91c745e9acecc8`  
		Last Modified: Tue, 20 Oct 2026 03:15:29 GMT  
		Size: 73.1 MB (73082967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa8f54ac9a4d9ff762f1b23958be85cc765641d83572a4cc90f26eab0ffe951`  
		Last Modified: Tue, 20 Oct 2026 03:15:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:84e0ee43b95e7c63e7487b7192db8d597f6ed34ea66e3def5a63439a4a69221c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10622212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b66672453fc8909082a9a533f583a95f11ba8a64695418a74ff82c9ced4da5`

```dockerfile
```

-	Layers:
	-	`sha256:46469c5f3307c7ae52fdcba9a4957940c5c90139e5c6285a67903239b4dbf8f8`  
		Last Modified: Tue, 20 Oct 2026 03:15:28 GMT  
		Size: 10.6 MB (10593404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cef7b7161feb3240cf87bc844e296661704673333d7cc12216c56c55e870dab8`  
		Last Modified: Tue, 20 Oct 2026 03:15:27 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e85294cebf0065fa4606444055b26d4ae3779e18b4786e2c29492f92ee22ddea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340569517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb515c1d95054985cfb8033ada7aece9a643d63ea82313d402ddbbe80676f7e2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 20 Oct 2026 03:09:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:10:56 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:10:56 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:10:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:10:56 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:10:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:10:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b120a7c110788772a0f66bd19fff552da06c530e803c6582ff3c7c5c6939c26e`  
		Last Modified: Tue, 20 Oct 2026 03:11:28 GMT  
		Size: 98.6 MB (98592142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8825ea9be20dfd01c74da6e647eb2eaa741b9b867fefb151910964a8e40037c`  
		Last Modified: Tue, 20 Oct 2026 03:11:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:fda564e8dde1d97a887e6011d4c615a3009ccf00e43e1982a81ba2b8c46040d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10946171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf2f966e4eb920d8ce4e8ac148051b653b6d0ca26a0a033ff97fbc76a270b03`

```dockerfile
```

-	Layers:
	-	`sha256:4be47dd6722f4c956c7c41f5ee9a789df06c8a60e1e62add858e95c6ad764ee8`  
		Last Modified: Tue, 20 Oct 2026 03:11:25 GMT  
		Size: 10.9 MB (10917335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d7e9c7ee9de0ba77afbdeac555eff1f2ac919f1262d375f0c47ead66da71fa2`  
		Last Modified: Tue, 20 Oct 2026 03:11:24 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; 386

```console
$ docker pull golang@sha256:997d26de77c2a0b419632673d237e2e4e4b77b08aacfa15653544cf39324d6a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351383676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9148171b3cab93a5dcf51b2eaba218c76847964b8ee6b5302aad01549b7bb282`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 20 Oct 2026 03:10:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 03:11:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:11:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:11:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:11:36 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:11:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:11:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cbfaeb235ad0daa03294a921e8d9fb916fac246df65aa13cbf5696fdb61f8a`  
		Last Modified: Tue, 06 Oct 2026 02:33:15 GMT  
		Size: 69.8 MB (69846987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8c76c50b3eebac95a1e2a53a63fc26ce1410e36d2728a705a50b98eeef5984`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 100.9 MB (100885302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e81ac9acc6b61a1e28216c265126b49fee7a84968fed77dac94db5400c4a4a0`  
		Last Modified: Tue, 20 Oct 2026 03:12:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7fae201bfdaf7439d0b517d791537c44a7d770843903aa770890ee846a68ee28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10797419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260a3e23393a5f34a676cdf333c57afd5d4e67e750074ca14916e2bdc93c3666`

```dockerfile
```

-	Layers:
	-	`sha256:2eb60a4a25f3618b365a697e5d38edd0e8475e49240863b0596f5e574afaaf69`  
		Last Modified: Tue, 20 Oct 2026 03:12:05 GMT  
		Size: 10.8 MB (10768777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde429e57cbd99bab72ebbbb146195dbfae0a61d5e74869d9f22182d72d53375`  
		Last Modified: Tue, 20 Oct 2026 03:12:05 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:b237f9f61298817d4b8a9a65edddf86c811c587972cb76f26717755d368d60c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348198907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbf5c8c139fb17e1271b569b3e288a8b1881b54aa2e0878e10025b1445b5a68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:53 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd755399b9c7323fd96b40a78a5e5e123878fa481c517d7cb1672f297a2b8b`  
		Last Modified: Tue, 06 Oct 2026 11:41:10 GMT  
		Size: 73.1 MB (73088931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70dc472977c636274c1b1d32bf5023796c007057041972564e07292bb2035f7c`  
		Last Modified: Thu, 08 Oct 2026 17:12:09 GMT  
		Size: 93.1 MB (93115916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3969c5ba5e57deec40f3cea5a93cb146887629c240af3dd3c420cc91bb72540`  
		Last Modified: Mon, 19 Oct 2026 18:04:11 GMT  
		Size: 101.8 MB (101763666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a214476949c6fdf4920ff18f978589df70563213158acebb4c0dd18d5c01e7`  
		Last Modified: Mon, 19 Oct 2026 18:04:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:37be532535559844bed76b1ee712a1f0603f89c12f81fc9ce3eb5d75301891b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f563c636cb83086f503799951a1b53c98719b8a3b85314e6ff0bd24d2cbdec`

```dockerfile
```

-	Layers:
	-	`sha256:0d63d02c34581aeae695742a1959649c7a31028558080d4eefac3e1d4fe71aca`  
		Last Modified: Tue, 20 Oct 2026 03:12:25 GMT  
		Size: 10.8 MB (10793307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b81f599f1c186774f8604c691baee0bb343e09f3ad4cd6145baa714fb126c80a`  
		Last Modified: Tue, 20 Oct 2026 03:12:25 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:291d2343ced3718275e82e2797d0e05e3988366a2e32fc3d773a05b6b3bd3ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373578543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ff6f43b0bd953382687c14745ff8e85e6202ffb000637d226188bb4dc84311`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 07:44:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:33:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:33:03 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:33:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:33:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cd477161cdd2b30ec371c89dc566cb5623e15556c206ab4af7a6ab7a2f9b06`  
		Last Modified: Sat, 10 Oct 2026 08:07:54 GMT  
		Size: 131.9 MB (131885721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8abfccbebb6990984afc48a50bcd0c4168b9e37a31b0d6473e7418e677a2de`  
		Last Modified: Mon, 19 Oct 2026 18:40:49 GMT  
		Size: 102.1 MB (102138235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b06b8b9cbfab93478323434c945a4446f577027e6b2b51040488dc14e871a6`  
		Last Modified: Mon, 19 Oct 2026 18:40:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:42335941ae0a724e75e2e642dd635d549518ba0e9a0c3918ff0626eb70d750dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec32eea37ba8a716e98876f44be84b690b0c2ed8119d84eb5355101bc678c08`

```dockerfile
```

-	Layers:
	-	`sha256:c022b8c9aa1d5803066886d7e355c9618528c0846c7da683e42240b245962234`  
		Last Modified: Tue, 20 Oct 2026 03:56:43 GMT  
		Size: 10.9 MB (10867136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe072a0dd737f695db882a5e452419109a8b01779f7ca9776972444ad154fed`  
		Last Modified: Tue, 20 Oct 2026 03:56:42 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; s390x

```console
$ docker pull golang@sha256:d7107efd01ef113659b1e7d30d7801a683558cbdac96b606ad6173fdc8a0039f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324945382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354bd253c3a5be9aeab89ecd3fab4fddd6709bb441363c0d94ad377dc2fce493`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:13:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 19 Oct 2026 18:01:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:36 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:36 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:01:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:01:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1b78aae7260f76f502ab7b85bc020f8bd10bf4a2140f84573948d91aba0b30`  
		Last Modified: Tue, 06 Oct 2026 02:38:36 GMT  
		Size: 68.7 MB (68656790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387a29ae14c98774937784799a3115d81d0ecc1b9863949073bdeb9304791146`  
		Last Modified: Thu, 08 Oct 2026 17:19:16 GMT  
		Size: 76.2 MB (76227342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6fb31eef0025b29c46700c5b5c80f355cb9e06a94e748ae3ea31b41560eb52`  
		Last Modified: Mon, 19 Oct 2026 18:02:56 GMT  
		Size: 103.8 MB (103786913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fcd139d44b5c0b6699902b12faa4602c1b0330ec0bd272d338e1ab4067831c`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:eb81c2695774c28195a7e910a01340e611cf8929b49b28b7068d8aeecae77df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10637343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883f15a8a81e2292119fda71b734791a13c551842513ea93e5be1fd269eadd5d`

```dockerfile
```

-	Layers:
	-	`sha256:41b695538b675cc46747e16ba42c7edee7b7d8f87294814be19f2f6fdfff846f`  
		Last Modified: Tue, 20 Oct 2026 03:10:12 GMT  
		Size: 10.6 MB (10608663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d62e698d632a41635cb3f9a79eb1d1a8521968d0fecc1529d5783513cde3ad47`  
		Last Modified: Tue, 20 Oct 2026 03:10:12 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
