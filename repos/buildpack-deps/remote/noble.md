## `buildpack-deps:noble`

```console
$ docker pull buildpack-deps@sha256:e93e9fafe026efb1c7788c98f48b04a170d81f7adfd8ca81ff76b44624e71328
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
$ docker pull buildpack-deps@sha256:19195794b54a9097b2d6e4e1ac48d58177d83f3adfe9da45fbbba01406980fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292464060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff665d7dc9888946ca17e71a063e344c539f597f05d259f331e77a4743fcbbc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:27:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 06:04:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 08:49:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637110a38faa6c6a3c0a42a8be6ad5340bd3762f01bf040107e23c84e720ba51`  
		Last Modified: Fri, 02 Oct 2026 03:28:10 GMT  
		Size: 18.6 MB (18603593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2404a0fc4dcbc8cf89ae96fd049c3716d3aba3e2c6c207b8822414166ffb732d`  
		Last Modified: Fri, 02 Oct 2026 06:04:44 GMT  
		Size: 50.5 MB (50455025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2321f960b4f24830b79843340c46d6de076b7f88192c216025332809e922ec`  
		Last Modified: Fri, 02 Oct 2026 08:50:31 GMT  
		Size: 189.0 MB (189028933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:acbb109b650f1c74edc3eafdc0968ce274c7aa6bbce5b5a361f9a7ee443f52b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11213514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b68dced1395fa1597a9ad5effbeef65b3927a6595cddded9a147928da5674d`

```dockerfile
```

-	Layers:
	-	`sha256:712847d56cdbd1615896dd3916edecafb3947112e099afdf3a6e3d71cffc0b93`  
		Last Modified: Fri, 02 Oct 2026 08:50:28 GMT  
		Size: 11.2 MB (11203341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:282a8bf71b2b47f14c86ce5836d3b34786eb4f3ef47e519923be85cc75b98dc9`  
		Last Modified: Fri, 02 Oct 2026 08:50:27 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:d5f026d83120705672a73c371fa884445bd2622e4181efdfb0c200eedc9f01db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.2 MB (332211656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc59004463b2926f318b7e26a920cea1786c7dbe1705663253550828bec0e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 22:20:53 GMT
ARG RELEASE
# Fri, 18 Sep 2026 22:20:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 22:20:54 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 22:21:41 GMT
ADD file:3a1916ce71708268db17b5ce7c5482fc86a6dce4c032062460878125231681f1 in / 
# Fri, 18 Sep 2026 22:21:45 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:41:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 03:45:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 16:16:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f744af9afcd9f5fe3c98a1581df8785f8f3920cb60a4a7ba86497465ccf35413`  
		Last Modified: Fri, 18 Sep 2026 22:30:18 GMT  
		Size: 31.0 MB (31049980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb35850526da01bc65f0adc2581a6148eb028798013159608be0e37deca406e2`  
		Last Modified: Sun, 04 Oct 2026 20:42:52 GMT  
		Size: 16.5 MB (16461874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c699a4c372e48a779b5165a2a4e053625ba3845d63b748dfe435490a75baa32`  
		Last Modified: Mon, 05 Oct 2026 03:48:23 GMT  
		Size: 53.8 MB (53823579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a221ace9c67ed555175aa72e7ec1e7783ff706e00e2f34cdbf34120bcd897c6f`  
		Last Modified: Mon, 05 Oct 2026 16:27:36 GMT  
		Size: 230.9 MB (230876223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:489cd1145dc9bba9617d3ade42ff26f699410fcaf0f5cd9bd61bf31dd3965bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1333f950a0cc221f3fc77b5b9d6e210bfe163357ea3335372cba9606961c63e`

```dockerfile
```

-	Layers:
	-	`sha256:3d0be3baf216b2f00a0c28ab1f42e37f5f46ae039527556f0f7bdba6e5addf84`  
		Last Modified: Mon, 05 Oct 2026 16:27:04 GMT  
		Size: 11.2 MB (11196578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5fc3a1daca63734120642ad83508cd86e44292937628b5c21f2d100ff39ef50`  
		Last Modified: Mon, 05 Oct 2026 16:27:01 GMT  
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
