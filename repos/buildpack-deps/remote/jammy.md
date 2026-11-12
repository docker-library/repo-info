## `buildpack-deps:jammy`

```console
$ docker pull buildpack-deps@sha256:3dbfcff54e02773819d50726a21517583fa71c115282d26aad87f9cd22333ae1
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
$ docker pull buildpack-deps@sha256:772a4d3210ef96e658ca2dd2511461ac8bc623aa5331111249c75a883d8f0e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249908547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202278010bafd8104b9c556e1899f505e73d2903c595d4b77a56b1a07abd5710`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:08:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9edce514dd70a2d9de1ccd1bac80bb9ed3ffa0ae7360e7651e45586e3009bb`  
		Last Modified: Wed, 11 Nov 2026 23:08:20 GMT  
		Size: 7.1 MB (7066843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcd241827e513aa15cb9dec8591a3e2262c6662b0baeb27aa19d7d2f73ea02e`  
		Last Modified: Thu, 12 Nov 2026 00:16:46 GMT  
		Size: 39.5 MB (39509424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af4c05cc5a030aa289b3bfd1ce1e01e3419737c602ea4b1d78f27d7fea50334`  
		Last Modified: Thu, 12 Nov 2026 01:09:31 GMT  
		Size: 173.3 MB (173262747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5179b30b96123f24275f408862f41b8f0ff7caea7bcda6d0d3ce5dcdde5a7b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11834496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80188d1c7e6c647f81cb6e1596b557b02813d037764d01cb5151145aeadde8b`

```dockerfile
```

-	Layers:
	-	`sha256:dd4a437e611eb635706bc13c57aeb162be8db95a1f22f19da09c195d4d45a57a`  
		Last Modified: Thu, 12 Nov 2026 01:09:28 GMT  
		Size: 11.8 MB (11824336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f5d57f7a1968cde1e81f3dcbb08174713c6d53aabc6cc1c93e808ce9a6da3c3`  
		Last Modified: Thu, 12 Nov 2026 01:09:27 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e9b159d8dbbd108d485b461fb5d3f38a6849b8fccb67f5c60fa43ec15895669e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217128638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6fafae1c6d2e8e4f8aa91db7ce79a18ff4c1d8e64159e6a3ae4b718273315a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:40 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:40 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:43 GMT
ADD file:b306f2c1ba859a05e286fcacfd7b1be4f12761835bf7f4a05b98b11e31f87a49 in / 
# Tue, 10 Nov 2026 08:11:44 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:16:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:08:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3a0654f56483a49bba3f6f7738a3349f2bb29557b4b527a9f8ce2106f1da3f66`  
		Last Modified: Tue, 10 Nov 2026 08:55:01 GMT  
		Size: 27.2 MB (27171273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09ddff54e254328b27900a9f7c0ddb5f3a64a0657beea1b8305749603ead110`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 7.0 MB (6967903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9837207093643f09e453b3b0f5e9b1248495acda40e15c7f142fe828432be896`  
		Last Modified: Thu, 12 Nov 2026 00:16:14 GMT  
		Size: 42.3 MB (42282376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021ad796aab783a5a4e6d47658e71c8142b46a05546ad7179a7c2f61258795a1`  
		Last Modified: Thu, 12 Nov 2026 01:09:01 GMT  
		Size: 140.7 MB (140707086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:877f886d57e41c7e7facf68c006f24cec53863f753123bc12cb7f5078b0dd587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11623768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2f30b5a2be4d6873eaff9ddebd02061c688d2e1a81754206089f4434828b8c`

```dockerfile
```

-	Layers:
	-	`sha256:7fd9b550e81130a1b2afc27ed942715093843657c68ade176358f13b3143d6ed`  
		Last Modified: Thu, 12 Nov 2026 01:08:58 GMT  
		Size: 11.6 MB (11613545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb08c977b50bae91bf35e429c6f3671f12cf148b5074cc3dbaf728530370c8c7`  
		Last Modified: Thu, 12 Nov 2026 01:08:58 GMT  
		Size: 10.2 KB (10223 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1e5c54abae26d123d9ee566c9edf2e0b046bedc104a4c8ec360b73c3f095ff6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241394699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc75d90df157c6561146756c201e8505e76a04bf9bc88f5bb5841589ce00d2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:30:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:14:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c042b2a99c1c6c9547f81996147224b49c69bc7da0cbb6948db3cab514e19a`  
		Last Modified: Wed, 11 Nov 2026 23:13:27 GMT  
		Size: 7.0 MB (7021923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc73e853cc6dcc6091abd1c1807624f491d617277cc3348ca5b682f8f40129ae`  
		Last Modified: Thu, 12 Nov 2026 00:30:51 GMT  
		Size: 39.4 MB (39439212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd7e6169d0f2b151ff1dc5f9efd05e126e0fb1fac49e53a3e7b966be0934341`  
		Last Modified: Thu, 12 Nov 2026 01:15:03 GMT  
		Size: 166.9 MB (166932152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4c847ae281aa7c05c8448b3e439c2a66579c25eaaa5381787812a9e7c014e962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11830242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393faa2ff21e134efeb0a8dcb1feea5788978ba1b9315bc185abfe5b0cf8794e`

```dockerfile
```

-	Layers:
	-	`sha256:0adfe6bb146aefea2221ec7fdda3ba7e2340088617454b68082c15e58489509b`  
		Last Modified: Thu, 12 Nov 2026 01:14:59 GMT  
		Size: 11.8 MB (11820003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cb4d6fc52198e1d8311519af0fef6a38d9d8a09b2a6ddc1c25b055507f9099a`  
		Last Modified: Thu, 12 Nov 2026 01:14:59 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:7ddcab14cfeb80a43f4443c9395ba62f9d5add4d5a54f5f736f4044b7b99038f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270725718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b56a19327b4265f66bbf5b3f772ef2fa3479f22d81a09e7c6608d58ab58292`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:38:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:13:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 09:01:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510c4bb785ec281eed950db5f7389f54329b7d40fbf914b8a9643283f9808f77`  
		Last Modified: Thu, 12 Nov 2026 01:38:24 GMT  
		Size: 8.1 MB (8147884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efe9d9db2404f19820ec96c74ac4d7e1a4afc3a91410c3eb955b711588b0479`  
		Last Modified: Thu, 12 Nov 2026 05:14:18 GMT  
		Size: 43.8 MB (43803152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d512838b0f6462b84129b09d77992ff454bbed95bb37cd11e655e709318a95a1`  
		Last Modified: Thu, 12 Nov 2026 09:02:51 GMT  
		Size: 183.8 MB (183756582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8a7092120a85e8d41f869abcae1012603e4185e0ffc098106bc157b056dec110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11793892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f41530ea80a0ff4f40dd11e0a05a2da3755286eacadaea1ff9c98118f2b5992`

```dockerfile
```

-	Layers:
	-	`sha256:35403232ebdc66cdcd082f5feb1adc2b7caa8cfa123967e95b12f77446ff0189`  
		Last Modified: Thu, 12 Nov 2026 09:02:47 GMT  
		Size: 11.8 MB (11783701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f99ba8f696014da3b854af18d17aeee123b2edae584685b4e061b9835886ddfc`  
		Last Modified: Thu, 12 Nov 2026 09:02:46 GMT  
		Size: 10.2 KB (10191 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:bcc2ab96e4eba85590a922783862b5ea5b1edcd7a2b66f56c54fa907a2431bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275232151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e6b514625724797e5047add66a294f9f963863e34e37ed76528332e847c7d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:34:18 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:34:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:34:19 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:35:09 GMT
ADD file:8651b8ff4a9f67cc0067cfadf109dcb8ca1c2ce3fed8faf71a00170322b77a06 in / 
# Sun, 25 Oct 2026 20:35:14 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 07:49:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 17:02:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a229cfd41698e8e5bc17d02c1709e23f01556580ef0025be93d016481abaa36c`  
		Last Modified: Sun, 25 Oct 2026 20:45:48 GMT  
		Size: 27.3 MB (27301907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80841b4da146d2ff0bb2b0a80bcdd381b3eb28f866a0769f6405f604a34fa72f`  
		Last Modified: Sun, 01 Nov 2026 11:26:25 GMT  
		Size: 7.1 MB (7075773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35533f4444aaa2ca01e449c02f0981dfc41164dbf0d958d97d504a1da83ab0fe`  
		Last Modified: Tue, 03 Nov 2026 07:52:27 GMT  
		Size: 42.3 MB (42331972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4260ae0e4b7d21d54ff651c801862978593c5a4af0b1f748a2872bf4b5f036b`  
		Last Modified: Wed, 04 Nov 2026 17:12:39 GMT  
		Size: 198.5 MB (198522499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3cd882eaac3a668127d8b0d6ba363c80aebcdfd539ceed76dc7a1a13711f1729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11775637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5e93a26dc66bad40ea3c395baa913a4767c0f06fb86951b8d1d1ef941e7d64`

```dockerfile
```

-	Layers:
	-	`sha256:95f71c40845830e8fcb75d33192ac697248b955b88f81e90e21ea52565532089`  
		Last Modified: Wed, 04 Nov 2026 17:12:12 GMT  
		Size: 11.8 MB (11765445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee572d03aa142106cbbe6fc021ff2d3ca05784944cd74fbfd2afe1bb7cd956f6`  
		Last Modified: Wed, 04 Nov 2026 17:12:08 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:293b31b24174ce6c1bfa5eab52befe24d6fe06f22e7c69e50ca5cd0045743b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223895455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703f5d979cacc80742e7f9c7b41280b6ae4559bb946369d4309b05908903d3e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:25 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:25 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:25 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:27 GMT
ADD file:2eb742111a0ed752506db948cef18dd825d45b92c3bb8ae228a88ed48e1b7c11 in / 
# Tue, 10 Nov 2026 08:09:27 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:15:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:49:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b870b9ada61aa0c95f553203c23615d7bc40be8d475801fbbae1494ea946138f`  
		Last Modified: Wed, 11 Nov 2026 23:12:09 GMT  
		Size: 7.0 MB (6977601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2a11ebad5fb084bb51d1eed02708a897bec8ebe9b38f909649e84ba738b027`  
		Last Modified: Thu, 12 Nov 2026 00:16:06 GMT  
		Size: 39.4 MB (39442733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79dd1e3a553ae4de74ace44e0a75afd2d3975abebdd409a6e26ab379ce0237b8`  
		Last Modified: Thu, 12 Nov 2026 01:51:04 GMT  
		Size: 148.9 MB (148936902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:19f338b1f45257240333f04a1de748fe1be16ea3df11fca6f2edab4c3a2a4059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11648373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:459035ca461f241c20038796192f1cb641cac55e0f8faee3ab8a433229820a03`

```dockerfile
```

-	Layers:
	-	`sha256:f69d872871208c8e4ca735b745769099e036f97fd49aa126cd827f051149a97a`  
		Last Modified: Thu, 12 Nov 2026 01:51:01 GMT  
		Size: 11.6 MB (11638213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787df724ebe1432fbf1d52dd214de0c8dfb47b59d9375e1ab76856b20143c9c7`  
		Last Modified: Thu, 12 Nov 2026 01:50:59 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json
