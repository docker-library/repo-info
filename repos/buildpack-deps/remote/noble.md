## `buildpack-deps:noble`

```console
$ docker pull buildpack-deps@sha256:13618b81dd69974a4f3ba7f413c3448f9f367dba2592c005d03fe34ec04bf3d1
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
$ docker pull buildpack-deps@sha256:f0b8901ade1e5b1ba6b23593cbc235ebf9b98393fc7a6448a29c1f863939c5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276719385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdd82038980374eb73ffc6625f41546b4c989cf67d224e58d65525c0e23923d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 03:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fd2ace4681a88b41d1f5fa2627b664c7046f4cf550458a893ebec806a22601`  
		Last Modified: Fri, 02 Oct 2026 01:12:07 GMT  
		Size: 16.0 MB (15994624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c102ccf6ed98219ee663f53642db98e0afd3cab915fed55c1dc4b3a6e2d9a74`  
		Last Modified: Fri, 02 Oct 2026 02:16:35 GMT  
		Size: 45.4 MB (45369030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7848e0080c8dfeaf645f67a57ba144b9ef69b4f355101999b1837cc921284646`  
		Last Modified: Fri, 02 Oct 2026 03:18:32 GMT  
		Size: 185.6 MB (185591309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:301eef8776cbb6fd92bd792a599a08983fc8380de190d51b70a0d63d89851d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.7 MB (11716636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e521d0c9163236b556a4308e2a27a307d0fd3c82dc2a357622ead8b66db1aa1`

```dockerfile
```

-	Layers:
	-	`sha256:810373ff73427d1f0d2a5b0833d9daf2c2a63cda3716cb2f3d7c40b9dec4f1df`  
		Last Modified: Fri, 02 Oct 2026 03:18:28 GMT  
		Size: 11.7 MB (11706495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13fc0da53891c31dd18c0258bfd2eec51f41665c2a7b52bcb8a0a8722538ba58`  
		Last Modified: Fri, 02 Oct 2026 03:18:28 GMT  
		Size: 10.1 KB (10141 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:36aea28677e2e4d6cc3477283c30804e879c0107af3731469cfff157b9555846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (237982071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1f5f6e43d753159310b3aefcdfdbfcbba7c907a2282baf30d4b2ec9fe18b4a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:04 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:04 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:07 GMT
ADD file:6a6fc23d8622292f593d77713efad1a8007c6c40500c31d016c65acd4c58e812 in / 
# Fri, 18 Sep 2026 21:23:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:15:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 03:17:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:07637771fb245c4f2be7dab6c9c8a012b4b667b827aa566885f001a405a147d5`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 26.9 MB (26895617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbde56f4bb0e3e1a903354b66069a0c383d8bb404381792f73f9b5099850d13`  
		Last Modified: Fri, 02 Oct 2026 01:11:35 GMT  
		Size: 14.5 MB (14535066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5659dc0ae1e2e0cda5057ba67cfea6c8777fc297738a21d30553eb9412504f6`  
		Last Modified: Fri, 02 Oct 2026 02:16:13 GMT  
		Size: 48.9 MB (48908910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e23dc06da9c1fd10c442e05452d8e876dbafdc9c65eb4ce446bfd342cb8ca61`  
		Last Modified: Fri, 02 Oct 2026 03:17:56 GMT  
		Size: 147.6 MB (147642478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4831a2be010e39469c69fc15c6d6fc1472c0852eabb50426f6cb4657d2dc4928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1644f74dc66dfe246cda36aee23079548828f595dc0c8427afc14570180914a`

```dockerfile
```

-	Layers:
	-	`sha256:b076327ffe818b8451b3a6b456b1481ba725529da45476160bab2a8a8cb45332`  
		Last Modified: Fri, 02 Oct 2026 03:17:53 GMT  
		Size: 11.0 MB (11032132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa5ebb3a1044272ad5d9d62c8fbd88b5394ae8cfccff4317890e01cf18545e43`  
		Last Modified: Fri, 02 Oct 2026 03:17:53 GMT  
		Size: 10.2 KB (10204 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9449bf7e77fb32a0f29c42ff8e1c1adb15b2eb6c7726bec1c45c0f01c0a80c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266177503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bd6d0d0c84f879cd497b032ecbdb4a4ec195b0654e9e8665d6e262062a10e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 03:17:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1418c2a6a74fe5b837007ac399ab7e95af8dc1234737b9620f318a77dce99dae`  
		Last Modified: Fri, 02 Oct 2026 01:11:54 GMT  
		Size: 15.7 MB (15694771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9ca2c5472c882be10ff0957cf103ecf9f8b873d58826afd4fbbc8c94b7723f`  
		Last Modified: Fri, 02 Oct 2026 02:16:21 GMT  
		Size: 45.3 MB (45316142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7b489def0f7e087d6f481dc6d5678b846f75bdbc4be5b20fc7d6bdb8ec0093`  
		Last Modified: Fri, 02 Oct 2026 03:18:13 GMT  
		Size: 176.2 MB (176226503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ccde6cfcf4737fea3b6abe4759c44cbd6643508b846773c31e1a1535d818b716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11266143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3ac8e1b04754367e16f5f0e7f5506eec5e16ff2b7fbe8bd61dfdba41a59127`

```dockerfile
```

-	Layers:
	-	`sha256:d94761647ed582ffb3d4d42a39d63ba7251016e93635433799470132408c32b7`  
		Last Modified: Fri, 02 Oct 2026 03:18:09 GMT  
		Size: 11.3 MB (11255922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad75f6872b0607bd70b9944f78540c6b21566975ac0668483bd83cb8f1bc865d`  
		Last Modified: Fri, 02 Oct 2026 03:18:09 GMT  
		Size: 10.2 KB (10221 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:304c4269bbee6c398b62cfa67e6093dd6dee1a6c761fa44e80f226dbac1e1361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289613331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33a8d82c3e6502cd92bc109a1cbf505799b3db92e0ef13b4f035de75fb600c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 06:44:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 16 Sep 2026 08:35:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 16 Sep 2026 11:22:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb38d31ef3f1ef764251762eab36e1e4339f9b85ee3d6ecc79887237a849131c`  
		Last Modified: Wed, 16 Sep 2026 06:44:48 GMT  
		Size: 15.9 MB (15914795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72e80ce47ea96c54b0b69cd13738614b54bb836e8dda46ba081285fa5a10702`  
		Last Modified: Wed, 16 Sep 2026 08:36:17 GMT  
		Size: 50.4 MB (50389337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5569bd1184292e443c76e073b8cba2415cc72ba297948157e443130ffd6dfd`  
		Last Modified: Wed, 16 Sep 2026 11:24:02 GMT  
		Size: 188.9 MB (188932241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f89964e12d913ca8e12cd2f4651ab64809a049094a4923eab668c02dad981e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11213514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0c05d1e7d16d152f63da8b2e6c132a27c27b64205e098c96399a131e64ca9e`

```dockerfile
```

-	Layers:
	-	`sha256:23a4c25d3825b8acd21efb99123fb883f62c719b2136bb9c6d81858d02a062fa`  
		Last Modified: Wed, 16 Sep 2026 11:23:58 GMT  
		Size: 11.2 MB (11203341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1e2ffb609e5626e191de7ebff080d9793f38247ea7d7421d2158f11a15c2bfb`  
		Last Modified: Wed, 16 Sep 2026 11:23:57 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:eebbc87b8aa3443f3bb42ee0b8b2cd2952435f38b1375b9223c08bf5b88bd6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.6 MB (333630538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf86442a39bd82199f19ece9e602a19489aeaec93838055ac24bdec99d1f0f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 18:30:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 21 Sep 2026 10:04:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 23:48:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067285e08e7e2cc209363743e94cf2c4e32e562696770fe1d39819327636a8ae`  
		Last Modified: Fri, 18 Sep 2026 18:31:49 GMT  
		Size: 14.3 MB (14300700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44ceb0c29087d74b563ce50dc80ac873aea9857dede067413e87992c419bfd1`  
		Last Modified: Mon, 21 Sep 2026 10:07:16 GMT  
		Size: 56.3 MB (56266366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a14caa57e37c52744fae319d281a1aadcdac6e31cc23cbfdd0e6a7ced657f9`  
		Last Modified: Thu, 24 Sep 2026 23:59:59 GMT  
		Size: 232.0 MB (232010870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fed771023a743d3ca582cb82198789b82173f69f3af9895ebf1560f5f877f494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2bd8642a9e7b3f2d70a48644b1f109ed359904c4198b10390eb524c6249fbbc`

```dockerfile
```

-	Layers:
	-	`sha256:cd59d23776728cdcf6d486bdb887809eae79f219f022cb703f78c4aa938017a6`  
		Last Modified: Thu, 24 Sep 2026 23:59:26 GMT  
		Size: 11.2 MB (11196578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a1c9b12cbf16a04643a7f169428f22de255f732fc1c25b318bdde5fd05f596e`  
		Last Modified: Thu, 24 Sep 2026 23:59:23 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:080723332dba08c5d2fa0be55fb8d161e4bf6067c03a3cc2d3e8ac51b3244949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254621355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1b2acd8f4f610a9adcaac7bbefe7d94d87989cf31aae80c069c0436e703a0d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 02:20:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 03:43:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cd4e7372c422f6dd092c87d7b8d982498eb40b4deddf969419e88c7590a03d`  
		Last Modified: Fri, 02 Oct 2026 01:13:43 GMT  
		Size: 17.0 MB (16994197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfe645d729015d5a45508a9642a0768ba304feec77208654d9ce04123fbf183`  
		Last Modified: Fri, 02 Oct 2026 02:20:43 GMT  
		Size: 46.8 MB (46806268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2743bf89024d3f95899c2bb55dccdf7efd7772148e81f3ee9a1092aeccfc3907`  
		Last Modified: Fri, 02 Oct 2026 03:43:48 GMT  
		Size: 160.9 MB (160875570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:27b94939803defbd91b0d1cc3f51a2b7f53a1740223a4492ee29436f2750061d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11057337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0e5cba4a1e90d515e47aa32e22a987f4d26bec98d523eb13d3b0678d77190a`

```dockerfile
```

-	Layers:
	-	`sha256:99f894da8496ad058abaabf9cc39fe3144ccf38c7c6a135ef687077f4e5ac0b0`  
		Last Modified: Fri, 02 Oct 2026 03:43:46 GMT  
		Size: 11.0 MB (11047196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad8f8942e2d8a4878d7ac605ed5177adcc0eb78790c6d705cc404ff4a34e9674`  
		Last Modified: Fri, 02 Oct 2026 03:43:45 GMT  
		Size: 10.1 KB (10141 bytes)  
		MIME: application/vnd.in-toto+json
