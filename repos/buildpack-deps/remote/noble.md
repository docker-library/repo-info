## `buildpack-deps:noble`

```console
$ docker pull buildpack-deps@sha256:c2881ab5b526bc3b377a9501a89fec7a82c84f57e89d6cfd2fb9b5cbff75ef7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9a4b18a3ea00ad7c727e09dfa071912eee66bd23c75d000cefdcaecdc0480dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274359579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b62d7fd38f967c5e6064a91393264806b03b40ff881616c7320b1aba60841b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:16:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 04:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f72da9ecdca45a65023b1c25391108c4cc731a1427adfcd959e801ee85bc5f`  
		Last Modified: Wed, 09 Sep 2026 02:12:42 GMT  
		Size: 13.6 MB (13586137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2bc542c6cd39743a89f9cf535a6dfd4a2edd7523f5a354c26dae37e659860c`  
		Last Modified: Wed, 09 Sep 2026 03:16:32 GMT  
		Size: 45.4 MB (45434104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e75fa2f1cf44330bba07d3eb6de6e9b993238f5d1de44199e814073f0183da4`  
		Last Modified: Wed, 09 Sep 2026 04:18:30 GMT  
		Size: 185.6 MB (185576085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0b16d0b8c19caf2d60bede90deffd08562914ec147c8b3b390ff7ca1b5a1e09c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11716613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867caea5089e2210f27ac328f2547a4657f50ed929a70736e74e5f48bf1aa853`

```dockerfile
```

-	Layers:
	-	`sha256:2cfb8e86bdc2f5821653d2d7884fbc6e567dcfaf23c9d3a1d1e43cb3d5d5ba58`  
		Last Modified: Wed, 09 Sep 2026 04:18:26 GMT  
		Size: 11.7 MB (11706473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00fb1efe225ffb3fa2f649ffbc9a766ef8a1676a537a7ba23870b69561109cc4`  
		Last Modified: Wed, 09 Sep 2026 04:18:26 GMT  
		Size: 10.1 KB (10140 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3400ca0d6fc16a6ecd632dfbb46726d5fbfd3add1ba48f2515ecfce3556dd2a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.4 MB (236442817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d259862875a90a5d6653083945916607813b2ccdb63f04986cf59d55883edb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:50 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:50 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:57:53 GMT
ADD file:7b24dc56d03ed9c6ddefab76dfb3e7b8bc4eafa9059d2a0ed52016ba82b6d110 in / 
# Mon, 07 Sep 2026 06:57:53 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 04:16:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2c98e8ee99c3e9905d854eff5f5f0fff270d9f9afc085063b8bc98145a2f5f5f`  
		Last Modified: Mon, 07 Sep 2026 07:57:11 GMT  
		Size: 26.9 MB (26894017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac350a77aef078a00c34a878dd3fa3d19b6bd2f94c6d3cdaa86bbc9e7e6038a`  
		Last Modified: Wed, 09 Sep 2026 02:12:18 GMT  
		Size: 12.7 MB (12741414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a507e88076ca6e489fdc8de8ecdf8111f3412e5e1094dffe7a853961ccd8e62f`  
		Last Modified: Wed, 09 Sep 2026 03:16:03 GMT  
		Size: 49.0 MB (48986494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a30ba61058097e061d1ddfaab2a008e44c8780feb64bb2f01519fe2bde04de`  
		Last Modified: Wed, 09 Sep 2026 04:16:38 GMT  
		Size: 147.8 MB (147820892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f4311d00a0b8607df34f31eb9d8e23a27dab4ba30ba8f90bf2a4ee1bd9b03d71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e978f1cb6fc216585ca62e0b7ea1e08c71269c6042ef492728ee5f4a2cdc82f0`

```dockerfile
```

-	Layers:
	-	`sha256:6e26985ba0d13f8b384a576def2a5f710686403b0d48ad161579b6f0a33ad65d`  
		Last Modified: Wed, 09 Sep 2026 04:16:35 GMT  
		Size: 11.0 MB (11032110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02261d86c96899c5c557625180bbd997fa72b71c906a4f52389d2075a1bdec32`  
		Last Modified: Wed, 09 Sep 2026 04:16:34 GMT  
		Size: 10.2 KB (10205 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:83fc092a0ffb48b3033220dd2c1cc6c5d76907ff2d9149d5611697aa30deaa82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263982802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80b8f558024a35788f1d7dcfac98aee4193707be02c9ca5debc4db9c7cfeead`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 03:27:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 04:17:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d97f4e0d598717ab921bc277de852539387cf680a05c69d0bf89f48a83710e`  
		Last Modified: Wed, 09 Sep 2026 02:12:27 GMT  
		Size: 13.4 MB (13430022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9448362bc672b3ac012dcffead66933a572ad00b45ddbc32ee27171a0e2b48e7`  
		Last Modified: Wed, 09 Sep 2026 03:28:10 GMT  
		Size: 45.4 MB (45394484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa6699a47ce8964579b212e17d4b14b8c668a90aa301958ffcbaaa388bc7d7a`  
		Last Modified: Wed, 09 Sep 2026 04:18:02 GMT  
		Size: 176.2 MB (176218281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b6dce869e287ddd1734b49fe3b450498696e1f519f9184ce59ccf9596a1b446f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11266120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24d5ea31383b80ceee2477c56b049c03c2c68feb248fd6e04e68df065dbde69`

```dockerfile
```

-	Layers:
	-	`sha256:4531071abe6f6a288702e46abfacab7e1cf14ae06cf74edfd8438584f7e36b70`  
		Last Modified: Wed, 09 Sep 2026 04:17:58 GMT  
		Size: 11.3 MB (11255900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb526b2b98aa8c0be4937c220f7a85022fe4f971fb41945ce273fbf02a7ed330`  
		Last Modified: Wed, 09 Sep 2026 04:17:58 GMT  
		Size: 10.2 KB (10220 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b33517085b79acadf893d0f5962d7e70e986cf3102398fe6795407eadf2001a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289613411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990df5e9c131155d1a07b240ba834b1e81dfce778d3cf888dc1479a4a45972b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:26:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 11:57:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 12:31:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fd789139c90474cd14d0f1d64890b57524ae7f44613110a6629eeb565746a1`  
		Last Modified: Wed, 09 Sep 2026 08:26:52 GMT  
		Size: 15.9 MB (15915507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25731584d89277a0bd4f1efc9b5be6e658dd88951e3d6f52cdb3ffb1b476f7a`  
		Last Modified: Wed, 09 Sep 2026 11:58:17 GMT  
		Size: 50.4 MB (50388115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16ad89b682484da219cff792bd9c7fd4c9b892240211265d6d698096ae01170`  
		Last Modified: Wed, 09 Sep 2026 12:33:03 GMT  
		Size: 188.9 MB (188932910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:24da3d3f806fe64b53e3a30a05e346775559aca0fa0c2c2d492af08f1219f13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11213492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae71d0909983918e4f56f614c228d75e4429937b573e9cbf0c54cd5228fc195`

```dockerfile
```

-	Layers:
	-	`sha256:fa8ded417208b1539d59124046fab9cc332daf96e619fd1772d90e8a52b326d2`  
		Last Modified: Wed, 09 Sep 2026 12:33:00 GMT  
		Size: 11.2 MB (11203319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a8c55e4e87c5c21fd2af02518e369af25f29d09afdca59f8b902d141431766`  
		Last Modified: Wed, 09 Sep 2026 12:32:59 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:1ba5e0fc5cb0cd247d4759746cadf1ef81341df7e5cd50f03046b368fd8f271b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.5 MB (330468671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fad448e4743b778eba3380ac736fe804e42fe0c900c10e5e4d969a3589997d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:15:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 04:51:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 08:22:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593967676d34c758aaa75b1e147df2837aee53580eac5c06a35abbfcc082e1c7`  
		Last Modified: Wed, 09 Sep 2026 02:16:23 GMT  
		Size: 14.3 MB (14299388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc15b65548acc8b5c1fc25953addc329cb5fca52f72503c67c9ff24b228d5b4`  
		Last Modified: Wed, 09 Sep 2026 04:54:40 GMT  
		Size: 53.9 MB (53893878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04c7d5be3352170e3ce70208ab2c1fbca13b93060bce57e532fc46998d9aa33`  
		Last Modified: Wed, 09 Sep 2026 08:33:34 GMT  
		Size: 231.2 MB (231226203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f09f1c6a4f22122c44866376d2a258a9a206bbd6f8da149b5e37814bd4fb9258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b322b00c86972774d2edc82cc7082e108cfdd6ed5658b51d23a0329bef51773`

```dockerfile
```

-	Layers:
	-	`sha256:a80de683a8bfddfc12eed2a908be8f53f795cde6dfb79c24e931ea07d686bd4f`  
		Last Modified: Wed, 09 Sep 2026 08:33:03 GMT  
		Size: 11.2 MB (11196556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0b2371996a8d6e1982424f7200fceef76b0cb7dd018b14a7bd847a6985b984b`  
		Last Modified: Wed, 09 Sep 2026 08:32:59 GMT  
		Size: 10.2 KB (10172 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c4c32716797316114a53efef1366240c7cc62d9f4a8ef8d4d0c30220ad894b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252412147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3ad1ca5ef32706d5c6edc7f38850014a2835fd3e6e679e9f92618ae503cf43c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:09:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:12:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 21:14:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184cf2513eed8c4446aae4a061275d88056c73dd044095facc400ab5828a8a48`  
		Last Modified: Tue, 18 Aug 2026 19:09:58 GMT  
		Size: 14.9 MB (14893500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de257b0b73ad9ad17b343cabc3219ef6741f5d76a44b913cf0e82500e601959`  
		Last Modified: Tue, 18 Aug 2026 20:13:06 GMT  
		Size: 46.8 MB (46768370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b58dcfb4228240506e9a8108f412d3ba48106674f11ee4c4a8af785683ddd7`  
		Last Modified: Tue, 18 Aug 2026 21:14:51 GMT  
		Size: 160.8 MB (160815022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8d367d7e65d6808931961bd9a39ca656057fab9d3347fb316e5ba8d153664df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbc2a85edfc5e9b19f41257120725230d5802cb1be1a1bfd6f4f711fa1d2b06`

```dockerfile
```

-	Layers:
	-	`sha256:79a767a180749f69add3c229892b687c4b47da2cb903a3b68e678df971cb1603`  
		Last Modified: Tue, 18 Aug 2026 21:14:48 GMT  
		Size: 11.0 MB (11046736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b765733d58b1c83a0935e1ef82211588188ef0f47a8da03ad6c0ec7f1d47b90`  
		Last Modified: Tue, 18 Aug 2026 21:14:48 GMT  
		Size: 10.1 KB (10140 bytes)  
		MIME: application/vnd.in-toto+json
