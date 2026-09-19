## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:f48019294d50b0337ed05cb6d222703c05397b46a22c788668df8c1954a3053f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:sid` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:db24ad21db9ac8a7c6ebffcb997bef2d74514676f83168459376091256585f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.3 MB (645288211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19469eae99f12cb4b97a0b446c4fc9347d3135ef0c75bcacf2e356fd3d6f05f1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:24:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9427e3b2a5c8e9fd944d13bfb003426136599c11a7541d4bcd51808a7823967`  
		Last Modified: Sat, 19 Sep 2026 00:45:06 GMT  
		Size: 28.4 MB (28400198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cacde92a824184a46ce73231ea98a7d323f4a3a80d94800b0ffaad6e65866a`  
		Last Modified: Sat, 19 Sep 2026 01:24:21 GMT  
		Size: 80.6 MB (80569157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c754a08b12260de3d28f1b4117d3c152b5ef7cbbde65068149a6fe2df5ecf9ff`  
		Last Modified: Sat, 19 Sep 2026 02:18:14 GMT  
		Size: 486.7 MB (486669395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f36997ba1354dceadf1016c9ad3ffe2b3f061d8bea4fb408d2efb612edb619c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16882693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cdd55a746214bb72cc86f4a80b8725870a7dd494ef03a8ecc59a95899732725`

```dockerfile
```

-	Layers:
	-	`sha256:255731fab7909ebd4cdb0981369a917c67f9d859451945791b820adf0581c2a2`  
		Last Modified: Sat, 19 Sep 2026 02:18:05 GMT  
		Size: 16.9 MB (16872560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89330f99db9cf2e78a340d7f00fe661db6089d13bedcd3ecb9e9a4fe97b313b5`  
		Last Modified: Sat, 19 Sep 2026 02:18:05 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4b7661e006e0a1e69a1414efd8c086e865eb087919fa14ee915ba43be02274eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307457662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf0b40fa5c3efc05e0e39d40d529aa5405723acbe0edd87897dfb018c5ae9ff`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 01:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:16:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:62aebbfb3371202dadee4b4550328ad7d4941f4c7e0a83244a23e6a9d591f3e3`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5cd6d762c31d82600bb12f69f72d05f6a80fb1604fb9492fa9243d4bfffd0f`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 25.6 MB (25579374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d212ac795e569f1d290d6d123bbb71ae8e55e9a1b88847c8a55276fb9a89112e`  
		Last Modified: Sat, 19 Sep 2026 02:27:02 GMT  
		Size: 74.0 MB (73974913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9bcd704e50700a6525fac078c5a44ecf8bc20bda349509d88863b099a15062`  
		Last Modified: Sat, 19 Sep 2026 03:17:17 GMT  
		Size: 162.0 MB (161980381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d455915bdfec80d310f764d6efe0e7f173b195bc61c2d62dd13ef139202e7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16667877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d5fc0445ecaf19fc5ce511a40ec9b8f1c42aa1e73ddb7066f5cc5b099909b2`

```dockerfile
```

-	Layers:
	-	`sha256:d6e04bd4d350e01ceb2ef0e8f9d064010701953c10e8be3e3cfb1286f2aa12d1`  
		Last Modified: Sat, 19 Sep 2026 03:17:14 GMT  
		Size: 16.7 MB (16657680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d1c3dccdaabdfddde78c0ce1e5c21cd48821b0aa6e5b89377fcc86e9221c102`  
		Last Modified: Sat, 19 Sep 2026 03:17:13 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a15c62c0d0e3efa0a9e094809b85ba5c15f7a192f2e780e2c526df7fbfa338dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.6 MB (639561193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0628a55ff702edf8d4c0a209d7099c4d6f235bb08dc9d72f5e12390c9a538fcc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:47:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ee2b7339d8602fb7b4c51198797a6da775611e66c131459028f80afebc5eea`  
		Last Modified: Sat, 19 Sep 2026 00:47:37 GMT  
		Size: 27.3 MB (27345600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877e1901fd7212aba03e7c34d6e2399ce31a649ed8e7857fff78462b2a526b73`  
		Last Modified: Sat, 19 Sep 2026 01:31:51 GMT  
		Size: 78.9 MB (78942468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b317dca7fff9e223ae88f2962236e6959c122362b9461e9b9ed5b6df381541`  
		Last Modified: Sat, 19 Sep 2026 02:17:56 GMT  
		Size: 484.2 MB (484228407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d9f6473877cca440af22fa7ed8b9e9029d91d90afbe4dc07e3686eb242958ed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16989724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccabd0c86cf900c2aa613e87ddeb5735ebe8fc26b72625324f1356bf9da438a`

```dockerfile
```

-	Layers:
	-	`sha256:479c8b0c8e2db3bfadcabe13032d9881c5ccd42490332b39b6ae418b9290605e`  
		Last Modified: Sat, 19 Sep 2026 02:17:48 GMT  
		Size: 17.0 MB (16979511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:808957327c6f677733f81f175e2408ea800d7a9590c44f3e32854043cd3d0cdf`  
		Last Modified: Sat, 19 Sep 2026 02:17:47 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e5425812144742fc489c7d2eeea39911498ae9c22e657a052b57f9b9b2ea7ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.2 MB (678159952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99ecc6975ad8f5be0405dd66a86859bc959be13f31f0a8f90a260637fd92fe9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:49:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c566546097e50ac1cd4cfe9c183ee89572445be5ac187c16a973e354c3ebe092`  
		Last Modified: Sat, 19 Sep 2026 00:49:58 GMT  
		Size: 29.6 MB (29597173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d6aaf1c51a97a4baebe33b39e8a62e8f0ce02d0c9dcb52d96ba2dfa0350126`  
		Last Modified: Sat, 19 Sep 2026 01:36:00 GMT  
		Size: 82.5 MB (82492108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d249d7ecccbb36b3565b040b40f84c32c494f94d322004b6444640521cd08116`  
		Last Modified: Sat, 19 Sep 2026 02:18:34 GMT  
		Size: 515.3 MB (515317861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:42213db7c14e7014f6a66e2e9d6836ef55ceb75fafedbeff517c665b80eb0487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16851726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40dbd878e1d0c280bbcb8ebe40b71e5d5b104476115a3256946896e4cce8ce0`

```dockerfile
```

-	Layers:
	-	`sha256:d44f69ee591df2b0ba7195e50c1680215e28bf304337e94fa9a921e789db8efd`  
		Last Modified: Sat, 19 Sep 2026 02:18:25 GMT  
		Size: 16.8 MB (16841615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bc1d2fc44aaf4068609f0d98dfa0f38d8885c771f7d40b89e44e5f095e6c851`  
		Last Modified: Sat, 19 Sep 2026 02:18:25 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5f496f420c23f5a23994390320e2ef7b54d66d0f64e94307cd0ae099f7f7df4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **632.0 MB (632012171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640a3ae2dd177c8348ad2d00fe41708b3ea6f7cb17f6f8cb56ee589abb7c01be`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 03:37:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:40:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0740b75b32d7e54ed49294f85fae9198c8436249bbb312d48036904bf9dabca2`  
		Last Modified: Mon, 24 Aug 2026 23:20:45 GMT  
		Size: 54.8 MB (54779193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac46888ef17026e4dabdc47770fe971c53a75fe86b4ecffd0b4c88cd5ff29127`  
		Last Modified: Tue, 25 Aug 2026 03:37:26 GMT  
		Size: 30.3 MB (30328570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd6349eebcec3221055d120c3d44888dc285a9607845ca88c3999d3827d501b`  
		Last Modified: Tue, 25 Aug 2026 09:50:21 GMT  
		Size: 86.9 MB (86948211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0e937d64f9e528ad8c234c2159a4ef9c799393bf87d4ee4dca6f1a772bd985`  
		Last Modified: Tue, 25 Aug 2026 12:42:51 GMT  
		Size: 460.0 MB (459956197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:61e46a363fb454b1b6289d6547ab4392bd8d95633288988d6330ec3a7d2943d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16949473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5870f42e9c915cf76fc07790a3c543b16723a26c85be0ac54dccdf62a620be6`

```dockerfile
```

-	Layers:
	-	`sha256:30529ef7abaf6d2bf4be91112f23a1bd563d2baae37301babc9e2cd971c9b550`  
		Last Modified: Tue, 25 Aug 2026 12:42:43 GMT  
		Size: 16.9 MB (16939309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:462895ac0abafde6e724ad14a9c0adbde05234e6b3bfb092daa6b8e274037663`  
		Last Modified: Tue, 25 Aug 2026 12:42:42 GMT  
		Size: 10.2 KB (10164 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8ed920d37e4b855358e4bfe12209f4258ba5b6fb68625f39b61cdf7f18b8713e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1205699668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31c38e18869b8ec71fcbbe84ad994175b011d5efa48f0d6512db47bbd5562e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1787529600'
# Thu, 27 Aug 2026 00:20:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:44:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 12:52:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ebdd89b00a8705e3b3704b27b947bea95cfc83734a6eb81fe4941099c26f3f12`  
		Last Modified: Mon, 24 Aug 2026 23:25:54 GMT  
		Size: 47.6 MB (47562284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb6c7313515e17efc4bddcf4e5e560cec34677cff84416b78491bee322d97c8`  
		Last Modified: Thu, 27 Aug 2026 00:21:54 GMT  
		Size: 27.4 MB (27413735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb356232afcfe5fca723934d64eb469786c43401ae535cf65ca77a0d56d706a6`  
		Last Modified: Sat, 29 Aug 2026 04:48:20 GMT  
		Size: 79.2 MB (79169049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001fc99b1e5df16b6b8c4c2cd7d284068485d92a042a3637ed161ba42b41230f`  
		Last Modified: Sun, 30 Aug 2026 13:26:27 GMT  
		Size: 1.1 GB (1051554600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:17d7a144a00010b83dd05537f8a82a174fb2411188df55d363478cbbc041c272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17021547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fbe630593c988bae71ac2a17063ee173b69f371741c4e00bbb1f5a1c6f1d7a`

```dockerfile
```

-	Layers:
	-	`sha256:1cc453c2bda073584c4ea7eee0dc5cae023e1d76981c5e34e474ac7f3df0c32c`  
		Last Modified: Sun, 30 Aug 2026 13:23:57 GMT  
		Size: 17.0 MB (17011381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbc81f34bb6a6b8a86440be07fdc5d22bd679744bbcd3cec0acefa41e9375fd6`  
		Last Modified: Sun, 30 Aug 2026 13:23:52 GMT  
		Size: 10.2 KB (10166 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0625fbd6181f81cbe272910cf885d1c526b2ca2ff5bc08a5b33e81cf2c5ad8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.2 MB (584193666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ed792772d485aa974f6f57b27adee9dacd3e0aebc59ac3ed8056a614c21856`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:58:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:15:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:80deac694b4a50e1f04d0dc0d56fbc2ab7ad1c454b1bc48f20e9c8af1d7189ef`  
		Last Modified: Sat, 19 Sep 2026 00:02:11 GMT  
		Size: 48.8 MB (48825379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60312509c1953e37488c829800461120a152ef2c2984035ee2e4faca6eac3ec`  
		Last Modified: Sat, 19 Sep 2026 00:58:28 GMT  
		Size: 27.7 MB (27707874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a8bb7ea8858869c04901839c23852984710d81031dc117e8b3a99f29a9acf1`  
		Last Modified: Sat, 19 Sep 2026 01:39:04 GMT  
		Size: 80.3 MB (80315210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495ce24638552b87238d8c34d1d6ca282c89c23bf1bf51fd3bf1f7c48bf76efc`  
		Last Modified: Sat, 19 Sep 2026 02:16:31 GMT  
		Size: 427.3 MB (427345203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:186f3aad9d7dc988da9282509ae625acfd3af34a425f9a0c0755a764ee45be99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16687975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46fbc28ebcec290f08ee9a28d8df63f5fb4c25b5202882ea1f34d8db0ee4e7a2`

```dockerfile
```

-	Layers:
	-	`sha256:7adb513f46b5de3ba19e6c5158b17dea75330e8bbe2749d53828222f7ff84954`  
		Last Modified: Sat, 19 Sep 2026 02:16:24 GMT  
		Size: 16.7 MB (16677842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c720a97d84ab180d28373217559bfbdcea2a9b79c76c11c02c7fcc7819275313`  
		Last Modified: Sat, 19 Sep 2026 02:16:24 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
