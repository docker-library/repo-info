## `buildpack-deps:noble`

```console
$ docker pull buildpack-deps@sha256:d1de724c3b2df4fd29f600ad0834b4c9f2cc812c5cdbd5c528aa20935aa44aa0
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
$ docker pull buildpack-deps@sha256:0a1caa1cbfad810ca0d10eec9fc5924ea1033eeecb13cdab9fb00bfb47f196bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274178135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f703546db972bae041beb4c2698ec36648425a55ae572226f36e0772c1fb684`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:13:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 21:15:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8027f0d50db58b7bbac3b810440b37702558515bce494fe28e3d1dad45be6604`  
		Last Modified: Tue, 18 Aug 2026 19:11:03 GMT  
		Size: 13.6 MB (13583469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab9aee25fac768e991793fedb41401419c02d1217578f9a6a8437a6ce8e63da`  
		Last Modified: Tue, 18 Aug 2026 20:14:01 GMT  
		Size: 45.3 MB (45337256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6036fa9301e6b47dbc3929fee5d542442bd1c49dc202eb2133ded9ed31d2acbe`  
		Last Modified: Tue, 18 Aug 2026 21:15:52 GMT  
		Size: 185.5 MB (185504603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f3dec4a855172863c519131abac5dec128cde601099b04d1f01a8b93fd621694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11716176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc6714d1b2f59b21a7661bd0fe3b8b19e2315df2793de9399feab582cc5ca8`

```dockerfile
```

-	Layers:
	-	`sha256:e984d429b5d5ae251040d5624b78ffebd595491939e2f0841c8c83bdbaf16cb6`  
		Last Modified: Tue, 18 Aug 2026 21:15:48 GMT  
		Size: 11.7 MB (11706035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:179c380a4becb76ae380093fbe3a39db87eaa9b43c671a69707c0799b2467bbf`  
		Last Modified: Tue, 18 Aug 2026 21:15:48 GMT  
		Size: 10.1 KB (10141 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6c602602af6337c50cfe4496846ce38fd6612f925cab14c4ebdf7fabf7ef084f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236252694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa1909af88eae0b86ec5f6be571c6bfe15f5d86447d559024414de0176830d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:21:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 21:15:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e705053c390f458952661367d1fd094da45d63d75d0aa9c53479c032a63c64a4`  
		Last Modified: Tue, 18 Aug 2026 19:10:42 GMT  
		Size: 12.7 MB (12739067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202aced9f4320b0d816425c4afc4fd6590ce2689b5efd4aacd777232b0f45145`  
		Last Modified: Tue, 18 Aug 2026 20:21:41 GMT  
		Size: 48.9 MB (48911128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b3b71a8ff395904913d2302f8d3a8bc1154aee46b43d4822f55a61f2838e53`  
		Last Modified: Tue, 18 Aug 2026 21:15:48 GMT  
		Size: 147.7 MB (147729719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:105609b867b4ffd95ac54107d98b198c7207f867bdff9b518a1dbb9b378e1509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11041876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c5f95289b82aca651428c52d6131355569a2965c83fefe153a95d02c0a815b`

```dockerfile
```

-	Layers:
	-	`sha256:582b33843fb078cfa81f5d4b6211fa89973b8961aa48e5d87c2e093c6e7202d6`  
		Last Modified: Tue, 18 Aug 2026 21:15:45 GMT  
		Size: 11.0 MB (11031672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4d4284b9a74dcfff121f56c78ab99038140a7e0d221af9e0a25bf96a6295dff`  
		Last Modified: Tue, 18 Aug 2026 21:15:44 GMT  
		Size: 10.2 KB (10204 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ae8138a2fa456eac16a4e0ba56f79ec4aa92fa816064143b61420433b2a34f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263697137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d80a0f0ccb5bd290721aad6ee22b1357ff04349718a2ba31e796bdb676df1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 20:13:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 18 Aug 2026 21:15:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61b2e31a0de4048fcad376f6bda63aede0709177e732590bac5f872e666eb12`  
		Last Modified: Tue, 18 Aug 2026 19:11:02 GMT  
		Size: 13.4 MB (13427067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6344e371ceb6b66ebdaca6cf6fc93ea1edbc48daf1075d85855896c951486c`  
		Last Modified: Tue, 18 Aug 2026 20:13:48 GMT  
		Size: 45.3 MB (45295778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d1d43c7f4ffe47b59889b6043f51b51f480fcefc378d615c5284a142e55746`  
		Last Modified: Tue, 18 Aug 2026 21:15:43 GMT  
		Size: 176.1 MB (176087057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9accd765118a5a675c5a9f41a2edaccc7a9ff4254cdbfe563a848dbd06804e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11265683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1853e97014cfba1bf84e1574ffcf8e1596e8dd282ac2b3a8b5d025671c6ece6e`

```dockerfile
```

-	Layers:
	-	`sha256:21d8cf3dbd50c4071982574483300c60f2028736500a0582a8613ecf5635c91e`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 11.3 MB (11255462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2707fc167b8be24760fcd06ec9571e720efae6e0958351d46fc5d63d79999ad0`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 10.2 KB (10221 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9c580668315a7635e36c3f139d90db1016c99d864432f788fdec1bd76382dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292060811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39aedc635e9985e1494922918294d41fe2ced43a280d79ec348a0a0c4242a82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:11:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 03:09:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 06:21:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c350e11d5f483251f1b9d29b78becc5fcd8ae3250f81356bafb1c18288892a`  
		Last Modified: Tue, 04 Aug 2026 01:11:47 GMT  
		Size: 18.5 MB (18541450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503e44e249c4928f5eb81976d10571c9b35c5550a74a0611794b98c60cab99e`  
		Last Modified: Tue, 04 Aug 2026 03:09:45 GMT  
		Size: 50.3 MB (50303365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7618ff3a925edb45e83bf95e08dab67fa75d1f080f4ecfb306f297185a81f7`  
		Last Modified: Tue, 04 Aug 2026 06:23:03 GMT  
		Size: 188.9 MB (188905323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4ed67e8ec24a552b86ac4ff7b7be404b56e87f7cb4e79c413b8b6e6b6e8bfedc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11213054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6a5c01418032cebe3c04e5c8dd0fea5ef4a4f44e52855e09801e087a862a47`

```dockerfile
```

-	Layers:
	-	`sha256:4c96082c1003b5492b7f32c5fd3317d15799351821c7903f6955399af140f27a`  
		Last Modified: Tue, 04 Aug 2026 06:23:00 GMT  
		Size: 11.2 MB (11202881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fab0a500c103063188ba0456ce1d531bc6a44351192298b964dc14ddbb05f9d`  
		Last Modified: Tue, 04 Aug 2026 06:22:59 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:a6966b9c75e18f663f9f1284b465cded1b3d3fefe29913da95a75cdcdad21146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.2 MB (330183851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa8cf9627617a27c02ceb0197a67d92bd13103549af79eca3aee1e0be6547c3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 22:05:08 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:05:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:05:09 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 22:06:18 GMT
ADD file:92a48184ab69ab31b698d333efd875f6fa0f69b8c6b66fb9364e2c45ad98a3e9 in / 
# Fri, 31 Jul 2026 22:06:24 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 03:55:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 04 Aug 2026 07:11:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:762baa88da0248ffd5b4e64693b9d04fc144101bcdbcc6dcc7d9a6be2a8b7953`  
		Last Modified: Fri, 31 Jul 2026 22:22:50 GMT  
		Size: 31.0 MB (30982563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5469f2682b04d5d553e99e19f37ab9af6610eb8845f5588d75b4d1c7edd8419`  
		Last Modified: Tue, 04 Aug 2026 01:15:56 GMT  
		Size: 14.3 MB (14295809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce756d6653397d2ffe9046007042da954ebc9cc155113d51bce6ff5f8b1bd7a3`  
		Last Modified: Tue, 04 Aug 2026 03:57:58 GMT  
		Size: 53.8 MB (53803094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d545fa698f449220f46c2c6cdfa0593bb5d2e1a31e78a973b7a75f8ede35e9be`  
		Last Modified: Tue, 04 Aug 2026 07:22:40 GMT  
		Size: 231.1 MB (231102385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f7d4f17e96734c40cfd5979e8c9495cc3fee5bc93853e99faa590f1873ff8361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac17031ac378a745d11294b21f1c0aa4d5e8990c8531c0e68f7d8e8f59d8eba2`

```dockerfile
```

-	Layers:
	-	`sha256:d07bf486257e0334f934ab6b155115e793d1ef6a5c5fe48aff2c39719745d7f4`  
		Last Modified: Tue, 04 Aug 2026 07:22:08 GMT  
		Size: 11.2 MB (11196118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fbfc659b2bc8c32ecb06d3c397ec257ea3b3d221b02fa5a5dedbb41601cd18d`  
		Last Modified: Tue, 04 Aug 2026 07:22:05 GMT  
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
