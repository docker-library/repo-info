## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:0e259f78b846ad4c028ff72e142793d10a35f0674a7e84574adda87e366d0b3e
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

### `buildpack-deps:testing` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5d77763ea3941ce79f2b46f7df6ab9bba23bbe60921db42ce6c0f9167927be99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.6 MB (356621208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4034bb66955a6bcfcf6b65d4fc67abcf96022e2f7e1f827839ecbd0b702c3a4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:44:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25affc71bb2e48543388bd42348158ddb69b90d1c1c4d8bb6242a81c2f56b014`  
		Last Modified: Wed, 05 Aug 2026 00:45:04 GMT  
		Size: 28.0 MB (28030488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92645858280222939756c7dd043a8257fe85a954051d9033e8434f3ec7b8fc59`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 79.0 MB (78966467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b5d35a6741b4d6ba3abac53c67e2fd74e218fd2284d92ce9bc6d509d4b0dee`  
		Last Modified: Wed, 05 Aug 2026 02:17:29 GMT  
		Size: 200.3 MB (200292551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:034e5ba50ec94c80f078b217919c42af7655f6dfb23a7a1530638f1a6d21f103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16972389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152988ba725b95ccc159c827656cf16e98140bf1881c2a5a696f67ac125935de`

```dockerfile
```

-	Layers:
	-	`sha256:7157888d232fb93ca8e97552804214d64009d0df94d1bf5e230dddfa42b728b2`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 17.0 MB (16962244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0d34538461663966a076f45a7b1f882acc990c16f1f480c0d074ac4736ba99`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2b637070797bfd338a626b063b9774f39ffd253956d0dd32822c18fcfb6ec539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301021524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb3fcba5ba789bfcf202e5460c3ab0f668ac395891beca384f11845763a2b40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 02:30:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:14:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fe0cf301c4580afdcce9c4523d53e4a9f0421becb9a7372a07529c5a0d93fd85`  
		Last Modified: Tue, 14 Jul 2026 00:14:29 GMT  
		Size: 45.8 MB (45771497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f486118fe23db804c6ddc7e2ceba9a8e8b4ce1707d31fb3879d7d9bdae23e9`  
		Last Modified: Tue, 14 Jul 2026 02:30:22 GMT  
		Size: 25.3 MB (25305970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24809ed4409cd95fcc13a1daf00688c96109733bcf88fd8c0891f2d916ef4c92`  
		Last Modified: Tue, 14 Jul 2026 04:15:49 GMT  
		Size: 73.6 MB (73564944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2805ac19d58f8e96d999462bd684ae1c679341ef4c264988130665ee368ecc4b`  
		Last Modified: Tue, 14 Jul 2026 05:15:13 GMT  
		Size: 156.4 MB (156379113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3f0456c22aa1fc893d101a598a87c208afa43dc6aca2ef872d709ca76aa066fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16785121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee8f92b7d5d1fd1327c135f00b1729a19ef6ab4d26640869d7aa6f07e008e6b`

```dockerfile
```

-	Layers:
	-	`sha256:28461bea301afd64aa38bdf010910fb111c9b506b2caee48069012ece493bea4`  
		Last Modified: Tue, 14 Jul 2026 05:15:10 GMT  
		Size: 16.8 MB (16774913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f910d309dfe0bafcebff36d72ca52b1dcbdd04b817bb7d0cbcae57e84a697d6a`  
		Last Modified: Tue, 14 Jul 2026 05:15:09 GMT  
		Size: 10.2 KB (10208 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6807ade606d14173e47101cfccde4699876d745807b671bd070d1e2cc6d1b749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (344002831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315201e0c41f2c2b8213e1975d1ab07e85c0701ca3f2cbb534f53b1600694b0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:46:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2f4f82e27068d266153b28dc9c7ef6e89b9ce2e86335fcdf4c6349cd26ca08`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 27.1 MB (27132649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1c90281cc26c6404834be15470902acc8131f3b609925652d0c3ce2354ccaf`  
		Last Modified: Tue, 14 Jul 2026 02:37:19 GMT  
		Size: 78.4 MB (78388888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102e0267543c02bd7f604bf53a3a38a82a0901fc57579fb3c1d00ea92c5c13c1`  
		Last Modified: Tue, 14 Jul 2026 03:18:46 GMT  
		Size: 189.6 MB (189590688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ddf33815d1dd0a3d56a7ea58148f800db89d43a49547ffe5f406a7fab4ae64d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17108796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667a8bc41f9d7c6ee45804bde9fd045bfbb1c44d090d7484cb13df83caece923`

```dockerfile
```

-	Layers:
	-	`sha256:b6df9c66afffc74a7b107474cc1dc3d28242df6fe783370520e324dab315ee42`  
		Last Modified: Tue, 14 Jul 2026 03:18:42 GMT  
		Size: 17.1 MB (17098571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e79560200b897419b71adc900a5b94b2360b602b8a20152d1b284dcdb92a46a9`  
		Last Modified: Tue, 14 Jul 2026 03:18:40 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4dbdade02a2cc7aa2cb4c1566b386433817cdb0fb3991440dba76f2b7b9866cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.1 MB (363116857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b4ed01b35f1df403061a1fd19d009dc49c7aa7fcadc76ac51e17aaba01c0df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:46:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a419d8b16d5c4eb83dd574573e09cbbf331d9ac2b28d868dd2cdb09f6440c1fd`  
		Last Modified: Tue, 14 Jul 2026 01:47:07 GMT  
		Size: 29.1 MB (29051802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe541bc4cb0760ef8aedb4d19789f4d0def85a5805a87f3b514a3ad5f102f49f`  
		Last Modified: Tue, 14 Jul 2026 02:38:46 GMT  
		Size: 81.3 MB (81250309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba837b37e6295d4ed8b5af979a7025e61891029a03393bd68a94c30aa69cfce1`  
		Last Modified: Tue, 14 Jul 2026 03:18:49 GMT  
		Size: 202.6 MB (202623596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:81ee0b5d894343b9835bab0ba012c8977cae80c6672184f81af5e9c8dbd3f138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16972514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7921265b2c267be127a9461cae29e53f54df1c07292bce7ddca52a8a9becb6`

```dockerfile
```

-	Layers:
	-	`sha256:e948003a985763a37fdd536fbfd90eb944929d05e46686313d5a0f4c560760c9`  
		Last Modified: Tue, 14 Jul 2026 03:18:45 GMT  
		Size: 17.0 MB (16962391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:868f38633f19990fce979d4dc8d0ef3742b1ed30c506e0da98c0c1dd733f57c1`  
		Last Modified: Tue, 14 Jul 2026 03:18:44 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0f59bb05b3f7819b8379e96e2ba951fe008fb0d45ee52c8f2eb63f68575e91ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363404019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52dc35fee7607da0c53bad771d9fd02cc534fc4895c71e656541b1676743d9c8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 03:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:14:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:47:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:99ce65367c2aa19aba65de12cc4ed189d6b938a0f33ead71ee1e5509c2e689ff`  
		Last Modified: Tue, 14 Jul 2026 00:13:21 GMT  
		Size: 54.2 MB (54187397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bf537e71e85c4895a4930b8dc0b90c98cb11d6030046fa25e0cb1bbeb2884`  
		Last Modified: Tue, 14 Jul 2026 03:50:28 GMT  
		Size: 30.1 MB (30118601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf203763d3ac145a0012387cf4a7a85b2c699657b5f28fd3f1d6eb2e91f96b1`  
		Last Modified: Tue, 14 Jul 2026 12:15:03 GMT  
		Size: 85.3 MB (85307702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc69407e40ce4782fde3562384a09d55a0c34996bb9e84969a496c72a88dee54`  
		Last Modified: Tue, 14 Jul 2026 14:48:50 GMT  
		Size: 193.8 MB (193790319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eda178ed7c070dd3b4eb77982318485b60f7f9aedd7d5f6226492a31b47a3aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16890263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3cf0d9c112cafbe9a42c9c96342d6d2f8d542b03b35830b1c13d780d9135bf`

```dockerfile
```

-	Layers:
	-	`sha256:3c4d5112dec196da034f1fa80c039ed7a98f9a6dc03158a7fa9cfed0fab7fd43`  
		Last Modified: Tue, 14 Jul 2026 14:48:46 GMT  
		Size: 16.9 MB (16880086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10ca4e1a01f611084df56005d2efe254418c3544588e29ee172da6938f562bfb`  
		Last Modified: Tue, 14 Jul 2026 14:48:45 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:468801c01a69b7a0201095590139a1f8ed8168ee740fc5c5880eee9de90f49c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.8 MB (488758443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e9262f19872bf9609f134c8c87184c8d4307e19bd746b8ce5194ad5f5ee5a9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1783900800'
# Wed, 15 Jul 2026 17:25:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:38:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 19 Jul 2026 23:35:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2834ca6ae81e566a8b7364039c7033fa86964b75b5c08017d3845b776e8057e`  
		Last Modified: Tue, 14 Jul 2026 00:14:52 GMT  
		Size: 47.0 MB (46974469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d3fd9173a91e2ee4c5e0ada56b684528f5689a2e333a6a8a4865e29d2cb157`  
		Last Modified: Wed, 15 Jul 2026 17:27:02 GMT  
		Size: 27.2 MB (27231527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4ee9969c69527a2ed18fcf137e08f13fd4f337d128569d13f587acdb6b5ab2`  
		Last Modified: Thu, 16 Jul 2026 22:42:21 GMT  
		Size: 77.7 MB (77679634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594e33f1a2cedfb763520f70d02494d09cb12e4361def51579d4b8a3a39b8e1f`  
		Last Modified: Sun, 19 Jul 2026 23:51:29 GMT  
		Size: 336.9 MB (336872813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e36b65dbcda00f96aa528ecbc52f5e0a50337a41b5904cbcf49665b4b193c67b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16934463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb31245ebe7799bd4c2a08b106ec3343d0df19df00636ed3b433e351862e0d8`

```dockerfile
```

-	Layers:
	-	`sha256:e385c471cefe07d48b1e7cbc1a21bf0f1d89e6bc6e851cbb8d20c239fcb1733f`  
		Last Modified: Sun, 19 Jul 2026 23:50:43 GMT  
		Size: 16.9 MB (16924286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:531264693747f19e30c451767289597a14f9ad7f9313bfe2d43f0e894af5fc19`  
		Last Modified: Sun, 19 Jul 2026 23:50:38 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e6bf249530b88d9e7369bf21ae9cf72853528a5523abaea571a16084a5b60df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328677134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914e3491c2f3e80f4ac6df1f533ea13f6d81174f0b6e43e98d15fcfb2b26d81a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 03:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:26:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:394d96029495a1917f7fc96f31c9815dc81075af3a5dc05ae1774fd68ae13a47`  
		Last Modified: Tue, 14 Jul 2026 00:14:16 GMT  
		Size: 48.6 MB (48600734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccb084fe4893e3ee5aaf287aa6c021a4a77b8cb38b2c673b352ec3272712743`  
		Last Modified: Tue, 14 Jul 2026 03:07:43 GMT  
		Size: 27.5 MB (27514904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418207b0558e3c75598b6c6992faf9b7610a3647eed0d2d65548f5fb95e3faba`  
		Last Modified: Tue, 14 Jul 2026 04:47:30 GMT  
		Size: 79.2 MB (79175832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318e1ecf9cb5f20488db36c88e9bca7105bdd35a8e5f93fa4a1b692d8472eddc`  
		Last Modified: Tue, 14 Jul 2026 05:27:47 GMT  
		Size: 173.4 MB (173385664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:163b469a5b095b17e6eb84efcb4818630641fa68ce73fe47d35429a40c8c41c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16693507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f1a8fcf4dd22afef654ceca8a7b07dbe30ed3c16b6a8a1e211ca9b13a9789b`

```dockerfile
```

-	Layers:
	-	`sha256:2cd0dd221b2244f1a85599da52db8fa0ac2db647a103ff9d1be67a126f44c5f0`  
		Last Modified: Tue, 14 Jul 2026 05:27:43 GMT  
		Size: 16.7 MB (16683362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71dae4378d249d775bfc5a3e587e5ef397ffba85c2b6954c345ffce0e1fc0a6a`  
		Last Modified: Tue, 14 Jul 2026 05:27:42 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
