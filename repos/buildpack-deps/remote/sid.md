## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:f55e1a1c41706db8da15498544bf16c56124295c9306304ebf86637ad9940a8d
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
$ docker pull buildpack-deps@sha256:9b8b5f2cfced3ec1b73c8e6682b2d8dc34cb601dc799bb4bfb501380d3f94256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.8 MB (368823396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b17e008b554d6fc652d2ff6f4ea4f82abf9a49762fef647fb468fdbd4ba539f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:46:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:28:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec3259743e71d7217ad99e85762f43791ca8db5d63aafee15de35c7c98bffce`  
		Last Modified: Wed, 21 Oct 2026 00:46:27 GMT  
		Size: 28.5 MB (28528910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d602fe6e83e5691b73ab5466fa03dded2a529d6f5a370782662dda052c92fad`  
		Last Modified: Wed, 21 Oct 2026 01:28:22 GMT  
		Size: 80.6 MB (80612880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d274478a94895871430304d37e3bb382ccc474615ed4323e613d589ee6a256`  
		Last Modified: Wed, 21 Oct 2026 02:17:37 GMT  
		Size: 209.9 MB (209861604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f571d2616d899026b6dd74c8429e5e253e1c7b83bf08fd4a72ee7f63d7e99edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16863167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e46239b732a8c58ed31c8b040ef1ee71f17e65ad8adab30d04016c4619b55f`

```dockerfile
```

-	Layers:
	-	`sha256:367518593d116632835800088f692f5689c190abf7e8ad599e063accff48c95d`  
		Last Modified: Wed, 21 Oct 2026 02:17:33 GMT  
		Size: 16.9 MB (16853034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33c02481e0a79429f899501d7da1ad4d2dd8d6cd7d4a1c1cca569672eded78cb`  
		Last Modified: Wed, 21 Oct 2026 02:17:32 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c1dae82f98e68eb50115031f930fb17e233c313aa1c9cf571281b51521bc710b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.9 MB (306904883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae2cbc7aec4c8bab44e12c8780d9156e5edb0a0bbea200a7d2e2aa03f7ac238`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f598064988d3c8094600909e9ff8509760664a380fe3432f8f5981c4adda80d0`  
		Last Modified: Tue, 20 Oct 2026 23:30:18 GMT  
		Size: 46.0 MB (46007503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167816f987674560fc1213b3c17081827c05ae811636ec46602862746d0b8bd`  
		Last Modified: Wed, 21 Oct 2026 01:29:25 GMT  
		Size: 25.6 MB (25607391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79083a90193fd7ab99f95710bf5189817613fa291bb2ef5e71df57acbd2a914d`  
		Last Modified: Wed, 21 Oct 2026 02:48:55 GMT  
		Size: 74.1 MB (74074391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b743e908cf2d86e3439c55ec38378f845ab1b8572e3ba14e0231abaaa2c86fc`  
		Last Modified: Wed, 21 Oct 2026 03:14:34 GMT  
		Size: 161.2 MB (161215598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:285c8ca56dd35102f4f45a59aa13658797d6494788789b616b55cf7ab14c96eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16648324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0231f9eecc2325a7a1362ac88e3f62c1e3d6d35d5af92b71bf060d1ab09ccf`

```dockerfile
```

-	Layers:
	-	`sha256:f8287c754417159ad089f0c08f71903676e9553a1caf144671b7fdfc3a7f8dc1`  
		Last Modified: Wed, 21 Oct 2026 03:14:31 GMT  
		Size: 16.6 MB (16638127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa8ba40392740fc7f858c2bf1493da282a413324f758410fbb0e6811ef97bcbc`  
		Last Modified: Wed, 21 Oct 2026 03:14:30 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c681abcf7f77af70201bc0d1b2f11ae0e775911381958f27f8ccbf1c9cec2ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.4 MB (354395148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1817ea719fcd06cf9a0fa369f3766578ab12fb0c4fe1d614dbada18e36d2f495`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:16:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26000dc41a1c54f7e37df3ed2559cbdd938d3e840049d2fa8e784530215c9230`  
		Last Modified: Wed, 28 Oct 2026 01:43:26 GMT  
		Size: 27.4 MB (27368863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a631551ffe898213f271b65134be8dfd9e4a7e387db2f9f740ee6408fface2c4`  
		Last Modified: Wed, 28 Oct 2026 02:35:17 GMT  
		Size: 79.6 MB (79552745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957b6b9747a4911ecc4fcd1fc8df8c62dec08aa04a46561c4e58b2ceb96b2a77`  
		Last Modified: Wed, 28 Oct 2026 03:17:19 GMT  
		Size: 198.3 MB (198304325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c93fc5eaca088e84468391ed4712b28edc25d2a17a6e848af22a142a5187c81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16979496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cb2f16b23a09d68d3400cff165a0c1ef09efb490bcc51a16bfc83da95c095c`

```dockerfile
```

-	Layers:
	-	`sha256:febb2aabc6b7d59ae03966c179ccd212d00ff44c67c51e3699f60cd5c5965267`  
		Last Modified: Wed, 28 Oct 2026 03:17:15 GMT  
		Size: 17.0 MB (16969283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19249eaf72056edf25c742011433b6544f2c984fd773060aa7f075cad4a43152`  
		Last Modified: Wed, 28 Oct 2026 03:17:15 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2aa80e00f0bedf1671a05b41c384ff5b3c9a4205b38651ddebf3e0c1224aaea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374801535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4f47540a430fa112843e00fdb088b75e1360090b84c7eb5fb6c69dd8bcee47`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:48:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d6170fcc5bd791db1f2ab75aa4b4816b856973d371636532413f94b7511aae8a`  
		Last Modified: Tue, 20 Oct 2026 23:30:53 GMT  
		Size: 50.9 MB (50946506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109aee5d929bd44611611a2c72d113aff634bc5c7f64a2cd4fa4772fa2a25b7b`  
		Last Modified: Wed, 21 Oct 2026 00:48:40 GMT  
		Size: 29.7 MB (29660929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b0bdf587a4c61d52c001566cd13a70f11271cccfe379bda7fe332b00e4fa91`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 82.5 MB (82539407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e57d2faf7f0f3143b6d6db964018acedb92ee44004ace42aa3220c0acc49ea9`  
		Last Modified: Wed, 21 Oct 2026 02:18:06 GMT  
		Size: 211.7 MB (211654693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8ea02e34d1ab0d00a11177b6e49cb46aef5621de49cfef9b2f8d6db35672e30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a7825e45465a72d79e7527df56d2745bfec784b3742153f5284d3064779ede`

```dockerfile
```

-	Layers:
	-	`sha256:fe498e66d3100605adf659e1ec289018c7d27221ae3cb795177acbf0fffab474`  
		Last Modified: Wed, 21 Oct 2026 02:18:02 GMT  
		Size: 16.8 MB (16822099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52e5d6aa0f8c945180d27aff522e6785ecb89973efc3e200441b8ef132e0b6c`  
		Last Modified: Wed, 21 Oct 2026 02:18:01 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9849124bb97a2229f965f4dacbc3fd5832249e56a0cb143ff0b4bfee78954d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.3 MB (373295912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e5624241ab29ea925079a6011d4ffac02b439a9dbb09c25c18cf1a610e298b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 04:21:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:32:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:63e5bd9ae187ceef4c544fc1a71e296691faaf7ab4bf6b751fe40b99fefa582e`  
		Last Modified: Tue, 20 Oct 2026 23:33:19 GMT  
		Size: 54.5 MB (54506128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01651d50be277791bf0a3e58b881bd744ec2bdaaaa839aa12b094a1e482ce82`  
		Last Modified: Wed, 21 Oct 2026 04:22:03 GMT  
		Size: 30.5 MB (30520776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd40917f0668d8e74c8d4fbe184f96b5dac0d9907b4541cf0452cf6b1456b97d`  
		Last Modified: Wed, 21 Oct 2026 12:06:20 GMT  
		Size: 86.5 MB (86532393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ae2a6a615c5aaa000915710eb850fc898440a3c103a5afc9a0f0c0471c989c`  
		Last Modified: Thu, 22 Oct 2026 02:44:16 GMT  
		Size: 201.7 MB (201736615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7bde4cd503f26d23a344a72eddf67ef8a6fac6cafd90551b76165e73bd9dba58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16865484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e741c50be5682053c9424aad8d01ecda20d2e6ae55b4bb45e3ea652939dbd63d`

```dockerfile
```

-	Layers:
	-	`sha256:98e8c2e0e33a9a59c201b3305b3593b6e2fab18eb2945016364a7a039c85ba73`  
		Last Modified: Thu, 22 Oct 2026 02:44:12 GMT  
		Size: 16.9 MB (16855319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ce17f975f39e4d90ac2877f1568c8b804732aebceb96fdedf0bbb5b429ebc6c`  
		Last Modified: Thu, 22 Oct 2026 02:44:11 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:b2cc17c0ec1d80bfb3c800209330c9981c6e5ffa11da1456163b52afab56885f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.9 MB (509910560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f237dd809fac7ca445e5a3e8fe129ec2eb63d210602087fb5bf5f676135b5b9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1792531975'
# Thu, 22 Oct 2026 05:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:57:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 19:26:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:29af863f47901f0573d3798e2d1e207aa2429f06d14b2d1c48747fc578d89be6`  
		Last Modified: Tue, 20 Oct 2026 23:35:20 GMT  
		Size: 47.2 MB (47229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7950d5578fe85c450babdcea1474b50a7b9919ee831d6cae6b5afdba749683`  
		Last Modified: Thu, 22 Oct 2026 05:12:58 GMT  
		Size: 27.6 MB (27580769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a916a6b8ec734128e62813052874a990d39d5aff71a5f5dccc1dd8fa14789716`  
		Last Modified: Sat, 24 Oct 2026 04:01:45 GMT  
		Size: 78.0 MB (78002551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9021211bcd791b79d87e2be5ff54f2c1e29be3c22218d70161e4592c12f19f32`  
		Last Modified: Mon, 26 Oct 2026 19:45:07 GMT  
		Size: 357.1 MB (357097491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:19c85a568d6433907aebe74e22ab1eeeb0f00edeb38455d25a152b20782f5b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16937652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b24d51eddd9a82165cc0da71a6941374ad778e891bcc075878a6b1968a1181bd`

```dockerfile
```

-	Layers:
	-	`sha256:f45bc33538cddf7b226d0bc37632a64f249e32f8a7d9ad6616c14566819de2fb`  
		Last Modified: Mon, 26 Oct 2026 19:44:18 GMT  
		Size: 16.9 MB (16927487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a83e7efae8edf8c79fa7cd43daa2da4897e75d0a5ff8e97f93b46c422ba6f1d`  
		Last Modified: Mon, 26 Oct 2026 19:44:13 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:f582fbfd68bad03f6aa0e355a8897cadb1d3dc40ff9e4ee8e79b413147665dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337806925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd917765b3c53c78561fee854c0b1792b92b088be120231435d24fef4b71ee5c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 01:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:25:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:607e799b49a6f3e51537cc534d62976bf0f0fa819afce563b696cb4953ed3341`  
		Last Modified: Tue, 20 Oct 2026 23:29:29 GMT  
		Size: 48.9 MB (48918277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe924a9d631630494c6586e22ba420421e443e1a0ef3b9ff068190236396f6`  
		Last Modified: Wed, 21 Oct 2026 01:10:15 GMT  
		Size: 27.8 MB (27815993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79edc23f4d007a5d68321da0f6f635fc09ff99d74360878ee17602fef353d3d4`  
		Last Modified: Wed, 21 Oct 2026 01:56:32 GMT  
		Size: 80.4 MB (80369666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a0728cd5b8c4722c9b0780368991a2a86ab6650267379ce326af1228c8e491`  
		Last Modified: Wed, 21 Oct 2026 02:26:14 GMT  
		Size: 180.7 MB (180702989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:28fd511b8c8ccf43dc53676b56197ee35c7d473d3d43cc2e0992903fc61854d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16668426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70921f12c175c570744fb6875cd8daa2b034e02c6b2de24b8232154d6e0f8f17`

```dockerfile
```

-	Layers:
	-	`sha256:9decce6bf9ea5cd92b394cf9dc76597f5d295526c02eb83b3d3d505168120c17`  
		Last Modified: Wed, 21 Oct 2026 02:26:11 GMT  
		Size: 16.7 MB (16658293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8be7bef0d619b7f2ca295aa2482447b028045043894a7b27425eb1c4b8a2c01a`  
		Last Modified: Wed, 21 Oct 2026 02:26:10 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
