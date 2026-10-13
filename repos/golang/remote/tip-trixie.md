## `golang:tip-trixie`

```console
$ docker pull golang@sha256:dd97b4b70894360ae38246d7280901a013da6016fce7cb2e0b10597e07665ad4
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
$ docker pull golang@sha256:c0e11bb7f4967bb7967b9b8b8ab862743ad35017481e81655e662596e6697221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350446740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcbe2361fcfb2b9b79569209eb11f2e61b950b5a74271607307735adac5ae0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 22:56:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:57:23 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 22:57:23 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 22:57:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:57:23 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 22:57:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 22:57:26 GMT
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
	-	`sha256:f7587e110782efb43a456e532864ae5e3740ff15652fa671806219b5000dbe8a`  
		Last Modified: Mon, 12 Oct 2026 22:57:52 GMT  
		Size: 102.4 MB (102412882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65717b91cdad98d6ed6d8f43d8abd7754dcdfb05ec6c68cf36deb1aae597fdb1`  
		Last Modified: Mon, 12 Oct 2026 22:57:33 GMT  
		Size: 105.2 MB (105193062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2116b7486fa5180f705d3f0d65685a18786a0edc0e1057076b512cc06695a31a`  
		Last Modified: Mon, 12 Oct 2026 22:57:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:2ac5b0f9aa4fd74244ba9ee92aafb9b157aeb0f17fe8270a1a3e3d008dc79953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10826201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71a89c4c0c562acb1ea5888995bab1f2c9d4ad3b9a00276ca49dff319fd4c85`

```dockerfile
```

-	Layers:
	-	`sha256:3726149a67f38193fcc6e1fba271bef12d50113a7f90ae49c15a9b41c3cefde3`  
		Last Modified: Mon, 12 Oct 2026 22:57:50 GMT  
		Size: 10.8 MB (10797516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6c47f1e80d1976f6c27a86eedf0a168cc1d52950d85ecdad2ebebc39d2afb19`  
		Last Modified: Mon, 12 Oct 2026 22:57:49 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:667b19a3d48ac289660ef8188f399c087a0de18d71a0a7e08562c94145b29258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.3 MB (306348734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5bd90f3cb488e12cfb9ea2ab511fb0e74554b801c1afe3e3b42285d1550943`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 23:04:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:30 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:05:30 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:05:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:30 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:05:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:05:33 GMT
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
	-	`sha256:1e3ef4c369f52218302c1ec2fdb7ca119b3af31d0b44b5a0fa88af2be656dcbf`  
		Last Modified: Mon, 12 Oct 2026 23:05:59 GMT  
		Size: 73.1 MB (73050106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc87745cdb05c3d59e063baf735960355ce5abd2dd91683f9a6a9eeaf3b0fc73`  
		Last Modified: Mon, 12 Oct 2026 23:05:53 GMT  
		Size: 101.1 MB (101083033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752d255a5b51c851d3982a5e7cb0fcabd7ab0d987bdec21223254a03f29d8d67`  
		Last Modified: Mon, 12 Oct 2026 23:05:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3ab0691e93c9cc4daf5faf74ee81eb8af6c6fe4be8e3d5a776466dd38bfb1228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10622212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a13c631ca0daa3dacf47c07d9453d3cfa9ee2ba2ad85e3135a155b05ef70934`

```dockerfile
```

-	Layers:
	-	`sha256:be3305ac6b4bd3eac36ba19ef4c346f678c9b79106c1cc1b962f4e8a9c7de864`  
		Last Modified: Mon, 12 Oct 2026 23:05:57 GMT  
		Size: 10.6 MB (10593404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4985be5771392e416148cb40eb5ce6a546d8cca62fffa3f21cc1c064d240b58`  
		Last Modified: Mon, 12 Oct 2026 23:05:57 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c0f739f337ac3bc0994d00dd55dfedc7bd9315d3e0b6059d9bb1946034df7cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.5 MB (340543514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa115771bb645b93f9d5a0545bbb005c5979d77e438ef3f808c49c693c6090bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 23:04:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:29 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:05:29 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:05:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:29 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:05:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:05:32 GMT
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
	-	`sha256:5c5c9eaeb9928bf442b6db77aed41d71f421088f5e4a1a3a93f867523bd2824a`  
		Last Modified: Mon, 12 Oct 2026 23:06:01 GMT  
		Size: 98.6 MB (98559586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a6b26d4e0c26f9dbbaa330a0512a75f183e7b29ecbcd724145cc58533764d6`  
		Last Modified: Mon, 12 Oct 2026 23:05:58 GMT  
		Size: 99.6 MB (99561393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d943f3d2736278d872b1eada8f98756bac64f0ef02e5948ee724b77fd5ca589e`  
		Last Modified: Mon, 12 Oct 2026 23:05:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:fc06b2a530329a661eda99b55c3f77df2a72ab95932dbe90c2c4d16f8ead8634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10946171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cb383d38149727dd5cf955e11e6ac35afc9cc82ed510d812e511834bce5559`

```dockerfile
```

-	Layers:
	-	`sha256:3a710762188412a84ba4c2be3bbbc2d5018599b841e760b2508bbc07d134f781`  
		Last Modified: Mon, 12 Oct 2026 23:05:57 GMT  
		Size: 10.9 MB (10917335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d04892b42ce9cd00285ebf53ec82474343ce444dcb600bd514e87eac60941532`  
		Last Modified: Mon, 12 Oct 2026 23:05:57 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; 386

```console
$ docker pull golang@sha256:dfd3d6842380c22cd83ca64441e21eee7036e4c0253a344b7aae50e424b0df8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351372233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8cc1d0b983c78175ec9689d31439c5edfed4b3b915010716776f20c9be1709`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 23:00:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:01:54 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:01:54 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:01:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:01:54 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:01:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:01:57 GMT
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
	-	`sha256:fec8a9b9bcda5eeb56e4c0e782a507804c316b8f60b66091e9a59098a4add1c8`  
		Last Modified: Mon, 12 Oct 2026 23:02:23 GMT  
		Size: 100.9 MB (100852395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb807c52ee12493231d14bc2a22bbd56636bfe01015243adb3e22dee40c0d0c`  
		Last Modified: Mon, 12 Oct 2026 23:02:10 GMT  
		Size: 103.0 MB (102963215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fc5de8a26f4a60e4bb0d1a2118d3b76d983b4f9029c7b46f9bfd72bb189b32`  
		Last Modified: Mon, 12 Oct 2026 23:02:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:5618c799ddade521ac9df84eed836141c5d782105f46d6224a3e0737384c41da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10797419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ae65fee9d94bfd5f3ee5ce71bb247bdeea116345908c0c6204c4598f7c26c4`

```dockerfile
```

-	Layers:
	-	`sha256:e048fb75a9da6851a3739b342ca6edf90773af3ec09333621fc4d41677f1f700`  
		Last Modified: Mon, 12 Oct 2026 23:02:21 GMT  
		Size: 10.8 MB (10768777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abe6fbc131c2edbed2404599dfe42af4ee61130848a428d5b04098815dc26773`  
		Last Modified: Mon, 12 Oct 2026 23:02:20 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:ed5624e5ce88faf93d86b325019b098d15e88b613e413466728d5dc271fb8d6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348203649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5b2db43e13fd74c57d0079edb4c6ea67f8cd5e1a03ec65ed3522c95066e87b`
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
# Tue, 13 Oct 2026 00:54:13 GMT
ENV GOTOOLCHAIN=local
# Tue, 13 Oct 2026 00:54:13 GMT
ENV GOPATH=/go
# Tue, 13 Oct 2026 00:54:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:54:13 GMT
COPY /target/ / # buildkit
# Tue, 13 Oct 2026 00:54:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 13 Oct 2026 00:54:30 GMT
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
	-	`sha256:4b34e883d33722590e15fddfa61da90ec14728b57ee958546f7a00424614c84c`  
		Last Modified: Tue, 13 Oct 2026 00:55:32 GMT  
		Size: 101.8 MB (101768410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04479046b628c3aa111616155cdad98485194d95b5a8a838bdc226d193df8d48`  
		Last Modified: Tue, 13 Oct 2026 00:55:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:32ffdc881faf2b941c5906776c01183b106f9a870ddb377becb9f2b5b3072911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6477721a002cff002b6919cf4709a583f32debb004b0feec01ae676bc5f00aa1`

```dockerfile
```

-	Layers:
	-	`sha256:3bcd06c2054cf89d85e6106ef7393df8c3fccad30db3a3f3ca4dda90ea3c654c`  
		Last Modified: Tue, 13 Oct 2026 00:55:29 GMT  
		Size: 10.8 MB (10793307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e48bc8e618a59b568e0fbcecce2d4f1230cddf5ff259c06e00416c824adae07`  
		Last Modified: Tue, 13 Oct 2026 00:55:28 GMT  
		Size: 28.7 KB (28736 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:59b6e2d6312e2fdccc1036562f22a4f7a4d4a7a8f69ed3ecdeca0842f72dd0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373642140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1584b65b23d772a69a98442c35a59f5d2d862f69ec98ef1f23422631592572`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 00:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 30 Sep 2026 06:48:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOPATH=/go
# Thu, 01 Oct 2026 19:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:33:40 GMT
COPY /target/ / # buildkit
# Thu, 01 Oct 2026 19:33:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 01 Oct 2026 19:34:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a46bffab9fce37ab8764ddc4a0df7902b9a552542a9a0b30211b8ecfd8e11`  
		Last Modified: Thu, 24 Sep 2026 23:44:16 GMT  
		Size: 25.0 MB (24972374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1f71bb791d26a4189c3a956df1abf3f0a0d661ce0d2e3143516a36ad6b66e6`  
		Last Modified: Tue, 29 Sep 2026 00:27:17 GMT  
		Size: 66.7 MB (66705357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf353757a3c02e82ebc2429f87b2b595cc306b3e16d394ff76ac310d50923631`  
		Last Modified: Wed, 30 Sep 2026 06:56:51 GMT  
		Size: 131.9 MB (131885599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f952667ce7d4fa0b42af84acc0ebd694f60fabe2a8c17c0b63b181ed368fef8`  
		Last Modified: Thu, 01 Oct 2026 19:41:07 GMT  
		Size: 102.2 MB (102211657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede492106c89fbf826cc3c07988f9cc4b4ba73675b5acaa724d8f2733426b463`  
		Last Modified: Thu, 01 Oct 2026 19:40:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3c0ffde96bc78511979351c675080cc54f6f4ebe4b962fbf0c43df4431a4b7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67f5f02ab2e37b85ef578c75b5a26c749533f671e72503a820eefa710fb8fce`

```dockerfile
```

-	Layers:
	-	`sha256:1c50dc3d5b3262d6c6061bcb113213ae6a8dd9d42baf56deabc1a496b62b2c8d`  
		Last Modified: Thu, 01 Oct 2026 19:40:54 GMT  
		Size: 10.9 MB (10867136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e3f44121412a67f3afd6bbfc033f654bd8ee8a2febc288c589fb9384ccd38f3`  
		Last Modified: Thu, 01 Oct 2026 19:40:50 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; s390x

```console
$ docker pull golang@sha256:0e8c986c93f0d6df29203a11eea3110b7fd2e610e04f9ad68a1b98c23fe602b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (324983057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60af1e7a87e2358d724dd32c33107362562401729642262eba33a0b783ecf29d`
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
# Mon, 12 Oct 2026 23:07:14 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:07:14 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:07:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:07:14 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:07:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:07:21 GMT
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
	-	`sha256:887538aad0ecae41064e3556c7c745b7a16e3a786559b00a5655b81402b10bd7`  
		Last Modified: Mon, 12 Oct 2026 23:08:34 GMT  
		Size: 103.8 MB (103824587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4ab55363c4c7b5a420152abe659ba0e8ab656dde860d73b7d1db2875ee691b`  
		Last Modified: Mon, 12 Oct 2026 23:10:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f0aa753383d33aa3d242227c75f6d236434497253446c3c053d353989628776c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10637343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41073c63ff65a7329bdb133c368140e1277a2ea0b99161ff1f074a781b9102d7`

```dockerfile
```

-	Layers:
	-	`sha256:a074e87c476e9fe11d7d4b1a5f6bd0069281adf609fcc104414c65722a0d772d`  
		Last Modified: Mon, 12 Oct 2026 23:10:06 GMT  
		Size: 10.6 MB (10608663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d63c6fb10cd0cd04ce8020de2579c1817aad7c3a4febac11ee166d78363e8f4`  
		Last Modified: Mon, 12 Oct 2026 23:10:06 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
