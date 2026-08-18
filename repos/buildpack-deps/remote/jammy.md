## `buildpack-deps:jammy`

```console
$ docker pull buildpack-deps@sha256:9008cc6dbff4fd8825581f7c70ff21b0a526d5c11439d1f069b3c0b45060a168
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
$ docker pull buildpack-deps@sha256:9a17196dd80814a6b1f876db2ff6d3acc19a2bd8c0c50f1a6d786516fef47586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249471636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed4dd7b93bcb6c683bb57590c65cc2cad61da0ac1863791b9321610320ef865`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:20:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d513d6f6d6beaeddbcb10aafa64a26738869519763752c853a4dd84562c07e`  
		Last Modified: Tue, 04 Aug 2026 02:18:33 GMT  
		Size: 39.5 MB (39477562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6032965cada9e26416a11e7462f88438057bf68f7a6ff210dcd8625daf846521`  
		Last Modified: Tue, 04 Aug 2026 03:20:52 GMT  
		Size: 173.2 MB (173193902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fcd2d17193df01a353e8502de227453db20d28c0698e338ac03cb77f51a9533f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11834369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a1f1c4dc82eab8978c395c4abbe278edcfa9402613afdba1ce04e60e6bb2ef5`

```dockerfile
```

-	Layers:
	-	`sha256:8d071ab4ce8bc6aee6b062a40a675f7029bd2efe17c85026761f580a6c3b771a`  
		Last Modified: Tue, 04 Aug 2026 03:20:50 GMT  
		Size: 11.8 MB (11824210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad2dc6032d93a72514af1af47e38ebe0e2b6b905ff0bbe22d5c4c25efc6486fe`  
		Last Modified: Tue, 04 Aug 2026 03:20:49 GMT  
		Size: 10.2 KB (10159 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:015aa39f875423c048eb7988bbcf11948ad90852567bc9a82b6f316d4a7712a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216742359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f2871ecb4a11dce1fcd2cc7a17c6481e4906645309919a52216f81f51f3a31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:20 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:23 GMT
ADD file:4057637c576bdd7a4abd7b7389029536db4b4e25afde5d38fadb08a13b87397a in / 
# Fri, 31 Jul 2026 21:58:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:18:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9ed8c4ebcc05481c34e8f12f944f7c077f91c71c295871472f499a22112a0cc1`  
		Last Modified: Fri, 31 Jul 2026 22:54:04 GMT  
		Size: 26.8 MB (26848033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105b4f25f99c15159aadd630df53bdee66d95fc9f45e22be6c72003a90ded61b`  
		Last Modified: Tue, 04 Aug 2026 01:12:28 GMT  
		Size: 7.0 MB (6963881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d4cfe116e294cd730ed207b0ba6b4f6a7e76b3f604bdb7c50f7f97e449ca03`  
		Last Modified: Tue, 04 Aug 2026 02:18:05 GMT  
		Size: 42.3 MB (42273515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3194b6510d9e448dcc8a50d684c7c94efb1f2e117f242a683a974b9a36457c0`  
		Last Modified: Tue, 04 Aug 2026 03:18:43 GMT  
		Size: 140.7 MB (140656930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c3a7eb7b01200a5afa1595f3659bde5640e5924c2021c616a67988c0d745e567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11623643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e42dac8a91d42a34aa8761ad19e1583042ca9c8ea7dc37853af86bb5fc4f182`

```dockerfile
```

-	Layers:
	-	`sha256:89c982007955a905a23c8bd4a299c8771a23a6cf64f8d85cdf103f09ec4b3cd5`  
		Last Modified: Tue, 04 Aug 2026 03:18:40 GMT  
		Size: 11.6 MB (11613419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:152aaac7666706b459f5be8567159b6a3b31c6bc6ce9cee592ff8cbee60baaf2`  
		Last Modified: Tue, 04 Aug 2026 03:18:40 GMT  
		Size: 10.2 KB (10224 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a57092480a1e2b5439250936f76350dbd697e058a00292527cc3e2fa9ed70183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240845865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbcf43518bc05807b8174b9d132c2275bfcf671365f4003d57a36a656cbc57f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:18:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2d3de559b9469d5da08383c5cce9e5e1db6ce39520ee01fb754d14154b43f1`  
		Last Modified: Tue, 04 Aug 2026 02:18:50 GMT  
		Size: 39.4 MB (39424050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4998e678aeacaf4d397251bee458f32ddf863020b60700f48945bc20cfdcd6b5`  
		Last Modified: Tue, 04 Aug 2026 03:19:06 GMT  
		Size: 166.8 MB (166783850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4b46474249d531d14c32a6c146da4530bb24764b4eb99805d89dd335719a4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11830117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c270a71ea46a85ab70d3bcb0840f16280772bf7e988c519a0b9d6d75fac4afe`

```dockerfile
```

-	Layers:
	-	`sha256:87228894213d6be9648c9de1f418023ca32ee8e1ff695a59cad834401cc128ad`  
		Last Modified: Tue, 04 Aug 2026 03:19:03 GMT  
		Size: 11.8 MB (11819877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41ce0463676b7d867fd1c1e619a0f00108dd47c841073802fdcd6d141fdf85e`  
		Last Modified: Tue, 04 Aug 2026 03:19:02 GMT  
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
$ docker pull buildpack-deps@sha256:bebc322da49b56c118070768bedd68d46d16326b5e3c73ba936fbd3c1a2db56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274752568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944725acc5b36843a94b6044aba595340213d57fba16c5e94188966edf0bbe7f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 22:41:14 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:41:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:41:16 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 22:42:30 GMT
ADD file:1b41c05681cb7a552c58ebb2cff8b233ec1b6baffb591147d89a7862790cdd47 in / 
# Fri, 31 Jul 2026 22:42:36 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:50:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:58:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e7db681b52dfe370b124bd9523c8d01db9eb56d64a4f1b2a93bc40f155dd82c7`  
		Last Modified: Fri, 31 Jul 2026 22:54:17 GMT  
		Size: 27.2 MB (27243458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd339aec0826cc28485d291ba4e1f3f8dd98dcfa0cd0fb0c8560d046650b2ef`  
		Last Modified: Tue, 04 Aug 2026 01:13:11 GMT  
		Size: 7.1 MB (7073134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648f2e7862950e27ecbc05bb2133a8e39f23f9cca3a1782c205a254cc13e9bc0`  
		Last Modified: Tue, 04 Aug 2026 03:52:42 GMT  
		Size: 42.3 MB (42327180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d865ed399b388718a61183fc3b19e0fda661ef08b1d0efbbd191f4a4791b50`  
		Last Modified: Tue, 04 Aug 2026 07:07:53 GMT  
		Size: 198.1 MB (198108796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cbd77bb90df2ea1e8787a6a17ef15012b285a8a695e62b138b9516e915967cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11776123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd4a4dc58ee53dba10ae728f5c0204feaeecc92921689b5f6050761d93211b3`

```dockerfile
```

-	Layers:
	-	`sha256:379a948ed7c4131523d9a7618ea13c30bb21c5139f00c022c7df2d0cc6882043`  
		Last Modified: Tue, 04 Aug 2026 07:07:26 GMT  
		Size: 11.8 MB (11765931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fe7a89db9e49e5c624124533a0d028f6b96762c71f199bc7639674771d94174`  
		Last Modified: Tue, 04 Aug 2026 07:07:22 GMT  
		Size: 10.2 KB (10192 bytes)  
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
