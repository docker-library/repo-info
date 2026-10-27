## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:a1b2162cafe7c688b26bf46ef4039a01f464ae339f4f0a68730d5f17005eca1b
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
$ docker pull golang@sha256:ce013d922a0bf4d779eb765be4bde842eb7815f4439381c777704fb733e0cde0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 MB (334631786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c289221111e2602ea9e1e71237d92443ccabfec771896f0313f97005efc79d4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:27:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:25 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:28 GMT
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
	-	`sha256:dc0128de526176ef08fca03abc6c75c2525aee18b4ec75371e393a245b72d854`  
		Last Modified: Tue, 27 Oct 2026 16:28:52 GMT  
		Size: 92.6 MB (92630022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82722e2c046f52bc924fd3eab9f7d4fbf5bbac9fb0ce67fcca5e63377a411258`  
		Last Modified: Tue, 27 Oct 2026 16:28:35 GMT  
		Size: 105.2 MB (105178487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20aa84e913a46f1f3556ed197b868736a67863614183aac1bea135b9fd29089c`  
		Last Modified: Tue, 27 Oct 2026 16:28:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ddabfd07d7736a1900537f04c20f21df679b5dc5b56fb3749510340ebf929cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf316283bbdfd92741cf07a4aaa9759d77082fcebd58822bc0a756cc3cf846a`

```dockerfile
```

-	Layers:
	-	`sha256:0b76854e0d1527d2075b19495ef30b39ef4bc1dfcfeb8d277143aa332b46e405`  
		Last Modified: Tue, 27 Oct 2026 16:28:50 GMT  
		Size: 10.5 MB (10501795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b173fa81ce53125bb8ac676a8173d3564b62b9d069ccbcb640820ca65f18ca46`  
		Last Modified: Tue, 27 Oct 2026 16:28:50 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:66adaeab1c2467f6d72ce25a0e544f9ea24800f8b40206ba73e882ce630b2da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 MB (293222025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ad51c11cd915995de2b940ab06810abc77298e6fbac13dd463e1dfd6d61505`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:48:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:26:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:30 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:30 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:30 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:33 GMT
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
	-	`sha256:7ec99df07cf6066077f025da083664e57b56e96746cd090430cf06088ca01439`  
		Last Modified: Tue, 27 Oct 2026 16:28:59 GMT  
		Size: 66.5 MB (66480995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ed0706d066a1f8a8160080fb6eb18909eb49a3d840816f9c4cd9c4cf85b15`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 101.1 MB (101059169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1463ea2eab823bd2a2c931e6289e0427a58aa3aaf270a87d3b2bd59814b38`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:326aaee0c511e6d8eb40e08686b517de8d23c3f6ef0d7d96371d5915482f95af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10336703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f74f0e8c3567abeb8acc7971cb09d64e66a3dda8489b320c61237c617a0abd7`

```dockerfile
```

-	Layers:
	-	`sha256:98acd754aab48ba07d3f5a3f52b118ab32413de7a3eca6a9c629efc548041178`  
		Last Modified: Tue, 27 Oct 2026 16:28:57 GMT  
		Size: 10.3 MB (10308489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4d2da673356d1cfd6c502936cbeb5533d03b1902c90b867de8f53fdbc5a19e`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:139d9a146895085e29e9b24e3b85cc3f546db8b0c14520276e691891bf6ca209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322630708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f1b75dba9e85ae646608ab90ab75a5e018f6e24f91d67a089ce786d5bfef00`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:27:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:29 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:29 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:29 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:33 GMT
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
	-	`sha256:af5252127fcce5da85d034d25f98fb3239fae0c53ca623bfc9d70d367d8a27ae`  
		Last Modified: Tue, 27 Oct 2026 16:28:59 GMT  
		Size: 86.7 MB (86700636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e63cc2709b769d01b299b6ecc290dd6fd049fba9121425facd2f9f9d685556d`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 99.6 MB (99564116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21306d2728d8ef833c20cf8cb482f127fbd035e82704bf030e2d5db899cfb703`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:e92c104857c6376980b526da1fb4400db33cb7230fb983a12d74e512c238ea81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc0e2fee658187a20972dee4c6caa89451bd1e87838883ecc18ec4f7922ae80`

```dockerfile
```

-	Layers:
	-	`sha256:b124cf627e774ce2432082e4d8d94c555422f4154b321fc62a5d999eb94da895`  
		Last Modified: Tue, 27 Oct 2026 16:28:57 GMT  
		Size: 10.5 MB (10529619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd931749fd6a5e895351311858c1d4f031cf3072adee152a7f463e5604b88b6a`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:f72327d1363c13a99bd4c3c65e4a68cf46a2f133664398dee479e50f7b840b99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.5 MB (333498332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97b548bb6b5d78816ffe39c8cc0c1f333618d8af750381d9b91a5a9f4198eaa6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:48:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:24:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:27:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:28:33 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:33 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:33 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:35 GMT
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
	-	`sha256:4754e78cf2d7b9e4d478342c2c6a64690445d7d2f5a5d7cbfc9bfab99f4ac11a`  
		Last Modified: Tue, 27 Oct 2026 16:29:01 GMT  
		Size: 90.1 MB (90051688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472f9a541f4058200fdb5c688e93c6b823dc26a63f30bfce9ee0889838aec45e`  
		Last Modified: Tue, 27 Oct 2026 16:28:47 GMT  
		Size: 103.0 MB (102961292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7d886f9f694595f2d50b3ab9a947da6db182e8dca10aa183480afd75fcc889`  
		Last Modified: Tue, 27 Oct 2026 16:28:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c2045230595c344e6cea1a2c529481f48308173cb3401164fef1a1e3f6c7ec6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10509443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0435f7eb7fee8f47ca6e530871b661773d048a2ec168ea143a1a2c10ef974fcb`

```dockerfile
```

-	Layers:
	-	`sha256:c2aa44132705b9c247cb8dc29d023221e33c209f489fbf6b3361d693c35e3a81`  
		Last Modified: Tue, 27 Oct 2026 16:28:59 GMT  
		Size: 10.5 MB (10481374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:261bb106ce307991d93376482e166e754d0055d5c915cd9d4d8a6bf84c539aa4`  
		Last Modified: Tue, 27 Oct 2026 16:28:58 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:ae73103b237d74dd1a4cc08aa6f82c1489f93bb3da03307ba3cac71e02044267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340208403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb949a31c7772bff47ce99e8e6d16c3accda720eb867fe255afa5ee9b63bb006`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 12:03:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 20:26:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 20:27:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:27:25 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 20:28:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 20:28:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1464e6ff9e88f81f47790e0b4d11c04499f7ec50f83eee4e30ca561e051dd7`  
		Last Modified: Wed, 21 Oct 2026 04:20:38 GMT  
		Size: 25.5 MB (25514941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d030ed614020eda0369d41da0e8a2fd91d38334145593925a75dff283016302e`  
		Last Modified: Wed, 21 Oct 2026 12:04:46 GMT  
		Size: 69.9 MB (69892128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320c3077ba5674386b6ef76c7c53c811ac09b353acc6c27aa71308fb0615789e`  
		Last Modified: Tue, 27 Oct 2026 20:29:36 GMT  
		Size: 90.6 MB (90623028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8ca9ca011184d58c037e97d28044484ea497a6cca757182d4969f97cb5945d`  
		Last Modified: Tue, 27 Oct 2026 20:29:29 GMT  
		Size: 101.8 MB (101813407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4165b164a2db728e4e0e07c61eb2fc6810cc4fd42a9d3bde12d8dc56640a26`  
		Last Modified: Tue, 27 Oct 2026 20:29:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:3d7bd844fb029529ab20741c6a9c65a102ddd2a3d142a891f9368308d5002058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10502253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3f50c1f6d0fc1cac3a4c8c62d2795fb4c121ad6507e3ffd641739b7923eaad`

```dockerfile
```

-	Layers:
	-	`sha256:1ca6c804dfc3d8ad8746e5a0e4089710e2a5e5871adc5da95a8e9a548d461f1d`  
		Last Modified: Tue, 27 Oct 2026 20:29:34 GMT  
		Size: 10.5 MB (10474280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efc04f884263679742ff5c9fc064ab8045b69ee8d80fac70446c81c00635d95e`  
		Last Modified: Tue, 27 Oct 2026 20:29:34 GMT  
		Size: 28.0 KB (27973 bytes)  
		MIME: application/vnd.in-toto+json
