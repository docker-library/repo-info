## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:350e863f1200f9959dd48fd7d77aaef0aedfcbc6356eee7d835423bda381a545
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

### `buildpack-deps:unstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6a7a2e745f87bf619466ced6c95bfeebeca33136753842cacb79f7a5fb5b4c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.5 MB (642520022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27429842881b6fd644ab9535a235c8977ffc25dcaa494c56569ef314bf719909`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d731411aeb3196fe433f8309b736b892475fca5ef141d75893a10230d0d5d5`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 28.0 MB (28041358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3edc06f29bac9ea4d3dea7e53b73f2c1981058a945362b25731354ab1b6869`  
		Last Modified: Wed, 05 Aug 2026 01:33:40 GMT  
		Size: 79.7 MB (79742169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691e147b3df4f7113a7f4b3f49ec3e1de09f602e6968a49a18272a71d98fbfff`  
		Last Modified: Wed, 05 Aug 2026 02:18:24 GMT  
		Size: 485.3 MB (485349392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a68a8ee87ac636319474996b671daca2ce32f26bde811e53da0e5099db47515f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16965791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521ea2e7c9cc2ea0929ec6971182883f6a2c99b7418e260fce493e2ed73861a4`

```dockerfile
```

-	Layers:
	-	`sha256:01d1bad4e92c81e24f1a7a7673b7f1bbfca1fb5d1caeea115feb77a97ef261c9`  
		Last Modified: Wed, 05 Aug 2026 02:18:15 GMT  
		Size: 17.0 MB (16955658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05cd37af86f3ac011c28b59caa56d44cbf742c1856e8b8150947b5a96288ca7d`  
		Last Modified: Wed, 05 Aug 2026 02:18:14 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4e89e89faabd3b9cc3dd6b86fd0aad9ba9b53c9f0b51fcc02b54f32d3196b100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304503141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a603542871c887d6a55d69081b2ab527fb1a5ba05c1fd50bd1756dfedcaa0324`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 02:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:56f6eb49166be48a96505a3cb30479ed7bba799856a72fc0ac4fdaa74dd921ef`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 45.8 MB (45761330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1b68246de367282f99cbf7edfc3bf59cf036d727865cf3e45de1303e33bde6`  
		Last Modified: Tue, 14 Jul 2026 02:31:02 GMT  
		Size: 25.4 MB (25396520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb827bf065e1b7bf6085c2881b972271f4691409c7e3a819e41845839d77401`  
		Last Modified: Tue, 14 Jul 2026 04:15:40 GMT  
		Size: 74.0 MB (74011581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cd8fb8d6484c9a069b19fd11fc3e5e6454f57ac501997a6231a09b172b18c2`  
		Last Modified: Tue, 14 Jul 2026 05:15:17 GMT  
		Size: 159.3 MB (159333710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:48f430a20bd699dfdd27568963c5817d3192dede2134a9bdb55354ce488aa72e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16645659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f09becd9d9ded89ead6908a7e44d82167cc814a819a44082ccfa318e34daa7c`

```dockerfile
```

-	Layers:
	-	`sha256:71b1d93dc2ee38a0f63617bf3d0afec5e50ce47c4925233f06f0c60c750e7de0`  
		Last Modified: Tue, 14 Jul 2026 05:15:14 GMT  
		Size: 16.6 MB (16635462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:269743a76b62c80099cf076a43b5267b7c6b02144e6333c16647a7df632b4eb2`  
		Last Modified: Tue, 14 Jul 2026 05:15:13 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ae4a7be7762f3713cf22cd7c4ec4e7540587620f07427fd05e5890d5dfd734d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.7 MB (354707568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef9feab1d7731690598a3793d57e31653e0303dc8683036a00ebea183e1d19a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:46:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443df5d9b4c983aa55f566335af19417100c2925ec7efd6c50e74c4e05e6df67`  
		Last Modified: Tue, 14 Jul 2026 01:47:08 GMT  
		Size: 27.2 MB (27225176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7968db662fcbc614126ec3fc0dc61486aa0c797c93f39535394b7875dc4e8b2`  
		Last Modified: Tue, 14 Jul 2026 02:37:20 GMT  
		Size: 79.0 MB (78954320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e1a48740382135c42ba070d91077c2c75143cb072c290a52c6e46864633d10`  
		Last Modified: Tue, 14 Jul 2026 03:18:56 GMT  
		Size: 199.6 MB (199647753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:633f93784f82a5ba4674b95a072db092fb8bcdd936f820d1c8a94803ae12e6f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16971010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33bb81ff69a9a6878d7922fe6302889da4fd8dd2ee13f5fff18a899e2e76d3`

```dockerfile
```

-	Layers:
	-	`sha256:39127bee33f4a23f72caac4ee146152bb12c557b575dec81ad9cf32071bd3e25`  
		Last Modified: Tue, 14 Jul 2026 03:18:53 GMT  
		Size: 17.0 MB (16960797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee861ad44ccb636955adc6ee4ecdef7c03a0ec03fde873f03afada7d110abb56`  
		Last Modified: Tue, 14 Jul 2026 03:18:52 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d45e4e2bd61c75dcc78dc97f87b860b980edb9e6ac8e05ebf11551a95a8ffc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.5 MB (367503014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62eb8e3d9933127330286f6838e57d7060ac9688200c5aedf371154557174f41`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae53ddb1e095516038a38011bf3e6dda8259acc739ed46a5bfeb81089e5078cc`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 29.2 MB (29152557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3a27a48d6fd7cbb4b77ba29662aed3a634a105bbf7f5373f302ac93f08990e`  
		Last Modified: Tue, 14 Jul 2026 02:38:46 GMT  
		Size: 81.9 MB (81937610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7aea57ea5df6dfb9cc791a38d07c5cfd5132121eb3ffaaf2554f281fae6414`  
		Last Modified: Tue, 14 Jul 2026 03:18:56 GMT  
		Size: 206.2 MB (206221646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2a75fe92169ac0d37b7c15c0b5eb8ff971e4251c91465fd1aadd6efb378d7a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0af9dbb0dd4c508f996b5c1293e7931ecbd57af1cb87b4a7c47893a5dbc74f8`

```dockerfile
```

-	Layers:
	-	`sha256:e748d2a3f0545940162f008e8d7e01199696c012115c757e0fe889a3b63cdcc0`  
		Last Modified: Tue, 14 Jul 2026 03:18:53 GMT  
		Size: 16.8 MB (16822988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea29662284f09eda009758cbe2b8c4b17c339360cd961804b98374cfaec2bc8b`  
		Last Modified: Tue, 14 Jul 2026 03:18:52 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:34cb6856a2f287881daeb969157c72215bb451d5126f9da700eff0e466f24372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369833103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0837c1a96b5e15f384b7960dcf20c3a4e535bf63734741d994f7744b114d0497`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 03:50:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:50:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fab381d38d54382fff171f66c20a79e5a3635a25848a60c6cf6a6fbc4e75fd6e`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 54.2 MB (54187305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abde0b9abfcfe7b355ae0c9b8bcfdae707404d70e4e816f5ab91eade15abe11`  
		Last Modified: Tue, 14 Jul 2026 03:50:45 GMT  
		Size: 30.2 MB (30196266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea62099ed86ffd38d1b0401321627dedf475a9ec88aa63b93d060a01ea929beb`  
		Last Modified: Tue, 14 Jul 2026 12:15:17 GMT  
		Size: 86.5 MB (86514649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61047db694799947f91e4fd085121f101cce4df4d600f644cc02891e66f1dc7c`  
		Last Modified: Tue, 14 Jul 2026 14:51:54 GMT  
		Size: 198.9 MB (198934883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fef5f6d8a7a41b322f30d16d8fa29f912ce8799daed89ae6e8829fee8c49cd4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16863545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba7b9d465d5c9c50ff3c307e80a321093683d1580a25e141327b9e2bb31dbdc`

```dockerfile
```

-	Layers:
	-	`sha256:58f1ac528d270077f8b23324ab37c5d27ef86bd8a2b2d7bafd0102814c3cba8b`  
		Last Modified: Tue, 14 Jul 2026 14:51:51 GMT  
		Size: 16.9 MB (16853381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f074f6acc47af8e834cd8e0b108a03820e60d6b5a0784c0b186a29033a44401`  
		Last Modified: Tue, 14 Jul 2026 14:51:50 GMT  
		Size: 10.2 KB (10164 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:1deb4fbee96ac25e4b317008aef6a46e2d57e589b8d23271070eb802ceac4c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488153314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6698a319ed8c06746ef50f0a46c04c9366c2006d539c7ecab075b09b32174fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1783900800'
# Wed, 15 Jul 2026 17:28:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:45:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 19 Jul 2026 23:58:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1be6f73fee28b568bfd2983847008ad3e045372345842108c1717134726f14c8`  
		Last Modified: Tue, 14 Jul 2026 00:18:18 GMT  
		Size: 47.0 MB (46976859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f22f7dbb38520320997d4f4595820024a83e2c201d16f2f9a01c9de002b538`  
		Last Modified: Wed, 15 Jul 2026 17:30:32 GMT  
		Size: 27.3 MB (27318389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55400ca5db8218110976e847f90cd1c284ac0a806e59ed56db817fbe0857bbb4`  
		Last Modified: Thu, 16 Jul 2026 22:49:24 GMT  
		Size: 78.3 MB (78349821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21df7bc673e1d51d71f13fce9b234455c5f89411401f2948d18ff11b583f1c93`  
		Last Modified: Mon, 20 Jul 2026 00:14:44 GMT  
		Size: 335.5 MB (335508245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:97eb58d95e58fe095cd4cc33c294bb2128148d4892d77ea4a4d5f877f2564fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16935100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec67b24d8fae6abbcda6fc69dc1188cc907a5c60ff664dc94fd8c5bf399f3e66`

```dockerfile
```

-	Layers:
	-	`sha256:1feb847a8c04b34ebf0745374271ca9026f0ed3ec0621244c30a5d430d2dae1c`  
		Last Modified: Mon, 20 Jul 2026 00:13:59 GMT  
		Size: 16.9 MB (16924936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d25d8e6b69312d52963e16db4876e37af49eca38bad528c9d3f7c2f47d01af0`  
		Last Modified: Mon, 20 Jul 2026 00:13:54 GMT  
		Size: 10.2 KB (10164 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:415dc31a9b2e83d2794b119319430a69f4126dcf39b451598ac3277f84960398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.1 MB (333141865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8066bf42e545c5d46e302056dcb247776bbbec69833e22e29c65178a943d205e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 03:07:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:26:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5edc945190a0c39bdf657a310c42986617c2cda52e9000bb8f8e914615ba5c56`  
		Last Modified: Tue, 14 Jul 2026 00:15:29 GMT  
		Size: 48.6 MB (48599867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd495b241210e4b0a788cb4a753adadaa6ed306585eaff5d757a1be878c975`  
		Last Modified: Tue, 14 Jul 2026 03:07:50 GMT  
		Size: 27.6 MB (27607303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cb8fedc432d0c476892099e2847164c7ef8e1eb0510ca46b3f241046ad454b`  
		Last Modified: Tue, 14 Jul 2026 04:47:35 GMT  
		Size: 80.2 MB (80206673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c380d7999ec76a349b42fad33f3a8ec9f33ac455d1c03507664f6770b3a45d4`  
		Last Modified: Tue, 14 Jul 2026 05:27:48 GMT  
		Size: 176.7 MB (176728022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:445be39ee310293497c265f09a2ad84ad93b344c7c1a52e727bac5b2c5e1b8f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16666806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc5e757441fb613c11549960e9baf40a5f1c91c70934fa9856e6dedd41d9c5b`

```dockerfile
```

-	Layers:
	-	`sha256:dbd4ac2d8c3bf51f3e1533fc0c2e1131742b01e6cd2b97a344b7989a8bd79d49`  
		Last Modified: Tue, 14 Jul 2026 05:27:44 GMT  
		Size: 16.7 MB (16656673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8736ca137d4ca7ccc0da5cd3d20c985846a82083195816d26209e1e7439c46a`  
		Last Modified: Tue, 14 Jul 2026 05:27:42 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
