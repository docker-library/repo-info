## `buildpack-deps:forky`

```console
$ docker pull buildpack-deps@sha256:d702f3c0958fc189fbb63ad3cee2f7232a7d7a9fb1ee1fdbec07b2a3a757ba80
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

### `buildpack-deps:forky` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:60c6235345f3eecfaf31314346f2ecb7e50b1556dce4ab9f9bd99cb6959550f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.3 MB (354333422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6870c41902827a5b5692d9234305b52555d0ed370790f72335940e671bf455c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:43:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a5ee597eb0ffa48d00079725ab73f4aa69f4891fce8614dc46e85abbd9cc84`  
		Last Modified: Tue, 14 Jul 2026 01:43:53 GMT  
		Size: 27.9 MB (27909688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdf25ce5c9fba60ce16c90684b3d86c72cfae6df892c9f01d7b1eab5186ff79`  
		Last Modified: Tue, 14 Jul 2026 02:30:16 GMT  
		Size: 78.0 MB (78030297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ab3376c0c2645db732e3770316cef2097965b3a29a0cbe8c54dbe6a21c6792`  
		Last Modified: Tue, 14 Jul 2026 03:18:46 GMT  
		Size: 199.5 MB (199528105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fd0fa1588359174ad55ffd04605e609dc89bf6de15b469ba156517ae9abce249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16982225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a9b7ea2e7b97c53dcbfe8bd736249996f78be5b0ec38d969fd5b5863bedf11`

```dockerfile
```

-	Layers:
	-	`sha256:cd4a82184c95891c79a2289562eb2a150901f8679b2065dc57e6924af1240874`  
		Last Modified: Tue, 14 Jul 2026 03:18:43 GMT  
		Size: 17.0 MB (16972080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54352a7ff957e3b33880cbf13a4329a8abb550082c532a757563ecb273620110`  
		Last Modified: Tue, 14 Jul 2026 03:18:42 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm variant v7

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

### `buildpack-deps:forky` - unknown; unknown

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

### `buildpack-deps:forky` - linux; arm64 variant v8

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

### `buildpack-deps:forky` - unknown; unknown

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

### `buildpack-deps:forky` - linux; 386

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

### `buildpack-deps:forky` - unknown; unknown

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

### `buildpack-deps:forky` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2095b5e04e3c132555bf8aea8782d4c4fe817e8deab931aa39cf607f9da0672e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.2 MB (360243958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caeb3f291535f4cf6cadca667d293842185d6e75aa919836ae2270ce2f39789f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 03:25:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:09:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:39:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:18c7f7605567d97bd2e11cd865b7616a79a2f59d49d2c2db26f6e2d2ee14157b`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 54.1 MB (54079029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68da5f6b349e8580674c57a2ec241057ace529f7c6ffaefb122e78e655d6fa67`  
		Last Modified: Wed, 24 Jun 2026 03:26:02 GMT  
		Size: 30.1 MB (30100045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa56a3e223cf16bfbad88344f548a0f88d001e00f015875d3dc6ded84739bf9`  
		Last Modified: Wed, 24 Jun 2026 09:10:30 GMT  
		Size: 83.5 MB (83477008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe547928e6ac55827408c7cb761146403e3c13d85c7ba45e7c4f05d3cfb8dbd`  
		Last Modified: Wed, 24 Jun 2026 11:40:27 GMT  
		Size: 192.6 MB (192587876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:608551be839671e2fc71aa8b9959597504a3b466f2bee3e0eb58142f129432ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46407e4438b527645382461921064cbe1dc84c0a73c03efb63d9aff0ed769351`

```dockerfile
```

-	Layers:
	-	`sha256:c22bad5e4202e183cdee8ec670dcc41873869db466716875039f2702ae9e3f71`  
		Last Modified: Wed, 24 Jun 2026 11:40:23 GMT  
		Size: 16.8 MB (16805137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d59b1cedd0d0fb9dfec3db3b8bcb745b89bf6e5b690c2867ae6c68f8f66f598`  
		Last Modified: Wed, 24 Jun 2026 11:40:22 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:65f79fee29bb063ad47137dc14ecf2f075222da38a22a0d6617b93360e877357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.7 MB (492669777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7397100dec41b9c7a2d3b628adab8d04ebf3b9ae89e034c565ea1e28b78c4766`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1782172800'
# Sat, 27 Jun 2026 16:13:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:38:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 17:14:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:198a866fee61102466333b8b7e43c7a497d2c89dc9749834f261975581cdb8a7`  
		Last Modified: Wed, 24 Jun 2026 03:25:50 GMT  
		Size: 46.8 MB (46847590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcc7afc9b118cb481a7e8e8bce6ecbd596c8a3dc6781e188650e24d10ea540f`  
		Last Modified: Sat, 27 Jun 2026 16:14:42 GMT  
		Size: 27.2 MB (27225997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a759da1c4492aff413ad5eef1730caeba99b18058d2fdd99c71b77933c3b54`  
		Last Modified: Mon, 29 Jun 2026 17:02:33 GMT  
		Size: 77.2 MB (77178480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c45a55c0facbb28be302d692f63fe9178748bbc4ca0be57ed20e384ccb70afd`  
		Last Modified: Mon, 29 Jun 2026 17:30:46 GMT  
		Size: 341.4 MB (341417710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:06a178d7bda8036f79c4350ddc61a8cac6b0c65f8cd8dc58a047a607e211c21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17020889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33f847a5fe7ee6353c5cb34f2c92fb110fee4cf0f609b98219512d6c2e68a4`

```dockerfile
```

-	Layers:
	-	`sha256:e2d6185e240897a9492645f78bd95a86844e977761962f9a05fb15e5c72c2c6d`  
		Last Modified: Mon, 29 Jun 2026 17:30:01 GMT  
		Size: 17.0 MB (17010713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bc49812b3f2c667e0ffe2f1b6e9b958aacbe148729b768eace09da33ec33dcf`  
		Last Modified: Mon, 29 Jun 2026 17:29:56 GMT  
		Size: 10.2 KB (10176 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; s390x

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

### `buildpack-deps:forky` - unknown; unknown

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
