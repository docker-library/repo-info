## `buildpack-deps:trixie`

```console
$ docker pull buildpack-deps@sha256:8e5aa7ae027e17c95b884fed08b812f96389371ab255f1f68998297ff9d8fae5
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
$ docker pull buildpack-deps@sha256:df790c0d8adbcb8dd4fe92bc31f2916887723fd3a0f5e21659e065bcffe62da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.3 MB (343253990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7ece9889600ee1b67d44fb78d36d42f8bd246ce0c70534f7a9de8ce55f6a63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:40:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:13:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:31cdd84f3313aed453f665b91a900091c434a8f09c15bb822a4e06103d09ecb4`  
		Last Modified: Tue, 04 Aug 2026 23:51:31 GMT  
		Size: 47.5 MB (47489632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525e2e1f5f1cd4f14b03bd4f293d16a39172386225a1ffae568978c7aff7bd59`  
		Last Modified: Wed, 05 Aug 2026 00:39:33 GMT  
		Size: 24.4 MB (24364809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6dbc379194f02207cf2fef428e2eab4bdfcd7fd0f7f44eb24360d20114103e`  
		Last Modified: Wed, 05 Aug 2026 02:41:01 GMT  
		Size: 65.4 MB (65352947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e09a36914e5678cdf44ddbe8dbdc28bb55c2b269a8caa703949864f5dfdd38`  
		Last Modified: Wed, 05 Aug 2026 03:14:26 GMT  
		Size: 206.0 MB (206046602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9525cc9889d13b225f6f33b4d91c7834897a31f6b5bf80f16a8f1ec327f63054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16974322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4fa5730f4d4eb240022e5b7274bd757faf16de058d0d7e9fbf2c9268eddc95b`

```dockerfile
```

-	Layers:
	-	`sha256:28cf222d1aace893e1b7426b0ffd834a5672d86cd176f5a649e53d97ac3be22d`  
		Last Modified: Wed, 05 Aug 2026 03:14:23 GMT  
		Size: 17.0 MB (16963788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e91b0b582b76512853e5d53f2f78d9f348f440785e047bc61a522da94012f05`  
		Last Modified: Wed, 05 Aug 2026 03:14:22 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9054b9895c24e50e38d17210047dfb2103c38d36a712fa40b0b773c16d09829e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325746268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ecae4903a394e4d26ac2a33fab43641b97adf93ddfb5a1d16cedc52613eb36`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:17:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35864f9d807228c049d16516942014285d00a38ed3357664d01391ed0bf37fff`  
		Last Modified: Wed, 05 Aug 2026 03:18:26 GMT  
		Size: 193.6 MB (193608477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4d125c8def49cf4d65e7b5333ea9b3f26089376bbaca2be028e90d7d8765f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16980112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52fc74268fa0196e1abd5015146ce25d22f9a0f9609266fa0d71f1f3d05b03d`

```dockerfile
```

-	Layers:
	-	`sha256:19eb6691acd3e99a8de8018f4cd02e75b0cc3548a0f05b17da5096b4497129bb`  
		Last Modified: Wed, 05 Aug 2026 03:18:23 GMT  
		Size: 17.0 MB (16969578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13762005b11a6b7b9765815023f721b370b0427c6567634ff1ebd09d06c44578`  
		Last Modified: Wed, 05 Aug 2026 03:18:22 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d87865aef519d741e9e2257f33b45442680ab454ea3469804db0d90874f476cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.8 MB (368757878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457f6f9e44c0f8d2803e9e9b5bfffbd1540828379029ee0f47448e95c27034ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c92d7371fbad1c4a9425f83a28c6b78df6d1bd2014afc1eb00522b2b552a892`  
		Last Modified: Wed, 05 Aug 2026 02:17:35 GMT  
		Size: 226.5 MB (226456976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:21c447b731a8b12d80f050d5c32c89c0db3d5b52093ce02309b0dc037b65f34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17295801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f210248417bb01f816455e02b5b2a0f04f89537d0a84272b1ae3138d73bd5a7b`

```dockerfile
```

-	Layers:
	-	`sha256:26db4bf5035de6d459d91b3f28813ecc3e8689268711071995c695f317f04a5f`  
		Last Modified: Wed, 05 Aug 2026 02:17:31 GMT  
		Size: 17.3 MB (17285247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45bd750463ad57bb6c12fb0e73a4525431cd9bfe0207e3fb7f174d14e005d35d`  
		Last Modified: Wed, 05 Aug 2026 02:17:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; 386

```console
$ docker pull buildpack-deps@sha256:fa6ca6910cf3133036066f9bb1ce461b25c53caae16005e4a934f6570a5ef212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.9 MB (387915216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7461facd7680c9824f36c7c58134f2cfec81ce76cbf49fb58f3485f770ab8274`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ec548455cf061e33066b297b3d6422e0f3a9b061c1f92a46c05e3687aee2`  
		Last Modified: Wed, 05 Aug 2026 01:41:30 GMT  
		Size: 69.8 MB (69839732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d912957663d93e6e68ce784661abb92095b3da569e459d6bbd2cebe7ac4b77`  
		Last Modified: Wed, 05 Aug 2026 02:18:12 GMT  
		Size: 240.4 MB (240443932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b291896801d8525bb385301b11f95a09bded74c07785439001b1bd5cdd139445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17181625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42757e2b48d9ac55f10a5a449194eee0cccc830f816f6c0d963701b02f71560d`

```dockerfile
```

-	Layers:
	-	`sha256:69a154f42763a83eb18e41bc0aa44dfc6459a3f5f6e2d4e564e4451d40281d3d`  
		Last Modified: Wed, 05 Aug 2026 02:18:08 GMT  
		Size: 17.2 MB (17171191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3b77abe0fc9ecd916f2117a3e6f16a106d36a52a82bdfce6eba06e5d95cd2b`  
		Last Modified: Wed, 05 Aug 2026 02:18:07 GMT  
		Size: 10.4 KB (10434 bytes)  
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
$ docker pull buildpack-deps@sha256:1aa7d2b7bd8636fa61674a1ed35a4ef41a01a42a9a8193168cea12a834fbc635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.7 MB (351679359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c848496ebcf963f506b825ed4c9b04ea2ba7ed5c79938dab4d2d696b724d0d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:40:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84d63eaa6137e87f6d73d15defc7c8e1c5f48351989da2ae83463f41f98de2`  
		Last Modified: Wed, 05 Aug 2026 02:03:58 GMT  
		Size: 68.6 MB (68648013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de41282ca9ec7f0464528fb53fbfabc59e4b1b31a57f586b8916455357587a8`  
		Last Modified: Wed, 05 Aug 2026 02:41:52 GMT  
		Size: 206.8 MB (206845360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:51a4fc104cf7f36e78912bc9d40d369cf17e1ca42eabd03b6c32f12dcb8b6e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16989285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36867751947a009b4fa51d33564b81931b16f84cd41a100cf546dcf4ea29b9c9`

```dockerfile
```

-	Layers:
	-	`sha256:2e9feac6a391e85b71a86d6b45f570c505182fc016e317a8de64bf7e2ee654df`  
		Last Modified: Wed, 05 Aug 2026 02:41:48 GMT  
		Size: 17.0 MB (16978823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d2ee70987967268d2330e8c41848b04101bd595ec0dea76d7cfc137451472af`  
		Last Modified: Wed, 05 Aug 2026 02:41:48 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json
