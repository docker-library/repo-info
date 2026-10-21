## `golang:tip-20261017-bookworm`

```console
$ docker pull golang@sha256:7fcb6d42971dd80f0113cd3d2c342e8ed075edb83c33597ec92ee453f944a017
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

### `golang:tip-20261017-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:ecfa445c2e4a79188ee8f9bf9a79ea8a0154d855ec1ac3c2ebb2e642ddece57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 MB (334607205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf85eb21ce6f32a98206ceebf052c24c50b3494ea216f3990ac3c85cea83de68`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:15:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:16:41 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 03:16:41 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 03:16:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 03:16:41 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 03:16:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 03:16:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0959ba39613fdd89ed3679cb0483740e954fcc9d3e68d882e6f27130ac124e0`  
		Last Modified: Wed, 21 Oct 2026 01:28:06 GMT  
		Size: 64.4 MB (64429299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4e691ccbbf0befe5af27bd7d19475ca03c9128023750bba3281afcffed7549`  
		Last Modified: Wed, 21 Oct 2026 03:17:09 GMT  
		Size: 92.6 MB (92630076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a24858519aea7f492e523d7d83c45029bb45b2733446473c439cb745f3e07c`  
		Last Modified: Wed, 21 Oct 2026 03:17:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a849c2398f2d1fc55e93b5c76a342a3ff6ebfc72b9c26e5d3c49b27d917c7815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815bc6d92bb3038128b967045644d32b4d1c37b6e6a0c9984c933798261c92b9`

```dockerfile
```

-	Layers:
	-	`sha256:35ffed43b7720a4ec09d2a89795515321f8fd989bc31c950604e76928d660729`  
		Last Modified: Wed, 21 Oct 2026 03:17:07 GMT  
		Size: 10.5 MB (10501795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b21566bb3e89c14481838e58e94c6b66ef4e8fabc6c2db08d9b6d846e69aa8`  
		Last Modified: Wed, 21 Oct 2026 03:17:06 GMT  
		Size: 28.1 KB (28101 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:a84fea6e1b75423e5e413becc3ff4154b22c3402e55a38d07014d6794a18a6cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 MB (293216086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662acbde74181b7c953d97c7fe79c7fcb8c686707833212a80e1b640af5ffc3f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:48:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:21:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:23:24 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 04:23:24 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 04:23:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 04:23:24 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 04:23:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 04:23:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8c892ba6482c59c6c4673bc4b52f8b8279d6f30b88b616b25845f3af907bde`  
		Last Modified: Wed, 21 Oct 2026 02:48:32 GMT  
		Size: 59.7 MB (59693453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897854e7110bbf709556943eb6ae6b7f11c10844593a4b698b58d5ff2719db61`  
		Last Modified: Wed, 21 Oct 2026 04:23:52 GMT  
		Size: 66.5 MB (66481068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221eda9dd2b5c7428430575082457cc3102280e87331c6c40859c1ce8c9b950d`  
		Last Modified: Wed, 21 Oct 2026 04:23:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a3f5951578020802fc1e27d6da91f7bf2a0ee2bd1f5b2c4b1314b984f84fff79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10336703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40cf0e32296666d2b2938c99a57cead5280ec0a288bec8942121c1d4e77345c`

```dockerfile
```

-	Layers:
	-	`sha256:1c9a2cc24bea99806125c8a9d5333831e3e87c282c98fec82cd30fb6a6b58d7e`  
		Last Modified: Wed, 21 Oct 2026 04:23:51 GMT  
		Size: 10.3 MB (10308489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dafbe02069ba8a8c36fc7903b7c4e2d4d1b05c4f18e8534b9fbd0310c841e6d2`  
		Last Modified: Wed, 21 Oct 2026 04:23:50 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5ec722817bf1a9d0af8093000b6ea33bfc68e6c37d499a4994abf8623661b3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322621202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b1bdfbe62a9a6ca209424259ef30aeaacb2141519d235121ce68d2a51d9736`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:14:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:15:39 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 03:15:39 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 03:15:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 03:15:39 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 03:15:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 03:15:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3f500343e7e2dfb125dab0e3da0151614ed4139d23d4e7b5b214a9b5bfccc0`  
		Last Modified: Wed, 21 Oct 2026 01:34:11 GMT  
		Size: 64.5 MB (64523759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819a4936024ee2cd827b9afd3f1cbf006ab1061540f8a306e1fde861ca86ead`  
		Last Modified: Wed, 21 Oct 2026 03:16:08 GMT  
		Size: 86.7 MB (86700404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db21356037f2980c66a91bc692a29245f5ddc194da80313db734f3d2ac4b16f6`  
		Last Modified: Wed, 21 Oct 2026 03:16:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:920298b4f0433789bf4601c44e969e0b745de1293b2de53429f7d5e90737fcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4df46a44a7ce206111009d4b7257f482fc6b4c7e5d4fd474b7a0898355863a`

```dockerfile
```

-	Layers:
	-	`sha256:3582f7e588068ae2acdf977262518c8502802cec9ea43d90e9a1de78ca63d3f6`  
		Last Modified: Wed, 21 Oct 2026 03:16:06 GMT  
		Size: 10.5 MB (10529619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758548b1f4467e3d900af1fe4c83a94e39886e467276a354177036254b9059f8`  
		Last Modified: Wed, 21 Oct 2026 03:16:06 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; 386

```console
$ docker pull golang@sha256:ba5343cd0f248ff0b1b24c75afcf9c8b99101bcf0100f4a317513121556339ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.5 MB (333478660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b592666883f1c4de151ad82b3ae275994fe9e14cbd1e2f03de7b40c7494a48a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:48:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:24:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:13:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:15:17 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 03:15:17 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 03:15:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 03:15:17 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 03:15:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 03:15:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c931c0576f2166fcb004f72a7907d54e3d103e9fe67720d889fdb25bfdfecd7`  
		Last Modified: Tue, 20 Oct 2026 23:30:02 GMT  
		Size: 49.5 MB (49511651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb278f446e61688e19b3920610d3ef09cddb78ec196f53a7ade170a7ad811ce5`  
		Last Modified: Wed, 21 Oct 2026 00:48:38 GMT  
		Size: 24.7 MB (24701921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af92d024ddc6bcd24007df1444596af45fac003e05b18a97a53c9fa241b9486`  
		Last Modified: Wed, 21 Oct 2026 01:24:23 GMT  
		Size: 66.3 MB (66271622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bdceafb31fa3b47588e70c1913df3107dde03c5bd5e0cd16ed7a38fb56ede1`  
		Last Modified: Wed, 21 Oct 2026 03:16:11 GMT  
		Size: 90.1 MB (90051555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e78e200ee075b2afd6c37ab0e59a552e60c7068bcdd007ee8fe1e27dd1e667`  
		Last Modified: Wed, 21 Oct 2026 03:15:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6a0a53a8e0a625b733a9e6fbeff71d7f86c35197ab0eb326d4528661a6c45257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10509443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f19cd223ee41465e3a1b70fba049cc5f66db3fccb14d89faeddb76b56366449`

```dockerfile
```

-	Layers:
	-	`sha256:eb88de0fb4c892a205983042973bef26a186ec283e6cf7ea6db306ae38638bee`  
		Last Modified: Wed, 21 Oct 2026 03:15:51 GMT  
		Size: 10.5 MB (10481374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8808c5d94728887552aafe64902246db2fcc289477559650f862e45fbbdb4550`  
		Last Modified: Wed, 21 Oct 2026 03:15:46 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261017-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:5fa20f497f943e524025c02bbec2e3e2e80b4b039fe341eaab89a2b3430caf4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342549613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae569a6b2b39ae73a4bc59f30c07eba00f99d8883d2f769dd51fa8bad634f22`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:10:48 GMT
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
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d41e77c98051f59478b4a49ca0cf4e06c315a989a523c0a6cb8b7fb1d46d288`  
		Last Modified: Thu, 08 Oct 2026 17:12:10 GMT  
		Size: 90.6 MB (90577932 bytes)  
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

### `golang:tip-20261017-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bb43be044b1abb6f934fc410c6d9e8424497f03b781d0e11669038f1c865f131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10503723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2486ee97a00e151a02c41791385c5a8c9e482fd46f60efc43fc4ac9826bb79b3`

```dockerfile
```

-	Layers:
	-	`sha256:9b98188f77d82d4ecc37b332140c27a110e9d8747039338285c71b212c42c5da`  
		Last Modified: Tue, 20 Oct 2026 03:12:26 GMT  
		Size: 10.5 MB (10475575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a6a191778ed6b8fb57a999c8885430488ee8beed76e9c9c4ee430fcee4a8270`  
		Last Modified: Tue, 20 Oct 2026 03:12:26 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
