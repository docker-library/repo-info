## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:386132a8d33a57bfe3555db86440f9c7b1405fd57b306d0094a60a52db47da37
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

### `buildpack-deps:unstable` - unknown; unknown

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

### `buildpack-deps:unstable` - linux; arm variant v7

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

### `buildpack-deps:unstable` - unknown; unknown

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

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e38e9a76cadebc915253c2364952aceab3cb2006de20e693a4126a9c1c97cc51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.8 MB (353774726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8409b74f688c59daf3e08a08d3a5a7b70b49cf6ff9a66a74dfbeb2c48720ddee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:33:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68634d59b4ff6ab10de196a616123b4ea6f0bd5427631286fe3cd8a56dd0d79`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 27.4 MB (27439000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994dd69c28c6306ac45bbd6e8468d27adefc49392385626993ad59178c6c50d2`  
		Last Modified: Wed, 21 Oct 2026 01:34:20 GMT  
		Size: 79.0 MB (78988316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4454204921061763b2cfa6c5f9ca68323759a86f144283b20305b3a1de830509`  
		Last Modified: Wed, 21 Oct 2026 02:17:26 GMT  
		Size: 198.2 MB (198196923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f254b5e9daab58865f70450c9a61ab18aee01e26882a9a2f1261d8f4937027ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16970197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db11cb65e7efcdf1d218e02d1fb404ac873a50ff6572a63b87f8c3b9eef45485`

```dockerfile
```

-	Layers:
	-	`sha256:be4ffbdc7121547642981b6e1486b099f84f17712fbe93f32757281ef5e5dc46`  
		Last Modified: Wed, 21 Oct 2026 02:17:22 GMT  
		Size: 17.0 MB (16959984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4764777eb79e67ef7ad135a8850d1ff96eea2e7440a1e40fb2bc7c385c061e0b`  
		Last Modified: Wed, 21 Oct 2026 02:17:21 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; 386

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

### `buildpack-deps:unstable` - unknown; unknown

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

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3a556a1f3e63259bd69be554390a024051af66ed6b7055c0aebd14ebe15d6320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.0 MB (372989255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a298ff3e3dc48facc95f47838ef3961e1229ba34cbf8938b5edb01883cba41`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 04:39:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:39:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 14:33:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:879c8c596683a589a22d88f106abb6c642b7746d92470d0e9281af7b3fd80325`  
		Last Modified: Tue, 06 Oct 2026 00:14:12 GMT  
		Size: 54.5 MB (54495654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0df2d209aa193e56269eb8c0a2f1b42c40850c0d5c42fd80f65047372deba0f`  
		Last Modified: Tue, 06 Oct 2026 04:40:24 GMT  
		Size: 30.5 MB (30516375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7afafabfed7e692143ad4a2fffebed5d04d0fe48b03661f5cc0de620582e774`  
		Last Modified: Tue, 06 Oct 2026 11:40:48 GMT  
		Size: 86.5 MB (86517396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede7e1a8d485927953fdd65086ff27a6e8805a23b462d88a0efb9f4fb4c70c28`  
		Last Modified: Tue, 06 Oct 2026 14:34:52 GMT  
		Size: 201.5 MB (201459830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:07e5522803bcafc0fa7bd4cd5dfaa6a4d88d8e9f09a8c5354b1d9614b6d25d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16877968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155d337431676453cb9ffb8003da74c380748c6f6c8ed7f9cef7141ba118d098`

```dockerfile
```

-	Layers:
	-	`sha256:a3eb1d3e371db72df39348dd82cc1e82d9268ec39b3c0b5920b19356881903d8`  
		Last Modified: Tue, 06 Oct 2026 14:34:48 GMT  
		Size: 16.9 MB (16867803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4cc51ddf43d268a9824e789b0e50b27c8dacb65670ac72e546f9f737d08a550`  
		Last Modified: Tue, 06 Oct 2026 14:34:47 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:7e2840c5039c70010f6e8d13f1602b8e3634f404c0d723a8a104bc2a22996c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.2 MB (511174292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d08e219fe95666dff83328aba666977f24802444d175ec74260f681b0f0478d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1791158400'
# Wed, 07 Oct 2026 20:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:38:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:27:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:48b1f7cdb9d7f8020200b8b2a5a7608c5fc31d5467487a49476fc34aac73ed96`  
		Last Modified: Tue, 06 Oct 2026 00:18:51 GMT  
		Size: 47.2 MB (47230578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b7403dbf18c16114ddf458ded16fb29bd66bbd5e72630cc90e48d103942a9e`  
		Last Modified: Wed, 07 Oct 2026 20:12:37 GMT  
		Size: 27.6 MB (27580832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4465dfe198d5598ad6e8ab30b0aaf77cc3822a371019b6e43fe3fe55c4ba70b`  
		Last Modified: Thu, 08 Oct 2026 13:42:39 GMT  
		Size: 78.6 MB (78586342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a310d2a6f4bdea0e809e1368469b74223d53d6f645d8e5c4df5cedeb5913147`  
		Last Modified: Sat, 10 Oct 2026 06:44:49 GMT  
		Size: 357.8 MB (357776540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e15ca819d72cf77dc7baa395e87405ae38ef90100d1d871a1d3b850c81d6c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16952538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c7410b6970e5858dc465400c25f406ad020b6b4367e67491d9585265cd0db5`

```dockerfile
```

-	Layers:
	-	`sha256:57fabc9b7c0344e23dd403b3d50fe09d2e4085c6f9bb54bcd95adb54c8eeed69`  
		Last Modified: Sat, 10 Oct 2026 06:43:59 GMT  
		Size: 16.9 MB (16942373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59bd08ad1490ecb1bb0334dccd7239ef653c16635272070d967f34570d77d5b5`  
		Last Modified: Sat, 10 Oct 2026 06:43:54 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; s390x

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

### `buildpack-deps:unstable` - unknown; unknown

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
