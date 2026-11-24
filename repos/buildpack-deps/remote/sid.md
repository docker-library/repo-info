## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:03732a34d47951adf90da6f93efa6456a094436874c777cf21b92c2bcbcc72c2
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
$ docker pull buildpack-deps@sha256:e655b6dfbbce958e844654751e2272e82c76c086f7f18bcf078ca3e517211a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.3 MB (372313516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bb94699d192bb3468f1b937db7f673f80b9bdabc17b530c044195b9464065f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:39:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de6b24fe48c1cd81c1befb37d00d2abbe8f9b1386596d24f87aac96d757087d`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 28.6 MB (28648842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3587b8e5ed77a8e5bc790034188109f39589750338b5912763a913c127273c`  
		Last Modified: Tue, 24 Nov 2026 05:21:30 GMT  
		Size: 81.5 MB (81538131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37cc6425e6dd02a8ce462f05cc84e72ae3bb06d43c9e97f3622f1a6426402f7`  
		Last Modified: Tue, 24 Nov 2026 06:16:07 GMT  
		Size: 211.2 MB (211189800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0242aafa48705bde7bbb58bf755d8ad8be57150d172b2e65f826c592aa5a02cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16924117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0895faf50972f2eea611cc17ec32a3d0ca6f9e2a11821361800c12ebfb9bf52`

```dockerfile
```

-	Layers:
	-	`sha256:c6b7da3ec6e21d4b389a3137acae108ca9b58653be98fd55208fc242628522de`  
		Last Modified: Tue, 24 Nov 2026 06:16:03 GMT  
		Size: 16.9 MB (16913984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64fa2cf31f4fd58658675ad4b241b39f5725fec529502fc47ac83a4bea379a54`  
		Last Modified: Tue, 24 Nov 2026 06:16:02 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e04d459867fba575f5a5357600db8291b87a20aaa2e8e6d836c4628582314bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309505665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dfad3387914c76eb999fadcb756e06902f8c60abc418247a9ce357833642d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 05:16:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:15f7d8845a2966c0d4009c970edb646e84bf944f70c55d612c7ab26026dc690c`  
		Last Modified: Tue, 24 Nov 2026 03:40:39 GMT  
		Size: 46.9 MB (46858051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739024664fc98c4cad27ff33ccd71d7511ee41d4052be9a7760d04f0daa22c27`  
		Last Modified: Tue, 24 Nov 2026 05:16:22 GMT  
		Size: 25.7 MB (25711528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f021a986c64fa1ab08f219963745c6a93cb79d5f788eb61a6d99af1cd002f5`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 74.9 MB (74885591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fb91e5a0a7744ffb4fe57c01d990c22461def176edc993b4c0536fa639a6e8`  
		Last Modified: Tue, 24 Nov 2026 07:14:06 GMT  
		Size: 162.1 MB (162050495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:25af61dbd1be43223658e8e7c5058e615940558d3c64e18c3d9d342dd1e05c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16709343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd12c749e836f4dfab1540f1e8f52e66caa1d30b6b799516754abe034a096039`

```dockerfile
```

-	Layers:
	-	`sha256:b4ba7c1fa71fd4c233386b936ade8b422aa430a6a8dea07866079d73c5b9013b`  
		Last Modified: Tue, 24 Nov 2026 07:14:03 GMT  
		Size: 16.7 MB (16699146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b9e9e983458fa9eb6238626f8b8fa2e04b7d9eb5690f1cc31d9a09170b1a599`  
		Last Modified: Tue, 24 Nov 2026 07:14:02 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:27f553f64ab1d3b0471c2b53e9f5ed25a2101485a4a6b837d8a107fc0380f6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.3 MB (356342955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e210bded3e009d6a1c17f4fcd2a44e0ff03107bd801bcca0f7680e0ab9f638`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:43:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:13:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afadab468b21c12cf81914472f5a2f1fe467e4c34110a9cd5f2b16cdfc3ea200`  
		Last Modified: Tue, 24 Nov 2026 04:43:41 GMT  
		Size: 27.4 MB (27433927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb2b49c355db1a454d14a5b6f20b39a3563e48c4afb6eec8f8efd942ddc308`  
		Last Modified: Tue, 24 Nov 2026 05:33:32 GMT  
		Size: 79.9 MB (79876741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fd46b0c27fc696ba9ddf80dfb23f187955b84121bb0f7f96c8ccec8831efad`  
		Last Modified: Tue, 24 Nov 2026 06:14:37 GMT  
		Size: 199.0 MB (198972674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4536baf6c7405e8148b4892364d7eab74031eabd16b9f0df9eb6ffff1a433532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17029893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fe4906779b64e8f23b035b9a3c458c2a4edd01eaa888d344137d34b2f731d6`

```dockerfile
```

-	Layers:
	-	`sha256:610b93e6cd5b5da2d0d13ca34413a54ab0b770f83ea2a49dc97abb70fd7eee4d`  
		Last Modified: Tue, 24 Nov 2026 06:14:34 GMT  
		Size: 17.0 MB (17019680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc390c8677d8c1568f0b2809d34bd53ce80f587dff01f367dd0e0f88501e125a`  
		Last Modified: Tue, 24 Nov 2026 06:14:33 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d686a504f95dd0e4a89242081469e2375e3cd977aaa9b137e2fa2c9fadba3f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.1 MB (378066189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d032fcda430634519a89facfc7bc9743d00d8e8b9fd8b5cbd48a67555f578b3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:41:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:24:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2c44aab2c9ad7e86708670b706440ea5fa3af7b9d038b561160e5c22f70a04`  
		Last Modified: Tue, 24 Nov 2026 04:41:18 GMT  
		Size: 29.8 MB (29765506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969e1c2f261b5bca66bd13ddddbb2881de35df7f439d5d7fd57b892acdb23da5`  
		Last Modified: Tue, 24 Nov 2026 05:25:02 GMT  
		Size: 83.4 MB (83414444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe6d0c89493afc6256a521c7307138bc914bbee48805047ec73b6f4f47b2fbd`  
		Last Modified: Tue, 24 Nov 2026 06:16:23 GMT  
		Size: 212.9 MB (212871224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e9ae38e24c7d019c01e5efc047b41a8445d19c68302b9a6210236e844c4493d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16893114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f446fb7ed2325f30306ec8ffed7c750cde7d71d0c3d74db871df5cd6fd1ae47`

```dockerfile
```

-	Layers:
	-	`sha256:67998444c65e6065475ff2ffe04613eb3ebe5c3eca89a1a8350bd1154c869162`  
		Last Modified: Tue, 24 Nov 2026 06:16:19 GMT  
		Size: 16.9 MB (16883003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc0f031bca7760c8c56aa84e8fc9ddb9cd52b7a0fd711c4cc1b3f938b7434a3e`  
		Last Modified: Tue, 24 Nov 2026 06:16:18 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:54c900c83d9f227c6a7e1fd6dcf315f2d6067255011c4039fb83cbac606ad9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376150434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f391d0aeb394b114e14bd928ec2ddb77a44c8e06d89a7c1f8fffac1ef88cd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 06:51:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:04:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 16:59:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4ebf0fbcdccc51c74cfbde249b871cea750097c0d83a090f6131b12b826a125c`  
		Last Modified: Tue, 24 Nov 2026 03:41:07 GMT  
		Size: 55.5 MB (55543208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a9431370af78b9e5954b48e62965caaa77180aa5e2479421e9276b756446da`  
		Last Modified: Tue, 24 Nov 2026 06:52:09 GMT  
		Size: 30.6 MB (30565300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31045d3057965cf32866c5dc3f65539bb5ec99589e1a3a01fec6487bf600a827`  
		Last Modified: Tue, 24 Nov 2026 14:05:18 GMT  
		Size: 87.6 MB (87551330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354ce76578d796420b58f1cc1b45ec17a804cdac872a82cedce4efe725d23b58`  
		Last Modified: Tue, 24 Nov 2026 17:01:02 GMT  
		Size: 202.5 MB (202490596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8caf42cf6ea509e4a906273cf6c162f2d9be3b5d74810cf8a0f9ed04eb8d2293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16926552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150c5bf612f2e4e9fd119be15fc614ea6c66ee1ad269bc690e7343a0268b89c2`

```dockerfile
```

-	Layers:
	-	`sha256:f6f7132baa941c6a515267e8c959c66dafe8e91d7159d8755cef787dbc7f447b`  
		Last Modified: Tue, 24 Nov 2026 17:00:58 GMT  
		Size: 16.9 MB (16916388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c1cb1850aabc40daa192a3abffb28dbfc74f7e3a8135f2829c8f2a09724d30`  
		Last Modified: Tue, 24 Nov 2026 17:00:57 GMT  
		Size: 10.2 KB (10164 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:0aaf85dd8f5ae1985b61f496fd471922ec3d091aa7931f960ee8070524ae378c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.8 MB (512847848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c8cbcc07001d70faf2e652f9175559b44b52efdae338c2ba067184b1e94f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1793827419'
# Sat, 07 Nov 2026 04:17:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:49:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 11 Nov 2026 23:12:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2a44daf47e48828d223ca6b4fc154f1c7ee2ca485885d87ea4f5dcc10b1b5a17`  
		Last Modified: Thu, 05 Nov 2026 07:24:48 GMT  
		Size: 48.0 MB (47998145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41287effa0e06eddb28da33c86eae36e643e313113302af50d32ee5da49633e`  
		Last Modified: Sat, 07 Nov 2026 04:19:35 GMT  
		Size: 27.5 MB (27515721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb2b17bc11724ad9dfbdf8e97c8bbafc0b49fc16d079c2abf79f3ad6b021202`  
		Last Modified: Sun, 08 Nov 2026 18:53:57 GMT  
		Size: 79.4 MB (79406016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc495c9ed2975d94ad6161c0ad004dfeefddb37d2b9a1f0155897644b3a40888`  
		Last Modified: Wed, 11 Nov 2026 23:30:42 GMT  
		Size: 357.9 MB (357927966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:305a465fdba858dfabf9a0e491b9aada546c60ded456233615a59a076d468fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16952516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8641f8b4461a0fcd2a80075d741cc776b2e1d854a7de8c9e7a58d9a119fec96e`

```dockerfile
```

-	Layers:
	-	`sha256:4294b23de78d54b8bb16d9c018bee12d2e349061ed4d8dc40aa32a7b7744f89e`  
		Last Modified: Wed, 11 Nov 2026 23:29:49 GMT  
		Size: 16.9 MB (16942352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c08cc6d2ac71ca2cf0129c26eb18775a868ca40018936048adef9d7351e6220c`  
		Last Modified: Wed, 11 Nov 2026 23:29:44 GMT  
		Size: 10.2 KB (10164 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:baa49e2546110c0adc83b7aff75cbbcfcba9654a1dc416f4f109061f350646e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.7 MB (340733624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2103fa88e29ca8fd13fb654644616e5ae59b7a2edff0c486de5e96ef0dd9d1c0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:53:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:91e68e6c1616381c30fc94dbb11d38e18f243cca44e507b1722a83aafb5cd542`  
		Last Modified: Tue, 24 Nov 2026 03:39:08 GMT  
		Size: 50.0 MB (49961333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fce3bd81cc1ef6e2dafedf27edd1972b4fc22addc139175f9267f2d5a213a33`  
		Last Modified: Tue, 24 Nov 2026 04:53:25 GMT  
		Size: 27.8 MB (27830843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c170c195566ba38f5d5d7999d4839980911ae21ea9d99c90f6fe5e8178091d50`  
		Last Modified: Tue, 24 Nov 2026 05:42:21 GMT  
		Size: 81.4 MB (81353463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d56ecd43aa4ffa85a8cbadb14d48a32d8ae57434d748fa212b443daa6cbed6`  
		Last Modified: Tue, 24 Nov 2026 06:15:08 GMT  
		Size: 181.6 MB (181587985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:73137366e209ad5f3039288b309d3d7bf92aacc43a407902ec77491918d8ae8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16730165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f21ea42bad8c7ad02cc6588d700c3aaea755efd49cefad64a802d8ddd1ab3ba`

```dockerfile
```

-	Layers:
	-	`sha256:7184fc8d75257236ebc8eab1d239a8a0c6390701a7f7756574449e00fa73226e`  
		Last Modified: Tue, 24 Nov 2026 06:15:05 GMT  
		Size: 16.7 MB (16720033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d8910285126227432e5a57453af83ff5269d268225d157771147402bc9c61ff`  
		Last Modified: Tue, 24 Nov 2026 06:15:04 GMT  
		Size: 10.1 KB (10132 bytes)  
		MIME: application/vnd.in-toto+json
