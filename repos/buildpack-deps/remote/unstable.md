## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:36ca22425f98c2aed6e0aa1442625a4bae207442b8138861f0452bdc67ff062b
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
$ docker pull buildpack-deps@sha256:dfc7595de3e15149f7eefe40b41477d6dc90fd46bf901890fd97f9a32d2b2fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 MB (644847889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d711fc36da56551fcb15b2ca3615f6f51aac9ea867bcfb7e31247f6547380a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:51:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:18:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c06668f005a26c26ade5e0901dbf29a9a96d7b7fc2d00a4c3606a2bde0748f`  
		Last Modified: Tue, 25 Aug 2026 00:51:10 GMT  
		Size: 28.3 MB (28293164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0e5f818c6b9b22375af93837405fb8b5b20a7a896144bd1217ed0cd1e78e9c`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 80.5 MB (80531071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d48fc13aed8e34e1898f3f562ae40cd21b32d217532388566934d9a6451d681`  
		Last Modified: Tue, 25 Aug 2026 02:20:04 GMT  
		Size: 486.2 MB (486181900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a4e4bdea8ec9ecf14015708d138cf4f50a736283a2d183e39dea0358ff0883e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16947079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2d39b2c695d7fc79ebbc033cea612f4363050bd011f34a7e1606ca0ec7c6fc`

```dockerfile
```

-	Layers:
	-	`sha256:f10fb71b4d5958466d05dffc4f9d64fd7d0d2969a53a0e94a23b4ddee7a68a09`  
		Last Modified: Tue, 25 Aug 2026 02:19:54 GMT  
		Size: 16.9 MB (16936946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc3bfd61ab16b5ec09dbd0037355e6f2199f5d33fd11ded63655d429c82e43a6`  
		Last Modified: Tue, 25 Aug 2026 02:19:53 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:34cf0facf9669ef3ed21942ec8b727c85fb18722e7ecf5d962061faf5d54030f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.3 MB (587333992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35dae8fc42ad4f0a14bd27a5e7a92d5aa473678d10c7281dadee0546925d728`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:93ded4b7c05a7e1f57992accf71bb95868cf9862709d7797c5ae1d793fbf1bc6`  
		Last Modified: Mon, 24 Aug 2026 23:20:31 GMT  
		Size: 46.4 MB (46377548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e5172f32ce5891ef76c4f8bcdbe5c56406b9361049f044d181a58a2ba42a95`  
		Last Modified: Tue, 25 Aug 2026 01:33:01 GMT  
		Size: 25.5 MB (25516329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166eea0521c34d54c293d698cf247829c6afa5374a8c9a48516e338e95e6304b`  
		Last Modified: Tue, 25 Aug 2026 02:37:15 GMT  
		Size: 74.3 MB (74268254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ab98736c57f5e33d4fa731d6bbb3b5363c29edd629d1d75ad0ac4f0e2dde47`  
		Last Modified: Tue, 25 Aug 2026 03:16:51 GMT  
		Size: 441.2 MB (441171861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:721f10aadc5219c186dc7828b88f48b9e714d1ad10632b0d5262a3cd878ba6cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16732270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3b58bd670048be5020e65ffcca826654a2540966acfbe1590e0cada7bb0681`

```dockerfile
```

-	Layers:
	-	`sha256:c4509c55e17faa2f2adfbbfafdf13a98875bedeb2af72dc0a72634493a5d1522`  
		Last Modified: Tue, 25 Aug 2026 03:16:44 GMT  
		Size: 16.7 MB (16722073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e76806e1d4ffa49ab79b63e9c84013f105f436cb4b859f03e975d4200f1875`  
		Last Modified: Tue, 25 Aug 2026 03:16:43 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:58e63f0f6997677a6c8e061c79cef391d52c4d06ba64216cc6db7e0ecc3d6185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.4 MB (640358228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2ea334341756b576899cbd106a3fcbd9a94c36a5c6650a675dfd9bbba45253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c30dcbc4c97e074df7fcd51d7bab1f4276ba9cc53b8103961c8f9f5d065057`  
		Last Modified: Tue, 25 Aug 2026 00:53:16 GMT  
		Size: 27.3 MB (27300588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729e71dbbfadaf7ea813be6ff42fb95ce05f74a7925af8a129655079e82138a1`  
		Last Modified: Tue, 25 Aug 2026 01:43:40 GMT  
		Size: 79.3 MB (79275550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19883ed45d4c28f6c0958284a23356cd4790b1f4ae7e14583911cf14ad02ad43`  
		Last Modified: Tue, 25 Aug 2026 02:22:45 GMT  
		Size: 484.3 MB (484288321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c7edea646055ecb349b9357e2a0ad074151aa62a798bea4da88184848475c312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17054749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ffac0726ad375d8d4404b0e8d888db20d2f16490dafbde8e8d2c7c9cf30b3a`

```dockerfile
```

-	Layers:
	-	`sha256:c6ef842dc14cd4463e78b92b588c41718058c8ea49319f91925f9e16cd2ab768`  
		Last Modified: Tue, 25 Aug 2026 02:22:37 GMT  
		Size: 17.0 MB (17044536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:937be26ffd5e3938f6bbd8887dea15a741b815e2af1d33d178f5ec6c35c75067`  
		Last Modified: Tue, 25 Aug 2026 02:22:36 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:695632f053afbbc1394cece43b6c941ba0e078a898ec912818411a656ce77bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.2 MB (678158037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b233165eb06479c3727766df006183a76269888b452be7c95096e36aa2ad68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f5cb2b585d34f93f0289800fffe7335ad494f06cf22e2d7470c540097a9233`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 29.5 MB (29463614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ec20a9a43aa4e70783ee1e58630338433597dcfffedee7fc171d3b6bd46f65`  
		Last Modified: Tue, 25 Aug 2026 01:42:49 GMT  
		Size: 82.6 MB (82603510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472a5e01696322deb0c5bf2cd8b66f87a9b83edc36ebb205b5c4715357e5ac8b`  
		Last Modified: Tue, 25 Aug 2026 02:18:21 GMT  
		Size: 515.1 MB (515073482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ddb35b2cc5e20165efeeeb9c163aef57db96947e0a0d1cd7fc18519b56deb564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16916098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed6a88c5d2cc5766cff0b98125e4758015f7a76fc215268d81705c9b89c7f2e`

```dockerfile
```

-	Layers:
	-	`sha256:bac5f0a236910585fb0b6b69ecf2befa21721769425c5c89a40167395a0a957e`  
		Last Modified: Tue, 25 Aug 2026 02:18:12 GMT  
		Size: 16.9 MB (16905987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94839da8479ad26677090b2ee6008a8dfe52858fa0a317b104516bc33a96b7d1`  
		Last Modified: Tue, 25 Aug 2026 02:18:11 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5f496f420c23f5a23994390320e2ef7b54d66d0f64e94307cd0ae099f7f7df4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **632.0 MB (632012171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640a3ae2dd177c8348ad2d00fe41708b3ea6f7cb17f6f8cb56ee589abb7c01be`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 03:37:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:40:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0740b75b32d7e54ed49294f85fae9198c8436249bbb312d48036904bf9dabca2`  
		Last Modified: Mon, 24 Aug 2026 23:20:45 GMT  
		Size: 54.8 MB (54779193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac46888ef17026e4dabdc47770fe971c53a75fe86b4ecffd0b4c88cd5ff29127`  
		Last Modified: Tue, 25 Aug 2026 03:37:26 GMT  
		Size: 30.3 MB (30328570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd6349eebcec3221055d120c3d44888dc285a9607845ca88c3999d3827d501b`  
		Last Modified: Tue, 25 Aug 2026 09:50:21 GMT  
		Size: 86.9 MB (86948211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0e937d64f9e528ad8c234c2159a4ef9c799393bf87d4ee4dca6f1a772bd985`  
		Last Modified: Tue, 25 Aug 2026 12:42:51 GMT  
		Size: 460.0 MB (459956197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:61e46a363fb454b1b6289d6547ab4392bd8d95633288988d6330ec3a7d2943d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16949473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5870f42e9c915cf76fc07790a3c543b16723a26c85be0ac54dccdf62a620be6`

```dockerfile
```

-	Layers:
	-	`sha256:30529ef7abaf6d2bf4be91112f23a1bd563d2baae37301babc9e2cd971c9b550`  
		Last Modified: Tue, 25 Aug 2026 12:42:43 GMT  
		Size: 16.9 MB (16939309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:462895ac0abafde6e724ad14a9c0adbde05234e6b3bfb092daa6b8e274037663`  
		Last Modified: Tue, 25 Aug 2026 12:42:42 GMT  
		Size: 10.2 KB (10164 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8ed920d37e4b855358e4bfe12209f4258ba5b6fb68625f39b61cdf7f18b8713e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1205699668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31c38e18869b8ec71fcbbe84ad994175b011d5efa48f0d6512db47bbd5562e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1787529600'
# Thu, 27 Aug 2026 00:20:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:44:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 12:52:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ebdd89b00a8705e3b3704b27b947bea95cfc83734a6eb81fe4941099c26f3f12`  
		Last Modified: Mon, 24 Aug 2026 23:25:54 GMT  
		Size: 47.6 MB (47562284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb6c7313515e17efc4bddcf4e5e560cec34677cff84416b78491bee322d97c8`  
		Last Modified: Thu, 27 Aug 2026 00:21:54 GMT  
		Size: 27.4 MB (27413735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb356232afcfe5fca723934d64eb469786c43401ae535cf65ca77a0d56d706a6`  
		Last Modified: Sat, 29 Aug 2026 04:48:20 GMT  
		Size: 79.2 MB (79169049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001fc99b1e5df16b6b8c4c2cd7d284068485d92a042a3637ed161ba42b41230f`  
		Last Modified: Sun, 30 Aug 2026 13:26:27 GMT  
		Size: 1.1 GB (1051554600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:17d7a144a00010b83dd05537f8a82a174fb2411188df55d363478cbbc041c272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17021547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fbe630593c988bae71ac2a17063ee173b69f371741c4e00bbb1f5a1c6f1d7a`

```dockerfile
```

-	Layers:
	-	`sha256:1cc453c2bda073584c4ea7eee0dc5cae023e1d76981c5e34e474ac7f3df0c32c`  
		Last Modified: Sun, 30 Aug 2026 13:23:57 GMT  
		Size: 17.0 MB (17011381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbc81f34bb6a6b8a86440be07fdc5d22bd679744bbcd3cec0acefa41e9375fd6`  
		Last Modified: Sun, 30 Aug 2026 13:23:52 GMT  
		Size: 10.2 KB (10166 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5e14e4bc02af417b5c82cd79348e1adb972c4e67890384c72484af7891180656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.2 MB (585213550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da851f8227be5149de5a1a7dea115516b68a4440bed24f4a61c6fece9922eb3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:24:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bb664b74d9fd31369cd1996da2e710116110371d6fe8eeed4d4bb31513c08ad4`  
		Last Modified: Mon, 24 Aug 2026 23:19:26 GMT  
		Size: 49.2 MB (49248305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fc89f5edde6d5695357616c3f239d7c896ff2f14d3e719cdc5c4dcfd04f932`  
		Last Modified: Tue, 25 Aug 2026 01:24:29 GMT  
		Size: 27.6 MB (27642043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb17009ccc3f9b704ba8f2c025f8330e605968dd5a8fbfe9e843c56131d4b921`  
		Last Modified: Tue, 25 Aug 2026 02:52:41 GMT  
		Size: 80.8 MB (80764354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77beb2e5adbf8cf195801c51d566b63b0d6793620fe1d6fff7a729b68091891`  
		Last Modified: Tue, 25 Aug 2026 03:14:44 GMT  
		Size: 427.6 MB (427558848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1c7d2b797d8249ded8766e6609a38f52f92d15c5fffb8da9c655470f5de470e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16752364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3ac6405940c6dec971b93b92763fce63d88570399a4c1e345c6f99d3aa024e`

```dockerfile
```

-	Layers:
	-	`sha256:3fd0c568a0c4242d4a19ef735191c4213dd019a4db2bae249f39ff69a72ef90f`  
		Last Modified: Tue, 25 Aug 2026 03:14:38 GMT  
		Size: 16.7 MB (16742231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0bc035ccee7f85eccdb6f544d6ab725d8ad8de80d18bc7c5099bcf674175e2e`  
		Last Modified: Tue, 25 Aug 2026 03:14:37 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
