## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:502edcef11ac3f538a235b79da22ad7bac8a136877b95ec014c31722dd13670b
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

### `buildpack-deps:sid` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3c64c64c4d3dfe52db94e6cba0b13a873c342b2e0ad22434f6e3c2048d17feda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.4 MB (359436492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4861c0757ccc5a5bb55021f23507ab27df188aee83535333c2e736d619ec54b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:43:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9ffa190462c00dd3e91866b45b51875d2406be32a6a9ba23ddf0342daad6a`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 28.0 MB (28017509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efa106fbab9160a214b581611ae3853802baac294d16c6520ed635c30d3fc90`  
		Last Modified: Tue, 14 Jul 2026 02:30:17 GMT  
		Size: 79.7 MB (79684996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be65aca3617623b788f0ed59189dc7028db164ad6eacfc8b60d611a12e8f807`  
		Last Modified: Tue, 14 Jul 2026 03:18:40 GMT  
		Size: 202.9 MB (202869953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ec7c9caf7af0ca90cd48a03e410deef6026e6f05998ac88f03aee4fa393fc4ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16864770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adfbb3c555f950d3957175dc47ca732bfa1a03ae94855ff1e51e3d3bf042209`

```dockerfile
```

-	Layers:
	-	`sha256:410161cc1fe60996e8fd3d3c79f991f8c347a0fc6523d3a645beb11b0265c35b`  
		Last Modified: Tue, 14 Jul 2026 03:18:36 GMT  
		Size: 16.9 MB (16854637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822d5f7a9c403bfc19ebe8a782e6a9f3ba82d530035338fe5acb5059646981ba`  
		Last Modified: Tue, 14 Jul 2026 03:18:36 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm variant v7

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; arm64 variant v8

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; 386

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; ppc64le

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:495bf78e5e9766bbdbf308a4ae368af9cfadac38992bc8ca67d5bdb5efbe308b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 MB (485298470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e57f5964769dfdf5fd0c6572e619b3816667fc0e5b6ce4c4fbe02f2cee7419`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1782172800'
# Sat, 27 Jun 2026 16:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:44:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 15:59:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e8bae1b6870c9b437f01d25a862e15ba295e7a79fd96767c6645eb7fdef5abfe`  
		Last Modified: Wed, 24 Jun 2026 03:29:21 GMT  
		Size: 46.9 MB (46898250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e5a3a6b67be6b5f648cdb0fc2f69f94d8fb9df5374644e5045cc659aa9911e`  
		Last Modified: Sat, 27 Jun 2026 16:18:18 GMT  
		Size: 27.3 MB (27296174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc4e8d8f6ac0dd209d4e4784f09a7509814776537d3815c90e55eb948ccaf68`  
		Last Modified: Mon, 29 Jun 2026 10:48:21 GMT  
		Size: 78.1 MB (78144376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c974cd6daf6d6e9ed6bf18be6e457c122f71c703e0efc2970992e355aaf3b7f`  
		Last Modified: Mon, 29 Jun 2026 16:15:28 GMT  
		Size: 333.0 MB (332959670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0edef9dc694956db21a04e55f5d0c18da9c2898359d1e3d667f377ea52af940b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17084780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5952e36474314c603b29235247c26336e6558190ab120d12e08f2a1c96615f`

```dockerfile
```

-	Layers:
	-	`sha256:c2c5830e32264b557a40a900100c97aeea5941e47ab61fb3bc4925435520a770`  
		Last Modified: Mon, 29 Jun 2026 16:14:41 GMT  
		Size: 17.1 MB (17074615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06b3b37d661e53865189df7bcc3e7b5f8ef9b243bda071b09d945653276e7144`  
		Last Modified: Mon, 29 Jun 2026 16:14:35 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; s390x

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

### `buildpack-deps:sid` - unknown; unknown

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
