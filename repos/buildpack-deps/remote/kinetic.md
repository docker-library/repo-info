## `buildpack-deps:kinetic`

```console
$ docker pull buildpack-deps@sha256:e16024cc2c4dbf85c3c6ff04822645208999d7cde9bc8a6b1902570f2ada9dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `buildpack-deps:kinetic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:40f5c0626a1d9015e5bf86ef9b96ad12b692189cce4d3e3f32dd19ca03ebd63e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258711928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e03212fc0d34b7a6a40c197b60a4c954d59056c24873acd7cd4eca5f7cb9e25`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:40 GMT
ADD file:6c9f486c9412e2a47f196c5d3be4ea6041dc5eb579b1f1c35ae6dd8e7e3bfc64 in / 
# Fri, 09 Dec 2022 01:20:40 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:03:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:03:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 04:03:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:06:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3f701d9643d37eca8cb445ba978c767bc1e07bf958e94504db0298999bfe58c1`  
		Last Modified: Fri, 09 Dec 2022 01:22:08 GMT  
		Size: 27.5 MB (27478988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a07ba93843e808ecb2d8fe27b9909060b3eb2aafcacb61ee4b79b2d864bc58`  
		Last Modified: Fri, 09 Dec 2022 04:10:32 GMT  
		Size: 6.8 MB (6763713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0a661cc0bb87e71c46a1b46c2974535ef311ed2dcbcd7ebe6960feaceddf0b`  
		Last Modified: Fri, 09 Dec 2022 04:10:32 GMT  
		Size: 3.6 MB (3635268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd620181af8c59dd61a7fa812cd7f67c055b59c033685a6ddc3d69708df05db`  
		Last Modified: Fri, 09 Dec 2022 04:10:47 GMT  
		Size: 39.7 MB (39739624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a154a75e23a8b3fafbf113890ccf280aa413b3e826054b2939618a5b2c535`  
		Last Modified: Fri, 09 Dec 2022 04:11:20 GMT  
		Size: 181.1 MB (181094335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:kinetic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b1768a76c6eac3aafa12ede5d310de5af661757b0c3cc442075c76392faa10da
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.9 MB (221855468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5050d77ee2e9dd5ed50b9030cc133e81a152e82546250a267ad8e1504752c39`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:45 GMT
ADD file:d233b1e175c6c664c61d6b9655e68f70321ed1d18717f4709aede57ca633959d in / 
# Fri, 09 Dec 2022 01:36:45 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:46:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:46:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 02:47:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:50:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32d980e58054da2da0ffd3e115907a93757913f5c431a52b4427379d3737ee4b`  
		Last Modified: Fri, 09 Dec 2022 01:39:17 GMT  
		Size: 25.9 MB (25892971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f507b0faa4a3deb29583f3e0d177ecd00b18f5e3b2dca2b99898ed374f6c9259`  
		Last Modified: Fri, 09 Dec 2022 02:57:05 GMT  
		Size: 5.9 MB (5935341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ebd4745d94435fdfc9e6c497c5f614541c7981f9b6e9c62aad6b8f001c1e6`  
		Last Modified: Fri, 09 Dec 2022 02:57:04 GMT  
		Size: 3.8 MB (3801671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c9ed3f5830370cca0da363b1bc6ab5ce1ca905a45de1f043136a1584375790`  
		Last Modified: Fri, 09 Dec 2022 02:57:23 GMT  
		Size: 42.6 MB (42614581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22f5d741d2db52fb206e78906f80262ed7f4a3a935f1c552ebdeea321752b6e`  
		Last Modified: Fri, 09 Dec 2022 02:57:58 GMT  
		Size: 143.6 MB (143610904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:kinetic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:bc358f0d379e0d91faa0830e2d488c1988415487b4391c47b4f70bc7095868fb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246689237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee00b33f852e9099fc78d598201715a8859e427d689efadc7fb728824f4f689`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:47:04 GMT
ADD file:bfc30ac3a38dd1f76f8a80aa5a10bd3abdcddba8c233e54a84935dc8959da97c in / 
# Fri, 09 Dec 2022 01:47:04 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:35:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:35:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 04:36:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:39:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9ac92330003b70c7feb4ea962cd0bd70aedbb2a72b3544cc3d9fb3a78447fa3`  
		Last Modified: Fri, 09 Dec 2022 01:48:26 GMT  
		Size: 26.7 MB (26700267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2684e5542767dd12877be236478b776c30c4436d21aadba763f62ce9b353b0`  
		Last Modified: Fri, 09 Dec 2022 04:43:14 GMT  
		Size: 6.6 MB (6595120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c199a35215df3c7805c0d19e5c7cf8a3d0ca449bdbcd2892aba9655047e8a09`  
		Last Modified: Fri, 09 Dec 2022 04:43:14 GMT  
		Size: 3.6 MB (3602838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c2f8ca438147ff37c25357fd3355cfebde76b5389ba054946060d527c5bca`  
		Last Modified: Fri, 09 Dec 2022 04:43:28 GMT  
		Size: 39.5 MB (39505915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d5c93cd5df332d7d79b74d1f8eaeed36fad7f014642b7e02723b126b4069c5`  
		Last Modified: Fri, 09 Dec 2022 04:43:54 GMT  
		Size: 170.3 MB (170285097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:kinetic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5d31275a27e15e8b89838e63596444445b21d4285eae41d9124878a1f5634ece
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281264602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede2d6a06a42f8473bdf18e5f22e9252ed600ad6d2e380e27d9c14bb226fb410`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:28:11 GMT
ADD file:ff6e70600cb0ebcb9aa6617d8d8c160771f450ae3c28b4d56ee84f3b7b749fb2 in / 
# Fri, 09 Dec 2022 01:28:13 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:40:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:41:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 03:42:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:47:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b9fbf12c270bd8e683dce41eb3b54e64a8658d36272e8728b81587156971e16`  
		Last Modified: Fri, 09 Dec 2022 01:30:58 GMT  
		Size: 32.1 MB (32109595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9979981e8df734d674d8ab41f5650d00a662f0aca63e90245c9eb5312811256f`  
		Last Modified: Fri, 09 Dec 2022 03:54:50 GMT  
		Size: 7.7 MB (7741249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f90d2a08a1e3144b7a2a07b72fa4c1e00cc4473de91f680bfec172fb8db7b09`  
		Last Modified: Fri, 09 Dec 2022 03:54:49 GMT  
		Size: 4.4 MB (4362382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713a559c514a55a0066df2c4b9f9c4b943d637217be3e583e84ae314225e5e96`  
		Last Modified: Fri, 09 Dec 2022 03:55:14 GMT  
		Size: 44.1 MB (44125255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c57b804a9e366953331d104fc4bc76895a8b17a5f4c0491252ee02c7b6f31c`  
		Last Modified: Fri, 09 Dec 2022 03:56:13 GMT  
		Size: 192.9 MB (192926121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:kinetic` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:055682a7d364b6446f71c183013b8fa09e34676449ecec2badd5b3c7501878d7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (279961617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6349540bb494e841c30d22cbe12393db1ab572bc07d37c0e26b18f10522e0f7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:14:46 GMT
ADD file:7e2bfb25c400fe48fedbb3adb245a3bc6b40ec07dae2feeb339c704b967ce658 in / 
# Fri, 09 Dec 2022 01:14:48 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:26:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:27:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 02:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:38:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:080423a9398e3d16c0feb2851e7596ddc2d8d33fdfb3bf0b4a881619b9b86c9f`  
		Last Modified: Fri, 09 Dec 2022 01:37:40 GMT  
		Size: 25.6 MB (25640259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982116c46b9fce2e4125cb4441dc6ea9b142d29299c9688061563ccf1bbdcbb7`  
		Last Modified: Fri, 09 Dec 2022 03:05:51 GMT  
		Size: 5.9 MB (5927602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbcc60f8c38f4ecde864a8f7de2346f74cab29bba32ed107631a7787694cdea`  
		Last Modified: Fri, 09 Dec 2022 03:05:47 GMT  
		Size: 3.9 MB (3881582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fb006617ee17454543d3385ca40746e427401f035dede49af59a38106e7731`  
		Last Modified: Fri, 09 Dec 2022 03:08:12 GMT  
		Size: 42.9 MB (42857867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6fbfb100dffdbe660e12e145d20f7ed2887b177dad698ae515f00a459c4804a`  
		Last Modified: Fri, 09 Dec 2022 03:15:25 GMT  
		Size: 201.7 MB (201654307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:kinetic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6a70c4258b855ebb726574243c63df7fbc0c773be7154b6e9ef7e439f47d5af3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228600526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714a7221bf7f339d444d7ff568cda223a89639fa22c9ffc04a4cae17bae6a220`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:53:16 GMT
ADD file:3664024c53edd795e8d3cdd91bc26651c0962e85200bdf8a9b23c7103aad3433 in / 
# Fri, 09 Dec 2022 01:53:19 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:47:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:47:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 03:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:51:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a9f1ddfd3fe3bd668f8c96ba98090ed119f7f65f39d79a995ac0c7bf56187808`  
		Last Modified: Fri, 09 Dec 2022 01:55:24 GMT  
		Size: 26.0 MB (26029416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa03264764f0039405b5d005ab6b63c03296b11335572b5827723f147640719`  
		Last Modified: Fri, 09 Dec 2022 03:56:30 GMT  
		Size: 6.5 MB (6456848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac79ba80bd194abb63b9c0ee669c5f870de0b74540d78a8bb182bdec75fe63d0`  
		Last Modified: Fri, 09 Dec 2022 03:56:30 GMT  
		Size: 3.6 MB (3625131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a67c4c62ed25eeec79da6439191c102422de3de41439ffe954576bc6869ece`  
		Last Modified: Fri, 09 Dec 2022 03:56:42 GMT  
		Size: 39.6 MB (39550758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea550d76676225a1ecc233fbc532dc70a182796de780cd6b5433d214737317b`  
		Last Modified: Fri, 09 Dec 2022 03:57:08 GMT  
		Size: 152.9 MB (152938373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
