## `buildpack-deps:jammy`

```console
$ docker pull buildpack-deps@sha256:65414d36a3e04c39a386a07437664b6fcac6f5c6b25634a7e0817f44df2e9a07
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
$ docker pull buildpack-deps@sha256:c8a8416c0a50c43da83ce229c3d1ce3a19b81b9b72f262f1c90d3d5980c33c7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249472680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2b42a425a6510de6e7e0ca53e1c46382d6565eea9f0cbaffa91d6bef54cf66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:12:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:12:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520d0981715a94b55c77c7aaf996d2db0f581789b70f30a4c66ad84c7f159cd1`  
		Last Modified: Tue, 18 Aug 2026 01:10:25 GMT  
		Size: 7.1 MB (7063751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d2ac5643b6e757853855cccd899f453ac5457d1d073c803a18d6c744e27b5d`  
		Last Modified: Tue, 18 Aug 2026 02:12:32 GMT  
		Size: 39.5 MB (39477398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff62eb0d3dec6a9da1d533c4b7bbe97c80483d01b73011bcb0ada4994ef9e4c`  
		Last Modified: Tue, 18 Aug 2026 03:12:49 GMT  
		Size: 173.2 MB (173194588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:42893b47e06fa12196cd0af3d80c10456bb347464feab2f03e375e1f7be7edb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11834370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e315900110aeb87cb1fc6cbcd5a03ea1bf72cff603ca20f899deba7df3df85`

```dockerfile
```

-	Layers:
	-	`sha256:f4add6d0e6a5f625bf86d690e0da14f2c3a76cc7796937b7591bf75d306d7768`  
		Last Modified: Tue, 18 Aug 2026 03:12:46 GMT  
		Size: 11.8 MB (11824210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7597a59384424d0a1144c3d03c867c728f05ea24d32d39158b934afe247f2cc4`  
		Last Modified: Tue, 18 Aug 2026 03:12:45 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6af2c4dffd61e8553ab8ff84fae8ee8b225949da97c2497b3b5d8b71d2731e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216744034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74700dbb84c05f7a0c938285fefaccb8e8608620a761b71832f10bd439aa7b29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:43 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:43 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:43 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:46 GMT
ADD file:28008f9e682e86fcfbf3a0a3e6cf7bc009d54f8a88db924bb6e29b30e688e939 in / 
# Mon, 10 Aug 2026 17:38:47 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:11:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:12:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:deafe6b5876d5dead55957182e61b6fb35f90aab5d6265e0945beaff36062d3a`  
		Last Modified: Mon, 10 Aug 2026 20:08:55 GMT  
		Size: 26.8 MB (26848898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0862ecbc3ff408ab5469a6851f5f0baac5523e45cc68029609e01af99074bb48`  
		Last Modified: Tue, 18 Aug 2026 01:10:07 GMT  
		Size: 7.0 MB (6963821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d449e925c268eb25fc19223d637d3371a7e6107a5b0ef7fbea9548014ceac903`  
		Last Modified: Tue, 18 Aug 2026 02:12:08 GMT  
		Size: 42.3 MB (42273334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec3cd15731352fda18af988aebe69efe26ec1239dbbee4efc8af57a9b4d679f`  
		Last Modified: Tue, 18 Aug 2026 03:12:57 GMT  
		Size: 140.7 MB (140657981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0b3779a72c03a5bb71fe937d5dd71db5dfb9164bba2036315a44e464881671cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11623643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1ff7466ef80460989c585b0eabbbca2c41e3ef9a8497bfacae9eb7420fdddd`

```dockerfile
```

-	Layers:
	-	`sha256:cc3701ecf93118d1ee506dde3f8487db34b79e10e64d1fc4137e9f17c8cf6781`  
		Last Modified: Tue, 18 Aug 2026 03:12:54 GMT  
		Size: 11.6 MB (11613419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51b2eacc80c6f47a7e11b9ce38a512c0ad8a0d737d4a409be7c5255e08b00268`  
		Last Modified: Tue, 18 Aug 2026 03:12:54 GMT  
		Size: 10.2 KB (10224 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2afb86780769310b49f447d6e27ecb11d49db05116fae565602b5d252fafd9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240847241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f169bbebaf6854397f3e324b341ba2e634b1213c3a511691bd110824a4b5cc4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:12:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:11:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8d50e8039b39564911842f938e784b3771e43ea8ec3c800e28e3a1a50113da`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 7.0 MB (7017944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db3ad36703b39d791401849ce57067c3dcc44bccef5c67e53828aea158dd5c6`  
		Last Modified: Tue, 18 Aug 2026 02:12:21 GMT  
		Size: 39.4 MB (39424030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1fc41ae20e9e081997efbd9c00f41f2d8720e5800a59fb15c848c3444696b`  
		Last Modified: Tue, 18 Aug 2026 03:12:20 GMT  
		Size: 166.8 MB (166784814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:db094be4534bccc4ad27a04c8be97546fdb5b35afe6f09e55ef05c64317fe6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11830117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5aac807167210932af24144b42dee0b2c4e5fa7676a645ff70964ee9a33b1f`

```dockerfile
```

-	Layers:
	-	`sha256:ece982f9129adf4556c8db66e7c85d676cd3d989f87bc378d26cd8158d28d0a2`  
		Last Modified: Tue, 18 Aug 2026 03:12:17 GMT  
		Size: 11.8 MB (11819877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c32c9e3a207abc14dd25c249efe0506c3bea1bf7644aeaa90c3c4d0f8d005d7a`  
		Last Modified: Tue, 18 Aug 2026 03:12:16 GMT  
		Size: 10.2 KB (10240 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:adac146321fd4b24ba68959847a440963fdef928c0ff91b53e595b312fd98d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270184320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b35ffc34d12a08d3c27972e912d2e7557ec53b03f754b6484aa8a5e247c705`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:11:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:09:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:22:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5da1b5040759355cfe44e68f01e0d10353d1647c19317a5c6ac44038afa3c9`  
		Last Modified: Tue, 04 Aug 2026 01:11:46 GMT  
		Size: 8.1 MB (8142353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30b67d33d744325e56106227bed0ab5a7b75e5e9cef59bc890a469ec6b103f4`  
		Last Modified: Tue, 04 Aug 2026 03:09:43 GMT  
		Size: 43.8 MB (43786570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede7e78f99f070d920d440f21417ab8123952a94804e22960705bcabd9d9fe23`  
		Last Modified: Tue, 04 Aug 2026 06:23:08 GMT  
		Size: 183.6 MB (183617731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:df7090be543ae3997a16124038faffc0cd2c86d9be87a5d44ddbcb85cba15656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11793766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05705013cfab65ed04a92085db78cd87906d7c909ca8b814fc9c2b90622ac116`

```dockerfile
```

-	Layers:
	-	`sha256:0b5f9ae0e5d73d1141035fb4af71db1c28c86c4bca64ebf3864ec59bcc70c0db`  
		Last Modified: Tue, 04 Aug 2026 06:23:04 GMT  
		Size: 11.8 MB (11783575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07541ca055bd9072dc73060da300c62026c0436f751687b9b8c8e7afd92f3bb`  
		Last Modified: Tue, 04 Aug 2026 06:23:04 GMT  
		Size: 10.2 KB (10191 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:b9c3d788196eea1b3c1c2be4dbad42e8d381c1d1080559289f8e9b4a9a033650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274754762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae3e20a59f64e3aaa5d8aa161dcbfbf10325011185f515018ddd3f23a22c0b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 19:54:20 GMT
ARG RELEASE
# Mon, 10 Aug 2026 19:54:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 19:54:21 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 19:55:00 GMT
ADD file:9b3f9acf4466fa72e5b61ecd4fae12b84222f62cdab5f130404f9dc7658495a4 in / 
# Mon, 10 Aug 2026 19:55:04 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:12:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 03:14:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:618bdfc924e8df1bbf6a83c552e2fb17f7ffbd74ccd6473974f3a00c7210ff8a`  
		Last Modified: Mon, 10 Aug 2026 20:09:09 GMT  
		Size: 27.2 MB (27244670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dbc6b9692cf6ce3e641ee3ca8e9018a346b975636e799ec846664a79629dd5`  
		Last Modified: Tue, 18 Aug 2026 01:11:16 GMT  
		Size: 7.1 MB (7073169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eebf3953793b0ba9e2855354824d7e8adc416c770c3d49263e4d296b131c7ff`  
		Last Modified: Tue, 18 Aug 2026 02:15:14 GMT  
		Size: 42.3 MB (42327108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fae6813f824097ba9e1db74c987b9a3083a1d52df8b037601f29ed70fecb2b`  
		Last Modified: Tue, 18 Aug 2026 03:24:15 GMT  
		Size: 198.1 MB (198109815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:14af6383949f10b65371ee3dfb959a961ae4e5696d47f8b67c0c1de2749514c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11776122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c27ba75c8b9a0b54f378a3973dfb714f37c694abbfa5d215ba209022e22c29`

```dockerfile
```

-	Layers:
	-	`sha256:30f080bd7da638a9ef091ac580d7380864d37231f4d2de23ff079aa0a7b9410d`  
		Last Modified: Tue, 18 Aug 2026 03:23:47 GMT  
		Size: 11.8 MB (11765931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b3c79a2ee0097b0fdfa126393a7afc64c98299d3524657f5ca51b09755ef66`  
		Last Modified: Tue, 18 Aug 2026 03:23:43 GMT  
		Size: 10.2 KB (10191 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:64643bcb2e28046932fc7ca3dd246dc9653ec45511926d030470f296daa965ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223472866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27250546518ddec627e402d82e81ee19f501c6c4eec4ea2aad8fe03bb0b972aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:07:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:09:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:12:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5e1d4fc4d05b2b731bd30501593986ca8bed1115300d026890bedad4a714a0`  
		Last Modified: Tue, 18 Aug 2026 00:07:43 GMT  
		Size: 7.0 MB (6974512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d2c4ab93052b27679d9605bd40dfa5336afff3eab7f596ff4280fa713adffd`  
		Last Modified: Tue, 18 Aug 2026 01:09:46 GMT  
		Size: 39.4 MB (39437751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372993457b9f1c5e98eee916652feb5857111430c77bb17548d6624750ec7280`  
		Last Modified: Tue, 18 Aug 2026 02:12:42 GMT  
		Size: 148.8 MB (148849700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:65db56ddb0a9ef7eac06e63a7fe5eebffc69b879527a599cec2e97ac4228cee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11648246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d89948affbfc84f88456eb3b55b15eb41d48bf00415110ea349f92d687e8350`

```dockerfile
```

-	Layers:
	-	`sha256:e995685c7401cfc7811233c0f78a6ded36d87e844c3dac631251277f494cdf18`  
		Last Modified: Tue, 18 Aug 2026 02:12:39 GMT  
		Size: 11.6 MB (11638087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cafbc20b7eeccf42ba7403b3ebf9a3fac6f6b35fff6f95cac88a9873ff83dca`  
		Last Modified: Tue, 18 Aug 2026 02:12:39 GMT  
		Size: 10.2 KB (10159 bytes)  
		MIME: application/vnd.in-toto+json
