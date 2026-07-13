## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:a78289fad6eb29a6fdc00d014cd3f67fd0923ba8503346afe263b9f4daaf417b
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:1c25b8e0524a6b2adad16f1c6e9cb85ff9ba72f53c09f673197ba4d9d7be432d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332065527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65b360fcdd484e74b26758a77d57d9a1d7547095dad661b470b9daac4ca4518`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:39:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:41:52 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:52 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:52 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe683040b7e85f8a00796b96adb64fea93a274dd17907bd9e72cda1c2757d1`  
		Last Modified: Mon, 13 Jul 2026 17:42:22 GMT  
		Size: 92.5 MB (92512835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d7d048677a9e309f15f3f0a5e4ac8cb6bd6248d7f3bce4134c428fd02ac61`  
		Last Modified: Mon, 13 Jul 2026 17:42:08 GMT  
		Size: 102.6 MB (102602261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c035fa0583a2ed1b80629ec0cd649b82666415be830d0c6ebd4218fe678ade`  
		Last Modified: Mon, 13 Jul 2026 17:42:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:7314899d05c9687db3376ce794038f3b6ab7dd8eb91c6cbb51c3e2016f74f5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16885956455d5de59fa9ee498ecb80958ad34da7f5deec85babe0a6b036bbdb`

```dockerfile
```

-	Layers:
	-	`sha256:62ce916cde801742d4bc31de9f89de63f4ed9900e0b9ab9000f2f4b3fc86e79c`  
		Last Modified: Mon, 13 Jul 2026 17:42:20 GMT  
		Size: 10.5 MB (10497073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b75a9669da933fef8310a5b336f4653c7f16dd7ebcf331735b79e4cfb3cd2c9b`  
		Last Modified: Mon, 13 Jul 2026 17:42:19 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:7ec8b64b2b30dada2a18dd4a3300b88d664c7a037080848e32c305ad977040c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290512841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ab2741a4a4a6351070518001769c61394c8f5263c51e35fac11c89c60ba25a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:39:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:42:10 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:42:10 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:42:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:42:10 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:42:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:42:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16c85bf5ff1b42ae66f83fdb64a6cd05a854ea2289dfe1b0ae9e4ee6a806d0a`  
		Last Modified: Wed, 24 Jun 2026 03:54:41 GMT  
		Size: 59.7 MB (59661949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434acde39e74d0be8e5a2b643e6969c286b95bf12fda343f4c7cd500996cca61`  
		Last Modified: Mon, 13 Jul 2026 17:42:40 GMT  
		Size: 66.4 MB (66372578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45e113ca2e6199a8c4198583f287b92df437e9eebbbfb343c97477f57a0f94d`  
		Last Modified: Mon, 13 Jul 2026 17:41:27 GMT  
		Size: 98.3 MB (98320075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56bc02849afd8d90f7cb1cf74ad22779e0c81be354e54acfe6944f0bc6f6f99`  
		Last Modified: Mon, 13 Jul 2026 17:42:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:1b44323d4dec8e7e43e396a5f46bb27f6f8ce5851df198c940371cf1b9bc7bed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b2fdbd1b2c384eeb9107c4ce0f33f74b34b28eb1ff2a7f0c3acc77aa5ac484`

```dockerfile
```

-	Layers:
	-	`sha256:bcfdd47e017645f3fd7259f82f73867a47d8d1bf59a09eff108acc761f3595f7`  
		Last Modified: Mon, 13 Jul 2026 17:42:38 GMT  
		Size: 10.3 MB (10303769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85ad5c28bb4cc724b3e2aec792c18c5d3aa58370565c59e20f39f680eec0dd74`  
		Last Modified: Mon, 13 Jul 2026 17:42:37 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8351781389ce3e87abe43cabee0fb64d7c4f26ca2c9d837a94ac1635e2a7dfa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.1 MB (320059221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250c4cf195bca4b0759aa4f27f37444791af6b9b7f70102f5f256dd742c44e0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:39:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:41:42 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:42 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:42 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1dc928540a0d5a3a76acaf5aa5fcff3890b5071bec0758fc8fe40f8f6858ead`  
		Last Modified: Mon, 13 Jul 2026 17:42:12 GMT  
		Size: 86.6 MB (86586892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5731a5f94e129c46506b6f51b7f1d416b6d39475c8508894e8e48a8d20505fff`  
		Last Modified: Mon, 13 Jul 2026 17:42:09 GMT  
		Size: 97.0 MB (96981949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aaf4f00781967c048e02969398466de022b7945c12c2eb2136bd6b11fa51009`  
		Last Modified: Mon, 13 Jul 2026 17:42:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2353d6dfade56b96a23d6560bed4e527277dc8355ad433da46d8d243f1933abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa435bc790784d33390a282b522d9f82fcc71dbeb5ea0167fc3dbf8b1a5aa69`

```dockerfile
```

-	Layers:
	-	`sha256:da1bf0f21304d96df77c37736ae0eb8c66a0b2ed2d2999bd0d10b346af71bbc9`  
		Last Modified: Mon, 13 Jul 2026 17:42:09 GMT  
		Size: 10.5 MB (10524897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2147d1bc8635f74c153ae51894a17b3f0e9c72adebbd1ce4391808befbc3621f`  
		Last Modified: Mon, 13 Jul 2026 17:42:08 GMT  
		Size: 28.5 KB (28522 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:53c62fcc84cf9bce04b4a19ad6c184b81983d2428a3a9a852fcdfd308064a2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330946781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17229c1e8a5fe7ba6ccb09b63053a95b56adbb6b9dc27b75271641c9ebf3f9b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:41:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:11 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:11 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db0110899c29fd647e62f912bfb740fc8af5310cdc227454d8f086f16cba33e`  
		Last Modified: Wed, 24 Jun 2026 02:35:05 GMT  
		Size: 66.2 MB (66244204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27993f59ab2f02bbcdd38b22269b478d9b7ef4a43562f6451a029921a54f361b`  
		Last Modified: Mon, 13 Jul 2026 17:41:38 GMT  
		Size: 89.9 MB (89935900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380b58f291fa5b273e41e2f61343526fcb5023064f6760d0ecb0cd1486c9909e`  
		Last Modified: Mon, 13 Jul 2026 17:41:10 GMT  
		Size: 100.4 MB (100395402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68568fcd4c1342efa673dbd38a39249e92a7fce0d7a2276f9c0d5941fabb4d06`  
		Last Modified: Mon, 13 Jul 2026 17:41:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8b72aae54c25c8c7a061b71f913117a3c70365a0f933be378921dc2179625fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9bfeab3d1563b315a5db8bb3cd4816c3e62e03f287cd41391b0a12247e58c6`

```dockerfile
```

-	Layers:
	-	`sha256:0102feb049fd34b01cdf33627d01ebf5d5818425e0bbd09b648e876acbabab8a`  
		Last Modified: Mon, 13 Jul 2026 17:41:35 GMT  
		Size: 10.5 MB (10476653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a262b0c6c588d2010fd4f841a1a072e8fc1542799957e2d4fa8adbb2fbdd4f4e`  
		Last Modified: Mon, 13 Jul 2026 17:41:35 GMT  
		Size: 28.4 KB (28357 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; mips64le

```console
$ docker pull golang@sha256:454bf114486483a596e8e83bb4f0678902535d203fc77b1826628b47f58ecb7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.8 MB (301769541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e30a6ebb24394299f8130c0bca50cd16b4b3226fef582ebad69038f1b2fe88`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 14:04:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 19:26:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:18:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 18:02:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 18:02:03 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 18:02:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 18:02:03 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 18:02:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 18:02:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d06e8744a62761c63cdcacfb2a61022e2f4c0aa854b6cede18fced28342dc1b2`  
		Last Modified: Wed, 24 Jun 2026 00:26:53 GMT  
		Size: 48.8 MB (48792819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a2f466b887b6a2a52424171128948207dccef13979fc60f50cb7beb67f123f`  
		Last Modified: Wed, 24 Jun 2026 14:05:16 GMT  
		Size: 23.6 MB (23623971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911f76b03057793439aa57a4c1f92b3f5d8467508369f84d1b616a44d437f66f`  
		Last Modified: Wed, 24 Jun 2026 19:28:16 GMT  
		Size: 63.3 MB (63315803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654b25dab3b07b2704810e9680f6eed67322c4a7200f8be9169d2bc4b30b592c`  
		Last Modified: Wed, 24 Jun 2026 20:21:00 GMT  
		Size: 70.1 MB (70084425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a14f3f700263fe78d18234062fe834f2ba3aead253a37aabc69d405f101bb`  
		Last Modified: Mon, 13 Jul 2026 18:04:23 GMT  
		Size: 96.0 MB (95952365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c76d303b465873076a34be8865cde6f0fd9e31bb220e6a14a96319f0016b3ca`  
		Last Modified: Mon, 13 Jul 2026 18:04:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:12fd1330e446765c9fa7f4ad73139f994f1ead2d73b5f0f9e57c58132917d9f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729172c7239002082aba21d65ffa91d5d46185bbbc9ecac54aeb7157bedfa3ab`

```dockerfile
```

-	Layers:
	-	`sha256:94c5f1dcc68561bdb096a1e18e08b995101d3af4aa87b74cac85672a4f4a9081`  
		Last Modified: Mon, 13 Jul 2026 18:04:13 GMT  
		Size: 28.2 KB (28240 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:90bb195028bb00de70e3654747b91e6ae4103c2c4e5d27033ec1800b3961935b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337359842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6619f8b74ca42f1e2f74df11960aa17db14f2b003555874100e119de54e9a648`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:25:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 09:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 11:44:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:17 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217268ac6656bd05839d5770fe7b3c0c976d29750b0c5635d099e473a789a10`  
		Last Modified: Wed, 24 Jun 2026 03:25:44 GMT  
		Size: 25.7 MB (25687048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6542f967f29885e49bf508e83dceee1eda4fdb044dcd68c1237588f15b795e2b`  
		Last Modified: Wed, 24 Jun 2026 09:10:08 GMT  
		Size: 69.9 MB (69853519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9034cb40d1ddee03957e235882d85c3935748284d5ce7d9e3b1fb946a360d593`  
		Last Modified: Wed, 24 Jun 2026 11:45:03 GMT  
		Size: 90.5 MB (90495696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ba5e95b6ffee5086f0309826a8282fcab9ba9ae8fcd16a3725ed1ee2dc1cd2`  
		Last Modified: Mon, 13 Jul 2026 17:42:19 GMT  
		Size: 99.0 MB (98976574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12e54124dd8cfcc57b0c601f967e7aedb840b6a0fb88a8e77f43f6e990d1c12`  
		Last Modified: Mon, 13 Jul 2026 17:41:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0245dc8b1f3d63b7c495ebe60ef4174bb14582f27b14b66f28237c099f6eabf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6de57c09c002ffb236fefc77794d5b68d11daee91fab21101e6bde2a0e8def5`

```dockerfile
```

-	Layers:
	-	`sha256:db10b76193c069ee0a9a126e74e84d35fbea65082a4a9cd85f4851587dba0c85`  
		Last Modified: Mon, 13 Jul 2026 17:42:17 GMT  
		Size: 10.5 MB (10469558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f67001fad39ac11d9c271c4180c59f95daa1085101b97870ed730295e493cc`  
		Last Modified: Mon, 13 Jul 2026 17:42:16 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; s390x

```console
$ docker pull golang@sha256:0deab8af02e1da6d1d13ceb609ea8ca3de3cf1a9a176e4193ce9cdfd5d20c6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304859527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82412c63a03239664b66f5519349ab71ecc0460bf4d384ed8aeba633257decc0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:39:52 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:39:52 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:39:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:39:52 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:48:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:48:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075239c7f31ef6bc9923503289fbabd4a216a0cc1314ab546cdb22b3aa178273`  
		Last Modified: Wed, 24 Jun 2026 02:46:07 GMT  
		Size: 24.0 MB (24038997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98bfd0e5e3c41d5610549c351f2a214a1057c70f21ae763c153398d8481275e`  
		Last Modified: Wed, 24 Jun 2026 04:29:51 GMT  
		Size: 63.5 MB (63498267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4283f204f6628df7ef93b2b62912562b7a359f0997a131878f7f1ca95862be`  
		Last Modified: Mon, 06 Jul 2026 20:43:25 GMT  
		Size: 69.1 MB (69120165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d8998f4596451be5e05276e8f2804dc2705dbebe9a9aee61d0e143808d1960`  
		Last Modified: Mon, 13 Jul 2026 17:40:31 GMT  
		Size: 101.0 MB (101040264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4ae8be810dacfe29d95b346557c88c8e46d3616729a399de065e690d217201`  
		Last Modified: Mon, 13 Jul 2026 17:48:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:183518712ebcc1750e24f9bbb6888bb17c72f3907111356f2ae207249ecb4750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10357969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e90722ddd3f48d0eefdbacc859dc787163698f99c56694a323dcbb179663ca6`

```dockerfile
```

-	Layers:
	-	`sha256:5f8258b55ee11de280c00059a96df6860e4d489b36b3ac3982f004eb800261c5`  
		Last Modified: Mon, 13 Jul 2026 17:48:46 GMT  
		Size: 10.3 MB (10329579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48e9bc20763b20358febfc0e1ec75de0c2deda82aa994a24254aa61f6091ce1`  
		Last Modified: Mon, 13 Jul 2026 17:48:46 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json
