## `buildpack-deps:jammy`

```console
$ docker pull buildpack-deps@sha256:d4772f876f8647b56d4afc4989d526e4c4111fc39177d175c5a70d817c184858
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

### `buildpack-deps:jammy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:fe30470b234405f2af4dc715f97d656dd06faed304083b05737c035de914b8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252275924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0069739418c7fdabbdde0f28a0f9686b3c682558adcea467cbb21edb92ae2b76`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:16:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:17:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fca9b11e0b36d16227f16bd87665920799c99f0b7ead34a3b68729af27a3c13`  
		Last Modified: Fri, 02 Oct 2026 02:16:18 GMT  
		Size: 39.5 MB (39508102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe3ef6710d49d3f66373d2389bb3463980024368fe0c2aa1ea0f8d98b7494b9`  
		Last Modified: Fri, 02 Oct 2026 03:18:12 GMT  
		Size: 176.0 MB (175950595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c04cc31ca2d26f7a0ee5855d7adb582575a00a4e3e3e30a4447048d3ede48172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11834510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57a9105024f337701dfec938bde4873a2b98e98a0b3b2f5efac2fad5adcada0`

```dockerfile
```

-	Layers:
	-	`sha256:f28c88dbb6a897f42d18e3ab5bc61fe1b02a2355fa6bd405be0abcbd008f1338`  
		Last Modified: Fri, 02 Oct 2026 03:18:08 GMT  
		Size: 11.8 MB (11824350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1707e322f5904a4d91ad7e3dc39bdfd1a80ae318fe4ff4be6159bb7e67c1d560`  
		Last Modified: Fri, 02 Oct 2026 03:18:08 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bbe5bb4c2a43c8a2aa9d35bd669d531ca7c0584899279d58451206904f78aa8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219012022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d542d6d3929fa3903a51531e2735f78faa513b7420991882ada0075f6dac2513`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:23 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:23 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:27 GMT
ADD file:f85ca4890cd4193429589692b507cff4da19fadfcd09f8f3b76059208fa9627e in / 
# Thu, 24 Sep 2026 22:24:27 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:15:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:17:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:63273367a03196c0df650ce441c9e9c9f2a05ed2241c911b17566eca78d2477d`  
		Last Modified: Thu, 24 Sep 2026 23:36:18 GMT  
		Size: 26.9 MB (26855856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b23c69db30f347e1678227391ab499623fe60cd470c68a468692b6eda38593`  
		Last Modified: Fri, 02 Oct 2026 01:11:18 GMT  
		Size: 7.0 MB (6966955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c124b624622a76bcddf018a621c177babbe339b5e5e468db63a6b15cb2f18d`  
		Last Modified: Fri, 02 Oct 2026 02:15:42 GMT  
		Size: 42.3 MB (42282091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a23e375c04851a3dd4d5bbed8a1ede6403ad4c1502689f0ad836cbb90364fa`  
		Last Modified: Fri, 02 Oct 2026 03:17:33 GMT  
		Size: 142.9 MB (142907120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:21c03517f9b35f6a8f4793504ee7b1f1aacf77876607bc158f157b3abe7dd53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11623783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546f26866268a63a8e5bb8b75ddd9bfe0b8b260d03729915a26fa0ff51fbb62f`

```dockerfile
```

-	Layers:
	-	`sha256:32dc30d7d1ac94933d2f4ace7bfdcb7d4fcddd697c6bd3e47c29d94337256be6`  
		Last Modified: Fri, 02 Oct 2026 03:17:30 GMT  
		Size: 11.6 MB (11613559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7fd26ce4ee5731d53e87feef157398387c40dbd751a602fa2729e22c07c9196`  
		Last Modified: Fri, 02 Oct 2026 03:17:30 GMT  
		Size: 10.2 KB (10224 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:42b0c20d59cca1ab4bf96da1cc9027bd27b483d7e9b76491e305f9148b7a133e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243644261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0020e6e7e1bc50b4f9cf06f81276a1af4ffdcb7c337a24b32d6db8b9b8b32e56`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:15:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:16:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e513d89b2a3d22806e25027216313bf78c1605b0753e5da1ee29d124afd7c5c8`  
		Last Modified: Fri, 02 Oct 2026 02:15:43 GMT  
		Size: 39.4 MB (39435725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bce396d1a8e11e141a1c6947a25b7b140dc386a09167087e86600921e60039`  
		Last Modified: Fri, 02 Oct 2026 03:17:29 GMT  
		Size: 169.5 MB (169504074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9f1d1eeed79720cbbf3236da583abeaf009ca559d612fd87651ed07fa1f16868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11830257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ee9535654495aa692d05d87aea0259f836c543a900e0bd15af9d0ad937c624`

```dockerfile
```

-	Layers:
	-	`sha256:57ffdf6eb5ba41d70b1df735a19676c8d6a9ef4562b72edf22ce5a1130a446c3`  
		Last Modified: Fri, 02 Oct 2026 03:17:26 GMT  
		Size: 11.8 MB (11820017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b57eb28c75601b254c6aa66b49c00d588a5e0005bd1da548b8e58a848fa1377`  
		Last Modified: Fri, 02 Oct 2026 03:17:26 GMT  
		Size: 10.2 KB (10240 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d6926d4f93f813f2ef33d56a1a6d8d6c84f12f53a443bfe93d86d81d5c509703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273516102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967d783c4eab49891c0fada20ff0c3dd42b8b8fcdaf04ff29c2cc674bedc2fba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:29:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 06:04:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:49:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3957c99cc69d4f73bdca6e8af244f071ddcfd5a9ea6755c0e070ef51d1b26b`  
		Last Modified: Fri, 02 Oct 2026 03:29:30 GMT  
		Size: 8.1 MB (8146749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d798b77abf402139faf1fc0db9753f1694bd50631e79b16742102415c6b769`  
		Last Modified: Fri, 02 Oct 2026 06:04:51 GMT  
		Size: 43.8 MB (43796791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26307695464659a014b98cba553ee5ad716fc1b06b813fca06184edf44ae1724`  
		Last Modified: Fri, 02 Oct 2026 08:50:29 GMT  
		Size: 186.9 MB (186869354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d339436eb4a8746dcee4c90ca744ae3e674007c3eeda07138e2377eec553737a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11793907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30f6c3d48f8d8e65768f4b283dc73d1583c1b9ab3c068270f310f3235c5d5cf`

```dockerfile
```

-	Layers:
	-	`sha256:e09eedc2db9001334e2fd6cccb6c022b47692f42e188ecd9f118f7307782158d`  
		Last Modified: Fri, 02 Oct 2026 08:50:25 GMT  
		Size: 11.8 MB (11783715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e30e734006944a8da80a92410d68a78f07b93aa1acf0aa58f756c90eacf9aaba`  
		Last Modified: Fri, 02 Oct 2026 08:50:24 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c2f41445f7b7adaa0fa1160ae0c070383177a66260bce88fe2ae9c8c3b415384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277225568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e584b217411ce02fafe171d96232fe36ce28f8d4eb7e274994ae84e8918822e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 23:05:25 GMT
ARG RELEASE
# Thu, 24 Sep 2026 23:05:26 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 23:05:26 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 23:06:34 GMT
ADD file:cb3a3c94d10d49287891ea08cbf8b7fe79473139463a46576d63e2080b6bc527 in / 
# Thu, 24 Sep 2026 23:06:40 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 03:39:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 16:01:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f3630582427710780089d8db818cfc199c0497126d6d8cff737fe0c0f2c57faf`  
		Last Modified: Thu, 24 Sep 2026 23:36:32 GMT  
		Size: 27.3 MB (27301128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b2bae9d2354f858148e47c23992147b58b4bb8af88954f41563f4b430396d1`  
		Last Modified: Sun, 04 Oct 2026 20:38:39 GMT  
		Size: 7.1 MB (7076071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650b6bcfe3169dc77bd9c189f779b60b07319c69be9590c6f80707e2d496b181`  
		Last Modified: Mon, 05 Oct 2026 03:41:58 GMT  
		Size: 42.3 MB (42329042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa65b95ec1bd0cbd0599ad22848d3edae9a9041ecfc2e4089168644bd4e0dc0`  
		Last Modified: Mon, 05 Oct 2026 16:11:31 GMT  
		Size: 200.5 MB (200519327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3c9df7d923ed1268a7c01037f6fa2c91b3ee9015f9f9307ba7861d7a17b27061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11776263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a978e43ea18a3483548e1c22432208f12f4024e5e9781afefcf497458ac18b5a`

```dockerfile
```

-	Layers:
	-	`sha256:b1db0984a47fb87fb05b68e9e0eab5122e5b4b537d688357455eead8c51ce4ee`  
		Last Modified: Mon, 05 Oct 2026 16:11:03 GMT  
		Size: 11.8 MB (11766071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2491611a8d196ad451f4fccc3006a52a672693234ae8fe39296093790ec7307d`  
		Last Modified: Mon, 05 Oct 2026 16:11:00 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c8874124c90662fef3ba5cbffaaae1a4c65b6f7d0b6b3698cd7a9be65b8d5001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.9 MB (225942029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a005f56db8c3ac5d318033387ec7de7f8fb55644f48be53f2685f9bbfd2ad1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:20:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107c8307b8f1f0cafa2d997faab0e656ddfa0fd267f59c219822ce06128f510d`  
		Last Modified: Fri, 02 Oct 2026 01:13:02 GMT  
		Size: 7.0 MB (6978710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71716f388c3c7e6a4c52383ae0c4f0f2a375c616b6094c4add93dc6d5a8833c6`  
		Last Modified: Fri, 02 Oct 2026 02:20:46 GMT  
		Size: 39.4 MB (39438069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adafa51dc7760193c6bdbad2c753b9592d68aa92abbeb6de41192743d8e3669`  
		Last Modified: Fri, 02 Oct 2026 03:37:36 GMT  
		Size: 151.3 MB (151303182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a1e96aff02fdfb07ee462005b44fb3a4dede6a4e16bb3b7acd394b21f4ec9fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11648387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885ed989350b4949030a8c43bd5df3e5d68b7fcd1ee354bfcc503106fd49a8f2`

```dockerfile
```

-	Layers:
	-	`sha256:ca1c405b5d154ae607b1918e332a4ccbc2d723a465706404fd80c206774855f7`  
		Last Modified: Fri, 02 Oct 2026 03:37:34 GMT  
		Size: 11.6 MB (11638227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a07cb948cc9e823151e750a805d1987aea7c0cdf066edcfd531069b27f7d5df`  
		Last Modified: Fri, 02 Oct 2026 03:37:33 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json
