## `buildpack-deps:stable`

```console
$ docker pull buildpack-deps@sha256:be7690994dd23f3282de93c6ed541eca9d5012fc777ca22627fb62b75ceded0b
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
$ docker pull buildpack-deps@sha256:f5590aa6cfe9840d4a661f8c697653f519f12945f7f40825ffab6f63f234b77d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343990706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9800d96782bbab7680b4cfeac62f319d61f8af07b406da235344928f72eaaf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:45:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:49eebe9825563c4d645a935992f1602e05bccea6dfe4c79e51c1fda75045c88e`  
		Last Modified: Wed, 28 Oct 2026 00:10:20 GMT  
		Size: 47.6 MB (47576128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a6d424e5dc332d064da509d1423ae9e34dea3a27d50d590dd9e7527ae50ac`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 24.4 MB (24363879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3595aedc8fd393489fcc8e3af04cf51a91911b54eff514e9b1e97fa8cc8883c8`  
		Last Modified: Wed, 28 Oct 2026 03:05:35 GMT  
		Size: 65.4 MB (65357928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58344f7dc5944edc17869cc5f90807746705ebf3d061fca6f651855ab7b68453`  
		Last Modified: Wed, 28 Oct 2026 03:45:56 GMT  
		Size: 206.7 MB (206692771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:699dcadbb0d67dc80a7e4367a513b994b02cfc4e0bb1f082d34f88ec291ba28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16976070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0d8b634617da4e797b4e7841f9c92e87978c701e8d2af251d5f4f81f75a8d7`

```dockerfile
```

-	Layers:
	-	`sha256:6977350b12452e9939344ae759ea6072f2b93a96b86b984050fc6e9dc77e8ad3`  
		Last Modified: Wed, 28 Oct 2026 03:45:52 GMT  
		Size: 17.0 MB (16965536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e78193c73b5be5a250013b9687a44939e8fe53dd6c9dd648c107ab384b551202`  
		Last Modified: Wed, 28 Oct 2026 03:45:52 GMT  
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
$ docker pull buildpack-deps@sha256:e95290ae09bb6aff3a9bd67b687a38c450cc256f0779da2ed9926dde4167f483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369582317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea96566756770d9be4846f51a8cd7569918dd79a17f1ff1b76bf66d8dc2dc1a0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:17:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a48e1a423f7b0196a5eeb30fa9312d4ddac8315491bfd1dec87951691b59309`  
		Last Modified: Wed, 28 Oct 2026 03:17:45 GMT  
		Size: 227.1 MB (227134615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2fe9cfe778e8987d9f0ad233a1599c3b47cf5b4e4b1b79ec8e5d66598a21094e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17297549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e863de7095c31e940a9e4e7ed8cedd98c6eb570212838632d824bf3fb2ad24b`

```dockerfile
```

-	Layers:
	-	`sha256:fc85f38042553188f12e2e232be2ce8ea5f19718be0196102217905e36e64764`  
		Last Modified: Wed, 28 Oct 2026 03:17:41 GMT  
		Size: 17.3 MB (17286995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b231dbf93bd864c9b61a3b601fe1e27d8da0349f28660e4d6d9b90cd982c73d`  
		Last Modified: Wed, 28 Oct 2026 03:17:40 GMT  
		Size: 10.6 KB (10554 bytes)  
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
$ docker pull buildpack-deps@sha256:444ebd1a1c9fe48701d787a9345fd466464cced2b1cb0b5a11925cdb10d93407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.0 MB (464018134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d631dbeb61438304db643d9e2ee3b13f35b6ea7dd64e0468387f705d0391151`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:15:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 04:05:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 19:51:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32139541f4549e36734c5a88277feea7f893f4a9131721e90b51bf8f6e15227`  
		Last Modified: Thu, 22 Oct 2026 05:17:47 GMT  
		Size: 25.0 MB (24973515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b2622bb15621b5ef42ed7c0e2e08f6323cce082c63a1a767ea4a063cf866d`  
		Last Modified: Sat, 24 Oct 2026 04:09:18 GMT  
		Size: 66.7 MB (66713038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5746c21797d5eedbf88d05b1e070cd418cc051309c96b0e48ca311ad93874bca`  
		Last Modified: Mon, 26 Oct 2026 20:08:04 GMT  
		Size: 324.5 MB (324454945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a57d1284f8f630f28c9bb7c8d938e3aaa902aa3c194af48e115d95f58922cb05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17269937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc0ac32273e208446ea04d91f77cd38cf124b8e1e862567c84affb0dd726fca`

```dockerfile
```

-	Layers:
	-	`sha256:8f3ae196edd69abf9463a0156ab4d95f75ff54e7f8f658b708c742cc1599c774`  
		Last Modified: Mon, 26 Oct 2026 20:07:20 GMT  
		Size: 17.3 MB (17259438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbcdf5aa1effb781ca266fbf3d3798134358c70267eb46fb67d67473e3209c03`  
		Last Modified: Mon, 26 Oct 2026 20:07:15 GMT  
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
