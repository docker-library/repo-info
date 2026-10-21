## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:c9a0bc448275de9be627ff29136dd34ec12de313ef6bd29721ef9312fe9833d8
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
$ docker pull buildpack-deps@sha256:2b91735bd2d7c5e332bb5ca2c4be3083d54f41f2420682bde2903c8cff4c4e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.6 MB (368624896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937990dc6e17abb96e66597a72cea029885d8164fdeffc85e88dc5a90212ca24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:41:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ab2033ad8cb0b43749503cab4583da73f596c307f88d12356e5364054a51048e`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 49.8 MB (49810882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cb152ce5c1c6662afc71865c3c0f12a39934613621dc3486ec8765bd8de07c`  
		Last Modified: Tue, 06 Oct 2026 01:41:20 GMT  
		Size: 28.5 MB (28519388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709da6da0687b0c1755cc34b03e2a76f5979e272022f135685a4931f39b9126c`  
		Last Modified: Tue, 06 Oct 2026 02:35:05 GMT  
		Size: 80.6 MB (80599501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90bbb507d7d59db2a3da22f3bbd108b1f150b199dfcba627a720fa7c4dec16`  
		Last Modified: Tue, 06 Oct 2026 03:16:46 GMT  
		Size: 209.7 MB (209695125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bcb62a22ac6f50aaa792a35a362c080f2d3302c10345379eae23fbbb507cd5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579362f1c95d1588cf3bd718fb8991d41c48168965945ceb3ac27bf28a29e61c`

```dockerfile
```

-	Layers:
	-	`sha256:f27ca6afb4b94732550ef867233fb897d21bf03587583c8068725374aa3e4fcb`  
		Last Modified: Tue, 06 Oct 2026 03:16:42 GMT  
		Size: 16.9 MB (16865467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8690886daf486d547275c378036b78b51a9daf939db4b2c4746adcfab5e812fd`  
		Last Modified: Tue, 06 Oct 2026 03:16:41 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:98f1e7cb9e4a2ebe1e9f6ed1cb6b3bb79bc158608a6fa181077225059595679c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306678643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c7b0d08d10d902a2bfe0460ae0c4a69cc309e17d6afd9f1370c5aafa5a651`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 02:24:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:14:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:013cfa307d38f84d98e177e42a2eb6302161ed63a9ebe977844f734d310da242`  
		Last Modified: Tue, 06 Oct 2026 00:13:27 GMT  
		Size: 46.0 MB (46000354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d808064737f409e95000499e6f1f52019799296fcb0000ef1582f9fc878761`  
		Last Modified: Tue, 06 Oct 2026 02:24:44 GMT  
		Size: 25.6 MB (25609268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a67e5fda8c299ed279a2422472d2cfb6c07e323f1361022d31d6fdaf803fde`  
		Last Modified: Tue, 06 Oct 2026 03:41:11 GMT  
		Size: 74.1 MB (74065853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dfd25901bca58594dbb5f48bc1c0c88d7c274282df46f4c36f8a9888e87e69`  
		Last Modified: Tue, 06 Oct 2026 04:15:29 GMT  
		Size: 161.0 MB (161003168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e1c8d2b5933842c82fddb9c813bd520359637d0637502264473969c0e7771372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16660784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc6584b3d1437c27e49e8fc72c5eb5a6f3392fb77c8c513f6ea4ba5894fdf8b`

```dockerfile
```

-	Layers:
	-	`sha256:f377497f4c1e787d5fc550afcc654455fdbe5bcbd37ba1c90eedd845364b888e`  
		Last Modified: Tue, 06 Oct 2026 04:15:26 GMT  
		Size: 16.7 MB (16650587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:718a4aa89bedfbff100c0cbf5b35754c9a959062453b31b86bc93dc84237ee76`  
		Last Modified: Tue, 06 Oct 2026 04:15:26 GMT  
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
$ docker pull buildpack-deps@sha256:770f280dd6c87141beac3bbd8b336b79951ab53a11436b9510359bc322aaf76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374580655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791d1e8352addf3fe6ef2cd7e1e793dcdf82ffc3dbaeaf82c61d2b13ec0ac70b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9110db07e46e0ee00d66b51c152e37c62b0703707db22c577c69116c284fd877`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 50.9 MB (50930428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f51072c81cd0f5a4e051bd63ee3e1601edf3ed454c1a11c864dbd63b2b9a6`  
		Last Modified: Tue, 06 Oct 2026 01:46:19 GMT  
		Size: 29.7 MB (29658780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61423c6856813d238a2c34c4d18d67c67c666a2bb7e4bea8b62e490bae8ca1e9`  
		Last Modified: Tue, 06 Oct 2026 02:33:15 GMT  
		Size: 82.5 MB (82522402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467ae8035b170089afc2d7d544c2c39a158ae3ce8f7234742a3615f877cae7b`  
		Last Modified: Tue, 06 Oct 2026 03:16:54 GMT  
		Size: 211.5 MB (211469045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8c3ea30471a279b3900a23a579e6e571b31411722c09278683ab98a4c462f70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16844629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2318603b845b05bffd7bc70ba0eadfd94c1877c3311a0a2a86771fea4b802da2`

```dockerfile
```

-	Layers:
	-	`sha256:977ae5a3d6dbbe814765314408ec886967540628f678e517684703489a082184`  
		Last Modified: Tue, 06 Oct 2026 03:16:50 GMT  
		Size: 16.8 MB (16834519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e60b64b3e827088f1dadf88bb17409439323c40f79d6be88829f4d8ae70cf7a`  
		Last Modified: Tue, 06 Oct 2026 03:16:50 GMT  
		Size: 10.1 KB (10110 bytes)  
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
$ docker pull buildpack-deps@sha256:616033f938cbdf8ff54573c84948552162d95a59e8cea5f0cad09dc3ca237585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337629744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb97c3986e00717da9c2577f908c5fbf993db259dc212e20e8d777e5f8233c6e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:57:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:14:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b2f5d15526d3e07e793acb96f627120833f3e67b1bf7484f7825bab71b4631b`  
		Last Modified: Tue, 06 Oct 2026 00:12:25 GMT  
		Size: 48.9 MB (48908288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c36cf8654b643c3e98b6fc8926d983a7223f6d9dd5e1d8168d58b157a5d8fc9`  
		Last Modified: Tue, 06 Oct 2026 01:57:41 GMT  
		Size: 27.8 MB (27819948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fdece14f6a4d326128bd3450d08eec6ba801dfe2d93c662720d2e3ffac3dc8`  
		Last Modified: Tue, 06 Oct 2026 02:38:29 GMT  
		Size: 80.3 MB (80347637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dec7c49c57bcca2f6d4806ed6c0a3cede54dd3cc0d344cce696fdd058d53690`  
		Last Modified: Tue, 06 Oct 2026 03:15:25 GMT  
		Size: 180.6 MB (180553871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bb40bced734d27ffd91c8781e91a38fda1ef423dee7903769adbba3b63c98289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16680882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b94e738c02cae3b457dbc086ad6d8e5cf0a542599dda0eaaf91e0e36e45b0e`

```dockerfile
```

-	Layers:
	-	`sha256:caddddafea933ec2616c693f8263a2287968f7840431eef35863c556a9838878`  
		Last Modified: Tue, 06 Oct 2026 03:15:22 GMT  
		Size: 16.7 MB (16670749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3601171e1a50f69dca55ffbabd3fe07c492becee35b791d2e6ea3fafdc32af90`  
		Last Modified: Tue, 06 Oct 2026 03:15:20 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
