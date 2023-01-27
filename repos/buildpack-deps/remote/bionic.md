## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:01383e3e762f4e0c07174ca1980b31b98b5fdcb02f8593de755d4d73b702f830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3116c18376d09e17112069b62b424b65b2e69e59c25935a0d0ce294b99b31be8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221417088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f5c6cc4f99d522ba2deba65e08b635b209b481a6851e99117383aa4abac220`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:09:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:09:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:10:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:13:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70e1735669b0f58ff8d77a231156d8439ba4d153be7da76d0d62793cc801a79`  
		Last Modified: Mon, 02 Jan 2023 19:17:54 GMT  
		Size: 6.6 MB (6617147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9a31ed2ee5d3aec4310bdf9842467af28116765a8b61aad646b9743e9dd28c`  
		Last Modified: Mon, 02 Jan 2023 19:17:53 GMT  
		Size: 3.0 MB (3025975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8fac9d294c8a5e20900b05e19ebdc677c81e6eac475b32d47ffd4385033ade`  
		Last Modified: Mon, 02 Jan 2023 19:18:09 GMT  
		Size: 45.5 MB (45508517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b583399575af03a7d6c8885145f0e012f2d7e9a4962fa9d05b4065c57645f0f7`  
		Last Modified: Mon, 02 Jan 2023 19:18:36 GMT  
		Size: 139.6 MB (139554007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d5dd8920a2e48e32086060d96ff0301bd02869f4d12d45ad774b9bb7755c5838
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189566139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d436cd51f8c0b6f2fc6afdb8a7b72155f68d52ff3ea13d36d44582a3cfc272`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:24:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:25:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:26:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:29:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e540801c42f8432293d458d53e5bc0b6ef91b8d645947689839a7231dca6961`  
		Last Modified: Mon, 02 Jan 2023 19:39:15 GMT  
		Size: 5.7 MB (5678197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91387436a7cdbf2383b0e9a88100a86c5dad038d936ee66b8f471b2fb5aaeb8`  
		Last Modified: Mon, 02 Jan 2023 19:39:15 GMT  
		Size: 2.6 MB (2585770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632ab5acc73c71ab37aa5612d7f4f664ccbf41d0c98263d7192f548ba4b27a5`  
		Last Modified: Mon, 02 Jan 2023 19:39:34 GMT  
		Size: 40.7 MB (40699352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac889c6e6cac354a8f1c8d27647bcdb0f05a74a89acc562e51517c148bb35a50`  
		Last Modified: Mon, 02 Jan 2023 19:40:05 GMT  
		Size: 118.3 MB (118297687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:89403df688f23697f7aa5c093f799d1b1bd7318ccec264839af62b7f08a2befe
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206003693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb7f901cd3caab79e4579d6a0acf5863dd8a0f453cc11362c2063bf0f415529`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:47:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:47:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 18:47:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:50:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57589a61e75b6fd9c40b958bcd242697d3bd9c18d4e46b2ab119920727081ae`  
		Last Modified: Mon, 02 Jan 2023 18:57:37 GMT  
		Size: 6.1 MB (6054448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fe4f939a742980b846ab4256c36fd2e683a0409f5c4655aced05555c4bf9ee`  
		Last Modified: Mon, 02 Jan 2023 18:57:37 GMT  
		Size: 2.8 MB (2790412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846d548556b4af418a2bea61c5b5aaa5f28e8fab62286fa92db02592dc6d346b`  
		Last Modified: Mon, 02 Jan 2023 18:57:50 GMT  
		Size: 43.3 MB (43311318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdd8550e90b6a38650ec39f57285703575e24d543ef0613e3db615c95e85618`  
		Last Modified: Mon, 02 Jan 2023 18:58:12 GMT  
		Size: 130.1 MB (130112305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:455f53c0163b1937d6c9caaea65456e59efc6ce9c3895e0cdb49b02e617b7da3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218246247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbee4cf2cf407d732528debc39687ad66ac8b8a5594ff387ca753ba072bf60`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:00:42 GMT
ADD file:dc76519390168deb6f9bb6052d08c6e7840908a831276d99bb19c6c245f8517b in / 
# Mon, 02 Jan 2023 18:00:43 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:22:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:23:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 18:23:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:26:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b284dbae22f155bfee2a25073c97c9758e66aa7129a455cb533d8e2cbc873f9`  
		Last Modified: Mon, 02 Jan 2023 18:01:17 GMT  
		Size: 27.2 MB (27165399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd588f5ab18433db51d33fb54b32dbf18f5af8fb4dbd30b3407f93e99ff057a9`  
		Last Modified: Mon, 02 Jan 2023 18:28:46 GMT  
		Size: 6.9 MB (6902109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bf514bf8c4c2f919659a2f58d292672576181c783d997d3caa71f5818bb613`  
		Last Modified: Mon, 02 Jan 2023 18:28:45 GMT  
		Size: 3.0 MB (3042082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a83431373780b1960b3bc18251eb91b21ae542545bc96ec68e5b0f5a6aca46`  
		Last Modified: Mon, 02 Jan 2023 18:29:03 GMT  
		Size: 47.1 MB (47083865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0678e40df0e46d56e6cb63a3d800e3af92637facafd49f35c80041d7aa2da4e`  
		Last Modified: Mon, 02 Jan 2023 18:29:30 GMT  
		Size: 134.1 MB (134052792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f30a3bc985c96d745a69d4f0bfe3fbed845e176ae4da07789704c2fca5c7e60d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246432101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed292ae3c7cfc9d3eccf9cfa691a24aa780c47795212f9918a2eb771ce633198`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:48:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:48:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:49:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:53:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befd0bb839ab8fc69203938758828b00be2b7fb37d5210551ea3d90ebda94183`  
		Last Modified: Mon, 02 Jan 2023 20:01:31 GMT  
		Size: 7.0 MB (7033777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844adca0bb9cb09cd253aede357521a09c1c33c3ad28d1bfd07c2efac2d3eecc`  
		Last Modified: Mon, 02 Jan 2023 20:01:30 GMT  
		Size: 3.7 MB (3740443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17e91f959c5ee885380982ca6559b8c4e491f905fba1483c5d26ef3e5e5d88e`  
		Last Modified: Mon, 02 Jan 2023 20:01:57 GMT  
		Size: 53.7 MB (53739195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa30c6e1f4d221071d954c3ad968af87d04a8bcada581e61bef77fb2ebfae945`  
		Last Modified: Mon, 02 Jan 2023 20:02:45 GMT  
		Size: 151.5 MB (151476201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b21d0224c4e2b551f9d0b4abc8ba720f5055f3b4743591f2e566de9e5419b99a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205765052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2089a541ea1917effd5a003c9a3f8d766d6b5ba49fee90f3a4cbfb5192696c7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:43:32 GMT
ADD file:735e44144d502635bb4630f743d35453afe550177166dec1f1f6f698c04d4a07 in / 
# Mon, 02 Jan 2023 18:43:35 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:02:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:03:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:04:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dceda0ac2bcb2588338678999c8d219d3822e36f9e1f3c16e9cd33703c859b`  
		Last Modified: Mon, 02 Jan 2023 18:45:16 GMT  
		Size: 25.4 MB (25371161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf51485d61dd8920d8818bf878a63bd6646875b39b7f02a1de09acee5bf9113`  
		Last Modified: Mon, 02 Jan 2023 19:18:54 GMT  
		Size: 6.3 MB (6306901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1bc61dc0e7c8ccf856956e64b47fa0b7e11797064ed4be5051e07d6931c558`  
		Last Modified: Mon, 02 Jan 2023 19:18:53 GMT  
		Size: 3.0 MB (2976528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3945502d04a2afecc99a0e6b6e3882f80d2620a631571cc0c1c5abe4e86d419d`  
		Last Modified: Mon, 02 Jan 2023 19:19:07 GMT  
		Size: 45.0 MB (45044266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c976b9c05c16fc76f7eb1783e379214e7bc5f9d67c29f6140e0ad85309b65a12`  
		Last Modified: Mon, 02 Jan 2023 19:19:30 GMT  
		Size: 126.1 MB (126066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
