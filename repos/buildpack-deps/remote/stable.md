## `buildpack-deps:stable`

```console
$ docker pull buildpack-deps@sha256:880a5e3d451b50a7b1acd06093a980771a40c2fac2bce29a2145e0f4825266f4
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

### `buildpack-deps:stable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5ddb4ca0c05a2746b1c7b711751532b6673e604444a948ff4aed493bfee4a896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.8 MB (379844761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e8229c75dc9f51a5aa3555b2ae1f6451992627d13bd5475785be792df4b4c6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992d9e06c2e85b99901bc1e8b27e557e9537e4d0eee8d4cdff13bc0f9bdee2e4`  
		Last Modified: Wed, 21 Oct 2026 02:17:47 GMT  
		Size: 237.0 MB (236996741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:09738f4761976aaed2add83c8e214652ab879eba2ee426b1b8ea88f2b1d04dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17215372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98a8c55ba30e0a6f7da19ab55ae205b27ddf1984842a1774107d935c2f6b194`

```dockerfile
```

-	Layers:
	-	`sha256:ef7ec9140b124aef84cacfb9472eaf578307a9d72b71e52e772f2f5542d7d43c`  
		Last Modified: Wed, 21 Oct 2026 02:17:42 GMT  
		Size: 17.2 MB (17204910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22d6fcb5e98bf853deab16b8163279d49dc54c7eb4ae11d2aaa192ef85a118b0`  
		Last Modified: Wed, 21 Oct 2026 02:17:41 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c662eb253b70f36fd0a417a4cd935c6cdd629cbc5d421202f32fe2085bac0e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343970828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369b126694b90c27481d6c79b878a0e628e3d762c2cc8776c0fbe1018da28ee9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:13:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83902e4163989560ed5e5a05e1775bc79e7d58bc33cfa8c9efdf74512f232ba`  
		Last Modified: Wed, 21 Oct 2026 00:48:45 GMT  
		Size: 24.4 MB (24365141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a514e4e3df7de6aeffb7187435a645d86ac3a67b5af968ab3c1e49921314a3b`  
		Last Modified: Wed, 21 Oct 2026 02:09:29 GMT  
		Size: 65.4 MB (65352174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef6c2923864098585463600504c097306f258b0828ee5a7858adfa110bc5057`  
		Last Modified: Wed, 21 Oct 2026 03:14:14 GMT  
		Size: 206.7 MB (206693620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1d59ee6758f0ba97e44aa367f8273019e384e64100aec1d648dfd43bf603b3a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16977643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77e3959f4670d09faf5b1782d8bdeed6199172568bf76ba38ef3ccffb92a134`

```dockerfile
```

-	Layers:
	-	`sha256:9974f0a7dbf3ce39943f6c722d8109adf72ae604031d74562d775dd875928df1`  
		Last Modified: Wed, 21 Oct 2026 03:14:10 GMT  
		Size: 17.0 MB (16967109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49444795fd75f6d63ef1c532331265c29bfff630d15e3dba3e00b578b99030cf`  
		Last Modified: Wed, 21 Oct 2026 03:14:09 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3e553348ff4e38d432922ea1a9b6dddb6c656c3e7d88f13815c2bf3135ee8a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.4 MB (326409480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c6a48ab09d766d46f5eb90a2acd1bb49442391479a4d8f5d7da8a548401bb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43deb428fe0a20fb7751c5ead6eb80f4a8e44726b4ee003bfa67149c3166220b`  
		Last Modified: Wed, 21 Oct 2026 03:14:50 GMT  
		Size: 194.2 MB (194196301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:82683f35a35e7300aa897087da084531a331ae388b953a35e6e821fc1cf2a605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16983434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094d3d67e6ff64856a20379f3c5b1a65e4f5ca5dc8f8ee8658a4d0143f6e291b`

```dockerfile
```

-	Layers:
	-	`sha256:ce2d7ea600cdee083c06f27165c9288b644762ef8c70c3504f0950ee98de24ea`  
		Last Modified: Wed, 21 Oct 2026 03:14:46 GMT  
		Size: 17.0 MB (16972901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac9e1074a320650b8936dffcd8aa16d66320592db37fc2b5877a48d20c2b87eb`  
		Last Modified: Wed, 21 Oct 2026 03:14:45 GMT  
		Size: 10.5 KB (10533 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:65daac02cdb65848d0c60d15da1a2ac98b507b9d385efec9bc2b50c449fecddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369527551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a60db6778ff71722f7b07985dddc3f495c1dd67e89973ea02250c3391b1e26d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1168ed298b87949310991d4d75ebe3a183265520d7854d16569bf3d10bf12d55`  
		Last Modified: Wed, 21 Oct 2026 02:17:30 GMT  
		Size: 227.1 MB (227095197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7f9ab1a5dbdabc43e53c5bd189faf0edc59519c0295ef4baeed7eea5c8ed16a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17299121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf8bb8938f1bad6fdeb4b40c69b5ca9004b4daa07dc91a16b56c6db347f7cda`

```dockerfile
```

-	Layers:
	-	`sha256:e9c6e0b024622605c546db391c9ee61724b0fe61d9a56f2a1974e066778987a9`  
		Last Modified: Wed, 21 Oct 2026 02:17:26 GMT  
		Size: 17.3 MB (17288568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e191a5a8fb81f3dba5a3926c913cfcc8978f5b13f7881ba12a5423a0a923fa69`  
		Last Modified: Wed, 21 Oct 2026 02:17:25 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9e93084d9cd8facc377e4499f454c2257bf8d54a928c909d245cab7ad5767afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.8 MB (388770657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c645a89404ecfe8342ac3fc22add2b7cc6e8014a2ae47108834764b19147b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909f16c3ccf238c02074d6be87cb65bdd236ef35710db0691a4d49412dc9f8`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 69.9 MB (69856853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e9167336de1e1b88d19089283d79b0e19159cc39bc20689bda4992116eeeb5`  
		Last Modified: Wed, 21 Oct 2026 02:17:58 GMT  
		Size: 241.2 MB (241205540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7c08637a74e5f54915b75bca81c46531a4838ab464768b143e516fdd9f92a34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17184953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c9bc882632c4d38531afdd2de751d474d04e198285b7474e9b8326fa0c047e`

```dockerfile
```

-	Layers:
	-	`sha256:7a72489e51a6e619436509614714581e268715bef088073f99fa918b310cc13e`  
		Last Modified: Wed, 21 Oct 2026 02:17:53 GMT  
		Size: 17.2 MB (17174518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8409827c074b9a4583cb83b5b49d7ee8817dc2047bd367c3e6903244905bf807`  
		Last Modified: Wed, 21 Oct 2026 02:17:52 GMT  
		Size: 10.4 KB (10435 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8cd05ea7941fcac2cfe9097b08aa5bd2307de1c5fdd1ff9f6f95dd41cadae12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.5 MB (385537416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6517546f0ab596b139c44ae9028e7422167a9361e6d9bb1ac75e46fa1b36dd0c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:22:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:33:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8de6f8901db850f86f9e68b13db2e5cfb33d704fa35193b08356b97ed1e8ec`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 27.0 MB (27024125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7744e5d6fd3bfcd3262b3a9e3b2a27318e06fd070d6b1166cec1ffd0eb1390b`  
		Last Modified: Wed, 21 Oct 2026 12:06:36 GMT  
		Size: 73.1 MB (73097411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c246ff8874bafd896a244316cd9b47022a611e7669e29e48a6f989acbe99379d`  
		Last Modified: Wed, 21 Oct 2026 15:35:32 GMT  
		Size: 232.2 MB (232208302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:39116680d7a821fa509a59a870211e87deb1c2e61df225c4e073b467991f14a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17200930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddd93617bfa5dee67bcbb646532bbbf62e64b2247112654369af1758ebb590f6`

```dockerfile
```

-	Layers:
	-	`sha256:2f13d32e9e0a75147d49566394f8278de8ff109f466e6b7e404684727aea094a`  
		Last Modified: Wed, 21 Oct 2026 15:35:27 GMT  
		Size: 17.2 MB (17190430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe4f0085099740dd1cb3d7c3bdbd8d4492b21e250a052dd98a7dd6fbf8f6e834`  
		Last Modified: Wed, 21 Oct 2026 15:35:27 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:d7226662e5b486b4bb1b0f3acf742d70a02f9af023e79ce8d11a47c5ff107c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.7 MB (463678356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3640e33404f88b11133dce01f75cf77df69ab424f62be6afdcadfd6d4ba078`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3ad1f0b87ae4251a8447b51495eff9b2de0607193d2c8cd9e820f25ade3519ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17272701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea8bbe093ca0ceb8aa70c62a20ec642ffb8353000962fa7ab4fca17cdf0a513`

```dockerfile
```

-	Layers:
	-	`sha256:622bfa0b9242b6de03f3163c6e3f1c043a9c65258b63275986b99f55759f33ca`  
		Last Modified: Sat, 10 Oct 2026 07:05:19 GMT  
		Size: 17.3 MB (17262202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bb9d995cd292a5a85c2da07db2a8ecb4f4ed91754d1b00f89b7b789bd3120ac`  
		Last Modified: Sat, 10 Oct 2026 07:05:14 GMT  
		Size: 10.5 KB (10499 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a1fe98203b70955a0b2460ed5aa7be95660f35d5939adeddcc33e7f40c388415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.5 MB (352471667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3227bcfa9f349c2f07a53a0a282b695f2b797b3d975ef58916aff7cbcf521b14`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:25:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21749c740ddcacabb16b27febc2fc7e459e877eb7fd999966f02bf7486ea4a04`  
		Last Modified: Wed, 21 Oct 2026 02:26:11 GMT  
		Size: 207.5 MB (207534168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6c967528f5d24bc4ea81cac51a6fb9d323544c16864ccfdf0b20c039063caab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16992604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d52900437ec88db034194d3de938669aa6408d004d696e5b2715f06d4c7d27`

```dockerfile
```

-	Layers:
	-	`sha256:1d6e9c552dd7dc75e7310e6424758b874fab3e0afcd5049d6d732dc612b577df`  
		Last Modified: Wed, 21 Oct 2026 02:26:08 GMT  
		Size: 17.0 MB (16982142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37cd585ea720e9344b7268192659f0d0a0784651ef751769efaa6b4ff9780d00`  
		Last Modified: Wed, 21 Oct 2026 02:26:07 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json
