## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:f43d15df440704f9839b6dff24484fa63bb8f0ef9abc0e90bebdc5ca78803e50
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

### `buildpack-deps:testing` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5d77763ea3941ce79f2b46f7df6ab9bba23bbe60921db42ce6c0f9167927be99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.6 MB (356621208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4034bb66955a6bcfcf6b65d4fc67abcf96022e2f7e1f827839ecbd0b702c3a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:44:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25affc71bb2e48543388bd42348158ddb69b90d1c1c4d8bb6242a81c2f56b014`  
		Last Modified: Wed, 05 Aug 2026 00:45:04 GMT  
		Size: 28.0 MB (28030488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92645858280222939756c7dd043a8257fe85a954051d9033e8434f3ec7b8fc59`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 79.0 MB (78966467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b5d35a6741b4d6ba3abac53c67e2fd74e218fd2284d92ce9bc6d509d4b0dee`  
		Last Modified: Wed, 05 Aug 2026 02:17:29 GMT  
		Size: 200.3 MB (200292551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:034e5ba50ec94c80f078b217919c42af7655f6dfb23a7a1530638f1a6d21f103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16972389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152988ba725b95ccc159c827656cf16e98140bf1881c2a5a696f67ac125935de`

```dockerfile
```

-	Layers:
	-	`sha256:7157888d232fb93ca8e97552804214d64009d0df94d1bf5e230dddfa42b728b2`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 17.0 MB (16962244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0d34538461663966a076f45a7b1f882acc990c16f1f480c0d074ac4736ba99`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8107a2ee273d2d3912f0d0fa86ea9fb53760629c22e6e337c2ad8cb2bd750119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301570242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135fead5d5e1bcdb78f7abbf0b865f331b9b088b2048789adfa1d1e2599f0344`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:15:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f678b1991f147b21923698c169a035c4b8f5ae61fbfd107e1529b3e1195c4fd6`  
		Last Modified: Tue, 04 Aug 2026 23:52:06 GMT  
		Size: 46.2 MB (46228048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2c043e171b59d1b04f4b3bd4e35dcac1f828054b7c09f0784b0589263e7af0`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 25.4 MB (25415373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a14e26c9c0bf4e81d69fcae477a0a6e79ad2a91d9b5e4417521b12bd3aec8e`  
		Last Modified: Wed, 05 Aug 2026 02:54:49 GMT  
		Size: 73.3 MB (73336410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38519b092810e6426e47952c8fb0469e6fe52f0ed52dde4e7b9b6d21ce86381`  
		Last Modified: Wed, 05 Aug 2026 03:16:26 GMT  
		Size: 156.6 MB (156590411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:604b1ddc911a2c69027c60a5ddd9a1fdd6cf7641951629ee08f94580d027bdf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16754926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0b80bc7d90e41c6aafa82a16a3d6dc604b70c499a2444b7aa542e53d1019e1`

```dockerfile
```

-	Layers:
	-	`sha256:e457b96d5c2f2512c51aa448bcdaf74e643dd0254d5792c9815805bdc3ee56a8`  
		Last Modified: Wed, 05 Aug 2026 03:16:23 GMT  
		Size: 16.7 MB (16744717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e7df9f006c94455da9130e6a52e8f9d9a295df3c46df373cd309d071c1707d8`  
		Last Modified: Wed, 05 Aug 2026 03:16:22 GMT  
		Size: 10.2 KB (10209 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e220992ed7f8a4cb9f64160505297679ce6e51a712e1c22fdee6989e79a4534a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344595311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a6be9f1c306575043ebc43bca26e3f6095d6a55e8abfcc670b15f0ba2e6702`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:47:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d54621d2015e099f6255a91d16c4135349d7046e8d444fd98d08b4693d2111c`  
		Last Modified: Wed, 05 Aug 2026 00:47:25 GMT  
		Size: 27.2 MB (27234250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7ac33215d07987627f73fb78f32054a5f04176ef59c542592a6b671d50ba22`  
		Last Modified: Wed, 05 Aug 2026 01:40:11 GMT  
		Size: 78.2 MB (78187144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ac4f6054d9fd285ba5ed0702417fdcea49ec67a950d1ce48861e5ccb3c6ef2`  
		Last Modified: Wed, 05 Aug 2026 02:17:45 GMT  
		Size: 189.8 MB (189812140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c4eef5c70bb71c7590c4cb6cf3252f2983541efd2f81fbab209e7c0d739975de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17078046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871220aa6344fa5d661968dc89fc0c94d55445aef1d245575c193bb867056fb9`

```dockerfile
```

-	Layers:
	-	`sha256:3d4aac1a51559e29f55e7fcd2d381b13baba3070eda0d5af23ccb96c2bb55f83`  
		Last Modified: Wed, 05 Aug 2026 02:17:41 GMT  
		Size: 17.1 MB (17067821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f805327cb23214ab65ce4d1862bb039258f74e3f7f3af706ade828fb1b45fa09`  
		Last Modified: Wed, 05 Aug 2026 02:17:40 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8a84df96120e57655025a3ccd2e81879ba6eef2850d15fa9ae35cc6b90ae0d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.4 MB (364410918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce5c60a0951f5b72fb37583613bd74cac6fabf4957eb54b52b0db1c6e0b100b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc26a1bd9eef236063ae96676e9d68518efb5963a5840f9178265475cb7a14`  
		Last Modified: Wed, 05 Aug 2026 00:46:57 GMT  
		Size: 29.2 MB (29182177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5545ee71a4a93ae46d58363359cc44ca9c02312094b795f30dc57253ddc6052`  
		Last Modified: Wed, 05 Aug 2026 01:41:18 GMT  
		Size: 81.1 MB (81122297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7a16bd0da13d4b1be2f0a03358b72eb16faf2374919edf04f179d35a9dcb44`  
		Last Modified: Wed, 05 Aug 2026 02:17:52 GMT  
		Size: 203.4 MB (203437754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0e50e1bf35c65344b5f4713cecfb4c756c5a8622cae7df61daa22ac91332b87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16942252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa390f57e856569e89b20eca441638d93adb8415233c499332391f50c469108d`

```dockerfile
```

-	Layers:
	-	`sha256:ac1ef10573973f2111a6c0908f15a31cffed02e28c54cd4b3243613aa245625b`  
		Last Modified: Wed, 05 Aug 2026 02:17:48 GMT  
		Size: 16.9 MB (16932129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe2af3b9745bbf7de1bd2bdd599b4423c86d97aa5a9df4f55b03dc65cd5a206f`  
		Last Modified: Wed, 05 Aug 2026 02:17:47 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0ef4d049f3b6cc93100d4e79d927ae265afc0f8dc106fead93bb6a3a69729568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.6 MB (364644994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a67d7e73caa1573da67df7576ae42b07869650002a67d9a4713b4ee93db452`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:55:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:58bf9e1f9f35e2c6a73b629d77c34637db6af6dea128933949542988f5d743f4`  
		Last Modified: Tue, 04 Aug 2026 23:50:54 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a171b124e43c43ca353ba29ca6b343eecab8fdde9a0b04380503b3c469148c`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30218479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6505c48fce1ccb8104a7935e483a0bc40e08ac59a2dd81f14ecc0b9a2b8532`  
		Last Modified: Wed, 05 Aug 2026 08:55:53 GMT  
		Size: 85.7 MB (85667093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb893482a5d09827a6499fa1ac7f54277a5aac69905b17cee4148f8a7984ebf`  
		Last Modified: Wed, 05 Aug 2026 11:16:22 GMT  
		Size: 194.1 MB (194084399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9778dd8d39c7e73bd9e86cd5c2cace684118ee728d51105370e62c7660747393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16972148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7130de990b16ec7734a3f8927576ece37b6c31e405064e154e8d40420d3f6729`

```dockerfile
```

-	Layers:
	-	`sha256:23ace52ac60bb337b03faf5323d660fca9a7dfe7dbcfdd08542bbe023444adb0`  
		Last Modified: Wed, 05 Aug 2026 11:16:18 GMT  
		Size: 17.0 MB (16961971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7abc25c49f888088e19fc97021fac305af6536ef6a4fe169d440359660fbffb1`  
		Last Modified: Wed, 05 Aug 2026 11:16:17 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:d47d8a31c957543ecfe213208cbbc0b2a45847051bff6b8bd012b5349f78168b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.1 MB (486076337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a32ce2845f4b753733d27ad1f6c07e5f7c251cdfe5caa024cdb7d411d82dfc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1785715200'
# Thu, 06 Aug 2026 19:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 12 Aug 2026 00:03:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 03:10:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7d6264eb27b4d46a7e7575918f716988899968772092709a97545cd295d76edf`  
		Last Modified: Wed, 05 Aug 2026 00:42:45 GMT  
		Size: 47.4 MB (47433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84241173dc12785777bb63b4572ca91a744f6c1fd8520cf9461b3af0e1ea695c`  
		Last Modified: Thu, 06 Aug 2026 19:39:07 GMT  
		Size: 27.3 MB (27336178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26284b8cba507867e24078b1d22553bccbd558043d201a85a8c1bbb2d9648db`  
		Last Modified: Wed, 12 Aug 2026 00:07:17 GMT  
		Size: 77.5 MB (77453158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de66374ac181a4bd764c04b19b24fdf9a33e36c5b79d6bc4de81fab437d50cd1`  
		Last Modified: Thu, 13 Aug 2026 03:26:25 GMT  
		Size: 333.9 MB (333853954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e7128cf09726710c4fbeec87c5c99502ece0b8350046a0865673ed5f28907a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17037732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337073e8c6767e673eae9545198624bd6839c1a31a07fa07a76971322767450d`

```dockerfile
```

-	Layers:
	-	`sha256:a1e5ce15f353a70bec442c56e08b5e099a9e3499d5afb5bcb2ff1e160ae0d2cf`  
		Last Modified: Thu, 13 Aug 2026 03:25:37 GMT  
		Size: 17.0 MB (17027555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cd18c8ba943c7cebba4d52dc824c9816fdcfa08250ffad710fced0b9afd5336`  
		Last Modified: Thu, 13 Aug 2026 03:25:33 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:8fa5a026b5ce18ea2fec2ec73bfbd16e4dd87bd1007e3567ce6614f81cbf4bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329821046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fdeafd0110b1a4e5cc7fcf39045549892f93660220c04a2241e261e738fe0ac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:07:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:39:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a4f59ed26dcfdc36a2af78406bf56ffd7a79cb3b3675a5ae541447ba304914fe`  
		Last Modified: Tue, 04 Aug 2026 23:50:35 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9617ad90a55ba20e555b6d1696c9de4ec9fbbd6238dba2d2b07e3e55fa191a01`  
		Last Modified: Wed, 05 Aug 2026 01:07:51 GMT  
		Size: 27.6 MB (27616352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79c93158657c7cc1ce5210edf16f78ff021e32e9dc11867c5e54f3b99f4b74f`  
		Last Modified: Wed, 05 Aug 2026 02:03:44 GMT  
		Size: 79.5 MB (79493202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866468ca7ebfbe2e3b9607a6e8465958618fd9c8405317148ef03b41bc71be25`  
		Last Modified: Wed, 05 Aug 2026 02:40:02 GMT  
		Size: 173.6 MB (173633007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:298d09da2abf0da34c626e3d5e7097a54822c9041e5ba00b97358640f6dee885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16775248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a2bc0c5218102cfe37b0a4c8a920a2a68305ee3a0ebe63d27125818bdd851f`

```dockerfile
```

-	Layers:
	-	`sha256:0d84758233cefbb532c95d39e1a154af1c9242d64a9b93fb685102c9e0b094ba`  
		Last Modified: Wed, 05 Aug 2026 02:39:59 GMT  
		Size: 16.8 MB (16765103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56d0fedab0af97ebbcc885933d19399503b89bc1eaddebef82858d5c0acf2987`  
		Last Modified: Wed, 05 Aug 2026 02:39:59 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
