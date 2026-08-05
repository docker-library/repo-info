## `buildpack-deps:trixie`

```console
$ docker pull buildpack-deps@sha256:af7ba92ac0dd10d2bbe26fd2080dfef7a5ac71929b1f5ed9d79083d9751c52d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `buildpack-deps:trixie` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2dd5264c3672c90da4143369e013d5b3528dd0457863f9306c47ce4c7aea8f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379068870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2ae4c4b458dead3aa12dd362471fd4e973ac2b9de0dd7cb5479ac854ef0267`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74736caedd40737be802d27bfe1d5d0e10377ddb1c7b4103391e0bbff5152e0`  
		Last Modified: Wed, 05 Aug 2026 02:17:56 GMT  
		Size: 236.3 MB (236319920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a3700267365400255b2540335384cd09fa8b8e8cb60acbc4e339f52497f624d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17212050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2f00fa99158fbd2bbd150be57e2162e7d1279ee2a194e6582415dad5270b7d`

```dockerfile
```

-	Layers:
	-	`sha256:2effc11681b1f7909626450d7e10de3e31287c9c63554409f17a5ce6db853227`  
		Last Modified: Wed, 05 Aug 2026 02:17:51 GMT  
		Size: 17.2 MB (17201590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f95f69a4680c8ca07d4348b55eeb1311a90d13c039b4a94dc069a6bbd370449`  
		Last Modified: Wed, 05 Aug 2026 02:17:50 GMT  
		Size: 10.5 KB (10460 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:6bda460b63a8841fa4d168982ffc9d7907514f8ce6385087c8f635e0ea936a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343156494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4ca9a8db43526ef883fa1c9b95cfb6fe21127d33b12c4f41a4d7cab56a7b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:33:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ed54f4ae9af1a04d5ba500e0193d535cc84aa6eff10adc82ec178c9d00a315`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 24.4 MB (24364855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3267125ae4d03ff47c8d8fa5f16d6767ca2662245d8a1f49de97e62376e59244`  
		Last Modified: Tue, 14 Jul 2026 03:58:19 GMT  
		Size: 65.3 MB (65329503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8964ec499704b0b900781d729101e10672cc63a9082472262ea061430a4bbb1a`  
		Last Modified: Tue, 14 Jul 2026 04:34:02 GMT  
		Size: 206.0 MB (205972170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b4c65c62f95515283b7ce0cfd9b1f517ac52dcc905a9d48c605174d6bfa69321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16975050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639ed6ad48dd28577c1ede28ccc3749d288007c57a930a637b01c3c62a734a69`

```dockerfile
```

-	Layers:
	-	`sha256:ee361c9fe947a0f0d1567fdad9ef09fac0780a4253325ca1ac64445552500f71`  
		Last Modified: Tue, 14 Jul 2026 04:33:58 GMT  
		Size: 17.0 MB (16964516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4db9648e17ca77b31db4121d8be79c2cae090fde177b0d11160ce437c72b4f5d`  
		Last Modified: Tue, 14 Jul 2026 04:33:57 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6b57d05838aeb3c644d491634710158c38406a24c4186b0d0cbb6038733a042e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325684704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3f9fdf922463e0858c1ff1fd2b293a01d3ae161a081960c89b8f9e3621b707`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:14:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8bac7fdc99a9f96cdc34c1e6bd063d1181c8b53c33b04b3148bc8b98c7d8e`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 23.6 MB (23636524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847b21004c354c8a82f1e64b061add3c7998d83dfedf44e7b5f3cf76541e114e`  
		Last Modified: Tue, 14 Jul 2026 04:15:41 GMT  
		Size: 62.7 MB (62746773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da653cb9ba27452270ba752a039fb9624a7a25f63a4a3915c2174e10fc9da56`  
		Last Modified: Tue, 14 Jul 2026 05:15:15 GMT  
		Size: 193.6 MB (193557678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9a67b5f2b7b61cf0960021be745e8ad3c01ab40c0af5c42cd7b159abf7988c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16980840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba3d96cbdfffd0eb0b90a8a7dca5fbc8d089d389db810ec664179de065f1ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4658abeaeef0872d884d80b2a492ce45a412613cdd3c371ffd106dc5650d71e1`  
		Last Modified: Tue, 14 Jul 2026 05:15:11 GMT  
		Size: 17.0 MB (16970306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dba59af566c15064df78ab83daf34a695a712d5fcd81d884f3625c72f1a0e5e6`  
		Last Modified: Tue, 14 Jul 2026 05:15:11 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d93087821719b46d695649b99e8dbfa74f65944be6787ba2e0bd8e4b90a23d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.7 MB (368673595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b89df3c2ff96731b0c77fde91d3481ef5a569a0d747759cac297ae6534dee3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:15f86cbaf9d054f5834ad4c401d4567c3b1ed249fdf8694c1c455e44a6937b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17296529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda0b22109c7d01f21d2bd77c8c1ca3c69e4ca6ce634a9f4a08a93a6fb6504b0`

```dockerfile
```

-	Layers:
	-	`sha256:ac10d8f0d83c1b617945a5f42c07e88d606ba8d0466396edb1112d85f9eb0d67`  
		Last Modified: Tue, 14 Jul 2026 03:18:50 GMT  
		Size: 17.3 MB (17285975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:050650ae077978a1f7e536a6a548704b700a4acfe59b4476549c23ba9ee7711c`  
		Last Modified: Tue, 14 Jul 2026 03:18:49 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; 386

```console
$ docker pull buildpack-deps@sha256:29530825bdcab7cd8d8d0c9ff9f18bbb6106351c77a5f58c54f38d9c848d4dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.8 MB (387838362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cd63ea5c5cd04b2cf11bd4b1cf21c28421b4519c407fdf43eddc9e463d827b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062c05844db57ef4065a60eaa0d1715c922df19034daf883e4dadec97adf52b`  
		Last Modified: Tue, 14 Jul 2026 01:47:23 GMT  
		Size: 26.8 MB (26800462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1cc5ea947cd62ae2ce24a372d1d425ed7b2f973139c39ecafd214ac3b75fcb`  
		Last Modified: Tue, 14 Jul 2026 02:38:41 GMT  
		Size: 69.8 MB (69829128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321a69887cb8a003965108ff81744276cfdda890e6f58c0d2b5a49d9a078ff4b`  
		Last Modified: Tue, 14 Jul 2026 03:19:01 GMT  
		Size: 240.4 MB (240377282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:250126a330d609724511b6c735b99889f8cafb9c5c4180c3221b8ad89777eaea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17182354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f9612aa0dd057e3efc2250a604cbe7e39cad7abf62d65f9d8197d5001a0d6b8`

```dockerfile
```

-	Layers:
	-	`sha256:a6e565e8362ac27ae840b9cee138d675d91c6436a6cf729c692629132c45317c`  
		Last Modified: Tue, 14 Jul 2026 03:18:56 GMT  
		Size: 17.2 MB (17171919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d99da952351fdfed43923be19246a39e2b79197881d0e70c3e1d58a3da60e2`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 10.4 KB (10435 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5e4fbd36baeb19b9616e6d857e9dbdd14799b54e94ee435898ca14c5f8821529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384605872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcab3841b50b6888a87038a6cee97eabccc1ed4f550d1b6a52d57a0b6489cdb3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:51:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83863de742cad030811407b90530c7828802e9f11207386bf85f9d35cecf7503`  
		Last Modified: Tue, 14 Jul 2026 03:51:33 GMT  
		Size: 27.0 MB (27021065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b551dcb76f19ba607c6efcd591fb5d3e48d58c66dc467f180227abb4f55f0844`  
		Last Modified: Tue, 14 Jul 2026 12:16:23 GMT  
		Size: 73.0 MB (73044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ebbe2a94b46bbcc163c29337c82d5315672b4791a392a4b1d21a151016023b`  
		Last Modified: Tue, 14 Jul 2026 14:52:36 GMT  
		Size: 231.4 MB (231406694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f8540989c8481465d35e94b4c1c64fd12c6a7417a41c4a96ae9b06a7dd44b02c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17198351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79ca9c57ccd33aadf398e0edd7c4c8bf3a62c081e6bbf6d3b95df27b2e462c1`

```dockerfile
```

-	Layers:
	-	`sha256:666eddc97c266c1925551df565bd0eb392aaa36f08782000c42228dc504dc57e`  
		Last Modified: Tue, 14 Jul 2026 14:52:31 GMT  
		Size: 17.2 MB (17187851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cb71cf4882883491d6c11bd565a636fd1b5e859e919fe4f3b41ab747ff93997`  
		Last Modified: Tue, 14 Jul 2026 14:52:30 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:9bd7efcc75c90d3160540e40cdba6560a4b32ecf71b96dd90cdf529e58d8c37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.7 MB (462687547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec9d2b13fbb52f67ef8a162d25b16a1f7f1ee05edacbb851b29632715e2f93d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:52:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 20 Jul 2026 00:21:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56e13f8ba5640653be74c77c11bec4a12b57a50d949a7c24cdcd88f8c959bb5`  
		Last Modified: Wed, 15 Jul 2026 17:33:59 GMT  
		Size: 25.0 MB (24968294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81442ecb065fc9c5f293fca1a82fcd48a01ca1d9549e5862c62bee3c2c85b85e`  
		Last Modified: Thu, 16 Jul 2026 22:55:38 GMT  
		Size: 66.7 MB (66683012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb91f790d1418f83708c578f98c42b574b224639edf10bf2e514a34fbce1cbb`  
		Last Modified: Mon, 20 Jul 2026 00:37:19 GMT  
		Size: 323.2 MB (323238451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2c4f7d2dcd4c8227d12d6a9da4267d32cbaf918485db18382236df3c42a5237e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17268940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:184c78d9e8dc6af3eab65b9cccc0a63c545c2b5d163af3edfa2f12e3d79ecef4`

```dockerfile
```

-	Layers:
	-	`sha256:c73001b9b1a7ff3bf44c1f612155753bf125ca3092ffa2857de08cad7db3207a`  
		Last Modified: Mon, 20 Jul 2026 00:36:35 GMT  
		Size: 17.3 MB (17258440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9641efa6d58cb34f9ff8b9b9cf0b9ac2cfcce3af259b01b4d6c4b0d4fc92e7c5`  
		Last Modified: Mon, 20 Jul 2026 00:36:30 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:83e090f0125b9410a16cea116da1152013b63a208ddd8381b6b4c569b28efb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351608562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb4ad4806d9f6ebb2b6ffb906c24d3cbc4713cf568f25f7960aad415f53e8045`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:26:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63c11684f0eef7c3f7f0fbefbbe513218c6eb99f11d347384595ee632687aaa`  
		Last Modified: Tue, 14 Jul 2026 03:08:18 GMT  
		Size: 26.8 MB (26804611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c8feb8bfdc0a1416f379cc1a217d8affe7b45e12197ca17393856ccbc9910b`  
		Last Modified: Tue, 14 Jul 2026 04:47:29 GMT  
		Size: 68.6 MB (68633831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694e17082c7d17487196495da64ad22a8c01760e8dc6a33e6b980f2247744090`  
		Last Modified: Tue, 14 Jul 2026 05:27:45 GMT  
		Size: 206.8 MB (206788412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0c6a588b2cbf2b313fb976d09f4c3a667fb2ef88bf2b230e43993beab5560809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5965310114a7a5cd58378604bedc9d39cc5912cded9212d4c28ef81775aa54d3`

```dockerfile
```

-	Layers:
	-	`sha256:6e740d85f2292585e3811669fe0276b8d140a5004ba8db71b44a3fe3685ebc73`  
		Last Modified: Tue, 14 Jul 2026 05:27:42 GMT  
		Size: 17.0 MB (16979551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:575773c24d829779eea17d572130fdb0b199830c71a8f6b34e8d5a0936bfe5d8`  
		Last Modified: Tue, 14 Jul 2026 05:27:41 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json
