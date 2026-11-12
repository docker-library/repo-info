## `buildpack-deps:noble`

```console
$ docker pull buildpack-deps@sha256:f7534f0cf3bbb73fec7ed73364d5d125b01ba0d0574a587d745e7dd068d1f66f
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
$ docker pull buildpack-deps@sha256:e5fca6ba26876dbdd8a2d58e859c1ac197f672f9a376fb5a82a8244a0bdc45c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273689653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053cf063687096ff45dbe8e4b27f4c7b6b205e3fb5c57921736bf3301ce63223`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:17:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 01:08:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18de6fffc95da6fd8b525e32806e2a2dcb7fd062bcceb096d938c5808715cc0`  
		Last Modified: Wed, 11 Nov 2026 23:08:28 GMT  
		Size: 13.6 MB (13588593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8ca1731c21b4b6d98abadc6c0748a0605651f903a3c78c3c7d1c52f4f8763e`  
		Last Modified: Thu, 12 Nov 2026 00:17:19 GMT  
		Size: 47.8 MB (47810549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb19ea71d62583d16abd793d0c179d506b6bc8a6e66f3a0de004f1e6aa2661f9`  
		Last Modified: Thu, 12 Nov 2026 01:09:29 GMT  
		Size: 182.5 MB (182497288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e2dde4347f0a0227bd868a83f14f4c323e12ab645fa7a686cc4dc94e7242329e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11243667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2f81374172c86249b5543e0ac6a9f465377eed079165fb31bedd182ebfd838`

```dockerfile
```

-	Layers:
	-	`sha256:1255670c43e0d91ba6635327fe7886aa2af3b69d1cd854f81e28c3667f46be04`  
		Last Modified: Thu, 12 Nov 2026 01:09:26 GMT  
		Size: 11.2 MB (11233526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3076737ec9c4dd6ede550a5cf75ad3af6a8edbdf4bf8c82f2326bbc6977362`  
		Last Modified: Thu, 12 Nov 2026 01:09:25 GMT  
		Size: 10.1 KB (10141 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:0de469edfb0c3c5f7323235430fa59a00dda5d8576a24ae5760a810e5e966486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.4 MB (236377366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8273e92bc53e6017f3ebccbc3cf69b6588c202f8c49a757f09de05ca43bab277`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 01:08:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1838b6e701e1670302624658ff490ee122535756df83b8f1ed73243592e2ff8b`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 12.7 MB (12743373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab204a10604f561968f955d2a07366f2208ac85ff58a6565faea6cf58a64e06`  
		Last Modified: Thu, 12 Nov 2026 00:17:10 GMT  
		Size: 48.9 MB (48944170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c6d01f286d55bba5e2df49fb261b637144808b12a53a7e05aec7bc5b9a0d08`  
		Last Modified: Thu, 12 Nov 2026 01:08:58 GMT  
		Size: 147.8 MB (147767815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:db6ec5dbf0fbb5a5ddb6514d24f32bff42406fef8da53de4a1533635de15ca3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11042397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbdd7891b6a65fc7cf5961c8ce930edec243c5927350371871db20519108efd`

```dockerfile
```

-	Layers:
	-	`sha256:5dd9c74539b72e6a7aaaa13b0a3818acbb04e3d83513874be12f51b9a2f9e501`  
		Last Modified: Thu, 12 Nov 2026 01:08:54 GMT  
		Size: 11.0 MB (11032192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5a60e59a03339581789f2e9727e4753c18a02d18e2383fb5cdf0568f89dce02`  
		Last Modified: Thu, 12 Nov 2026 01:08:53 GMT  
		Size: 10.2 KB (10205 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a4dd8f2d5a6332a1b54f5b03e898584ad78c37ad1edac1daac3024c6cf7061c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264139898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063996f35602d9b77333d6e265b2b0091d8f58bc6dacae1889292b089a556e73`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:31:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 01:14:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7463fb1902b7bb65f107d1b20b2f4109b39089b658c7a32c814ae9fb54cd6436`  
		Last Modified: Wed, 11 Nov 2026 23:13:39 GMT  
		Size: 13.4 MB (13431609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12854bcd170a41b628c1ee6f26b967938ef842ff82c9b7709c45be8cde17a8dd`  
		Last Modified: Thu, 12 Nov 2026 00:32:10 GMT  
		Size: 45.4 MB (45357075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84408d6f65fc58fcd949883ffec7961fedc418d01a5f6176e1ed614fd5c9d2c6`  
		Last Modified: Thu, 12 Nov 2026 01:14:57 GMT  
		Size: 176.4 MB (176385956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:867dd0907a278879e9fb6517f10161e38cb92baf593d4c1ab4aaf317ccbaf415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11266203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd3c3d6af62ed61807a95a6694859020d60b9d702d50196a73c4f743f602426`

```dockerfile
```

-	Layers:
	-	`sha256:dffe5ccf4d971f5e9dbd8380e9e1b54ec25eabbec24092de984f9e3ed99e7bd1`  
		Last Modified: Thu, 12 Nov 2026 01:14:54 GMT  
		Size: 11.3 MB (11255982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdcea2d50fa88c9ca26b4d030657a0d7ad6ea8a518a5fecedc64ae2eb252dc94`  
		Last Modified: Thu, 12 Nov 2026 01:14:53 GMT  
		Size: 10.2 KB (10221 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:285efe0037a6aea69c6666c10a44cdb69a03c59b323e7e322238a83de9dbba25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.7 MB (289732330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e402810acb1a67088c1b8619fa26870e4851a6837652c790895e91944cd59bd0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:04:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 07:55:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 20:03:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8ece447e88c808817e2b3c4d84665fc292fd9a568c9564f16876225020abc5`  
		Last Modified: Tue, 27 Oct 2026 05:04:50 GMT  
		Size: 15.9 MB (15914044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e098e3180df25c49593cbb9d46b207c94c4cc2b63ced4fbf7608b07d783d806`  
		Last Modified: Tue, 27 Oct 2026 07:56:20 GMT  
		Size: 50.4 MB (50390863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb48707a84f211e721c61b8c2c856285fee9bd5005a835ef36f9bbec8313132e`  
		Last Modified: Tue, 27 Oct 2026 20:04:48 GMT  
		Size: 189.0 MB (189049115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c57ed9d6897cff959811ccf43573ef8df2c5e328774b2044481bfd2eac7576d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11212969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27ec098b5f09973ea146e781b0bd78dfeca57f5fd2e1ba8595d0585318bff05`

```dockerfile
```

-	Layers:
	-	`sha256:af38c7a6cff785d5936de7382389fb44f5a234f0bb58b457557f2515ee81775d`  
		Last Modified: Tue, 27 Oct 2026 20:04:44 GMT  
		Size: 11.2 MB (11202797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:582490e1238b6f3a80b1dd4a6ed085c44b55d994346922ffaccd4b42e81f759d`  
		Last Modified: Tue, 27 Oct 2026 20:04:44 GMT  
		Size: 10.2 KB (10172 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:3c0abe6217928cd2f83b3ade821e9ef5532fa27e63d9e1c4a53ca4fd08b125b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.5 MB (330498196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafd8624aa3672294d91a0a37d14b31595ea6e6e5b2694ceb127ff5deef53111`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:54:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 04 Nov 2026 17:16:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6a95e766b7860b047e49d033542badca2f0ebb78f3f1b5af4fab8f4dc39f26`  
		Last Modified: Sun, 01 Nov 2026 11:29:31 GMT  
		Size: 14.3 MB (14301315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c47ede4e756b490dfaaf6436afb35cfc953f4671a16130a77d417545da6936`  
		Last Modified: Tue, 03 Nov 2026 07:57:43 GMT  
		Size: 53.9 MB (53918515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a12cd09550a3adddb5a2029f3f61c4297228dced6e42e3879656c326b34d2b4`  
		Last Modified: Wed, 04 Nov 2026 17:28:01 GMT  
		Size: 231.2 MB (231223737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bfd4cae25c14f5bf0e32e11283de0b8ff6b15cafbaee67d48cbff81746b46774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11206207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6d575390320d381e75478c6e811e147e4504d9082c6f1d10b45e25a860eb75`

```dockerfile
```

-	Layers:
	-	`sha256:bef0bf460d4da2d322d9c1d19bdccb286d0a9cee4a41309e37890867d37ce4c5`  
		Last Modified: Wed, 04 Nov 2026 17:27:29 GMT  
		Size: 11.2 MB (11196034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8c63d260e97fa34643070d2b61dcd6cc67b9244e85b5a31585621e0eedb92f`  
		Last Modified: Wed, 04 Nov 2026 17:27:25 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0766ef8f8ea05397763048ccf8bb23b084aed680de670fff51d6a77c22484250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252724880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b16789c08243603646db155e9a8f23e1e10a359c73ebd7f35808a5a8428b017`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:12:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 01:50:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2832bd3b2825db4ef002cba25e41a30394bc6ec8e3b3c63f7177efa9098a08`  
		Last Modified: Wed, 11 Nov 2026 23:12:37 GMT  
		Size: 14.9 MB (14898081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4238ea88909276a1059f4644e8e637adead1dc848346e27ab01e62412792ed`  
		Last Modified: Thu, 12 Nov 2026 00:16:14 GMT  
		Size: 46.8 MB (46837287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c455d7f9ee6d30becbef12593354e1da022798e10bef40c52a959d0127bda3`  
		Last Modified: Thu, 12 Nov 2026 01:52:02 GMT  
		Size: 161.0 MB (161021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f8d6059f827c4793f1d59a9d6d4f9195d2727c2f6cb61f04b0bceef22007a92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11057397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3ba9f3eaf90e865d8ba2461829c1e251d87c61e1200af0af3dfefae6e001ed`

```dockerfile
```

-	Layers:
	-	`sha256:ed5d28ecd448feffda5258f49c095799bf6f0fd26d168941252f0320e1d94504`  
		Last Modified: Thu, 12 Nov 2026 01:52:00 GMT  
		Size: 11.0 MB (11047256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fa44341d27340964b4925afb73542b8f6a6313f2eb88deee38c8bdc922cd2d4`  
		Last Modified: Thu, 12 Nov 2026 01:51:59 GMT  
		Size: 10.1 KB (10141 bytes)  
		MIME: application/vnd.in-toto+json
