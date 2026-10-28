## `buildpack-deps:forky`

```console
$ docker pull buildpack-deps@sha256:9ef5ad6ffb1b9070f369009d65b61a431264c352a2fc4e7d9e56b47bd2f4ac8e
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
$ docker pull buildpack-deps@sha256:c22ddecf59a9e75d797014a30cae403f74d91a365522f4ab83e50e96e2b7adf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.6 MB (368629719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf06a0df8ab617eda357ca2abd4d40a4c48ae0043e1a3b695ac1e6acde29c15`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:39:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea818440f99a7fb5fa66dfa730d96329ef0f515da61646e9569c136067cb34d1`  
		Last Modified: Wed, 28 Oct 2026 01:39:50 GMT  
		Size: 28.5 MB (28512452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f7fb872b47c0231dbad5bac1dbe21ae0bd29e00e45b4912e9d8ff5fa833f7`  
		Last Modified: Wed, 28 Oct 2026 02:23:27 GMT  
		Size: 80.4 MB (80401284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c86a1161bd00e81b23860f65d407e0d35b5ba64b2f237a0784841e86b6bd87`  
		Last Modified: Wed, 28 Oct 2026 03:16:04 GMT  
		Size: 209.9 MB (209901571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b7ad799d885ef738452880b7ffaeb4c08f0ced868dbc86c44c1c251eea6f1372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16895476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a936fb5737725732f2847c7eee68764dce6fcef2fd1b210bb026e590349822`

```dockerfile
```

-	Layers:
	-	`sha256:9bec62dab9a181e39a7050ec7df7397d518ef064abd6b3165492b1a4bcbecaea`  
		Last Modified: Wed, 28 Oct 2026 03:16:00 GMT  
		Size: 16.9 MB (16885331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44f0dd613b86ccae924c49b5e1954f7050983b89303741d41d160446ed5dbac8`  
		Last Modified: Wed, 28 Oct 2026 03:15:59 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:704a1e5876ac33aec9bc794f674387c50e7b66b818290f26c8964342c4df3d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306642509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2df9ec712cf0cfc2929d0da5cb6ca2e242c4ba595d1b457715143775a97d36`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:13:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:04120beab8a285c5eddc34b1a64b3c13ee0d4b39ff8ed18236f14b053877c362`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 46.0 MB (46005247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c9ef57293f97f17623353304a5e9c68415a52dd2dd9d4d99de77fb61e76a2d`  
		Last Modified: Wed, 28 Oct 2026 02:21:32 GMT  
		Size: 25.6 MB (25595834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059712e68808cb6a5ff27609e354a5c38fced224fce3d1435b0912c2ada37d26`  
		Last Modified: Wed, 28 Oct 2026 03:47:35 GMT  
		Size: 73.9 MB (73855417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e3c6b88fb5e9fd1d184c1ea9269827705b2188615917bbab56e76cd0bc73c2`  
		Last Modified: Wed, 28 Oct 2026 04:13:51 GMT  
		Size: 161.2 MB (161186011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:28d2b6d83c1715d743939e3b66da05b4e338f1d57ec044a838c8137cb44e9639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16680657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f20f9e7cc4612661ff0996b490aa39205c275af37d2be7f0a8d225453c28f4`

```dockerfile
```

-	Layers:
	-	`sha256:bb3862b336ef438ba0149d4ab71f385bacd0221a8aa7b63d9ff10dac53329335`  
		Last Modified: Wed, 28 Oct 2026 04:13:48 GMT  
		Size: 16.7 MB (16670448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8eccc1a0772a4b52b44ea40b42e5789a441fb4052458c03494f1a08f70d5e6f`  
		Last Modified: Wed, 28 Oct 2026 04:13:47 GMT  
		Size: 10.2 KB (10209 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:37007f7de5672a1e149e15b1879684b8b3501d2d1a285a36bb2fb63bbe5ece58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353542666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956ef86717656144d9a8de01f92f5707a6a4ed270fa255220ab5a0d7955423af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fa1a66f1c4403c3ff5e15f93ed7ef65ec5d3ed0834152f996b24e60199114f`  
		Last Modified: Wed, 28 Oct 2026 01:43:21 GMT  
		Size: 27.4 MB (27429765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f5d13d5b4cb2ecf626f869b4c74afa28ca53bdd2e9e1213516992c5c599bf9`  
		Last Modified: Wed, 28 Oct 2026 02:35:07 GMT  
		Size: 78.8 MB (78757985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca80be1ce2654cca9949276a8e286280cebde116058974a2768b19f1837df37`  
		Last Modified: Wed, 28 Oct 2026 03:15:58 GMT  
		Size: 198.2 MB (198211662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:925c9918c3fcc85b1ad477fd49528e01efeadb31d76041c40b9093e554af400b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17001875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dec6923ed0c2f48bbf2e100011826c35347bd9a24c881eea293b96d69bc3805`

```dockerfile
```

-	Layers:
	-	`sha256:6f10e571bf791e2232cefceb8a30c23a53fad47b5b361b7f74bbf94bf0c62a51`  
		Last Modified: Wed, 28 Oct 2026 03:15:53 GMT  
		Size: 17.0 MB (16991650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e7446a0763f1cac4446bcf342251e5f8764d522f1423efa2987a86d6794f347`  
		Last Modified: Wed, 28 Oct 2026 03:15:52 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5e83bfe84fcfc9f3fd0569373d6cc23f49ddef0d27337a6c33253a3eb0a48dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.4 MB (374415275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1a63013fce25c47e236dd8cdeda8df83246fbaa366a658ee69a213ca3765d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1261df17d16061fdd3621921040d84a95a21fa70d7d73d1e467e8991489a8c3b`  
		Last Modified: Wed, 28 Oct 2026 01:42:56 GMT  
		Size: 29.6 MB (29638980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473db600766efc41b02bed5e9d517e6b14a664bb7a47cc4c2d97171a2c24bd8c`  
		Last Modified: Wed, 28 Oct 2026 02:28:44 GMT  
		Size: 82.2 MB (82183266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b84a43d5c13b4f2c4f030a831ade05ab5786ec2caa432e0976132f7f1b71712`  
		Last Modified: Wed, 28 Oct 2026 03:16:05 GMT  
		Size: 211.7 MB (211657582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c2883cf74a137f24bc585e06e79f68dda8299a2f320aaa049338dbe126f6f4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16862865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38acf3f035e15eafe93e1bc8723548314622cc1052f49a3e495981df3c5d489e`

```dockerfile
```

-	Layers:
	-	`sha256:b3c3384891db2bf2fdb5912fec0e31ae933f12a17cf972e104f25bb3d330a9bd`  
		Last Modified: Wed, 28 Oct 2026 03:16:01 GMT  
		Size: 16.9 MB (16852742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862e1994952281cf5acac2fbe1da282395188f3205306111bd1eb40a65d56d62`  
		Last Modified: Wed, 28 Oct 2026 03:16:00 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:eb77b495e8c2aff73fa534d475784beb37564a4644d9c92cde8c401b420f36ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.0 MB (372960085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:581364e98c1a0323ad5235d3f5e2a6e89588f42dcd58622bf083419faddffd10`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 04:19:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:55:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:00:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fdff336143ff910156b179d6bd4838477e3c227ef408959418ba38d6f8413346`  
		Last Modified: Wed, 28 Oct 2026 00:21:10 GMT  
		Size: 54.5 MB (54501692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd2f234dfafb380c4eb2278c6bd6d139786df244ad4114ab44335c1b7b7e444`  
		Last Modified: Wed, 28 Oct 2026 04:19:42 GMT  
		Size: 30.5 MB (30515417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec392254d224322b3d5e33530dcb4bd0e1a4373cf7762c4b302eb8c156c7019`  
		Last Modified: Wed, 28 Oct 2026 11:56:10 GMT  
		Size: 86.2 MB (86239129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3ff4f9a23e9fd81c20867503bdf00e1e95822bd19587ce86305a09d217a75b`  
		Last Modified: Wed, 28 Oct 2026 15:02:16 GMT  
		Size: 201.7 MB (201703847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:621b3c0f15d893a958f1aa0c25c8fd082dd1f8f6f5f7744c9072405b5825c350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ad380a3f35ed487ce628c7fb8a39720401a5fbce87e9361fc6e03a20d18467`

```dockerfile
```

-	Layers:
	-	`sha256:64c86a6e4e374fff2e3a3d94f9750ca9f48109deaaf980181b313275b1b91009`  
		Last Modified: Wed, 28 Oct 2026 15:02:12 GMT  
		Size: 16.9 MB (16887678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87210baddeb6ef1f2ad127f7ba52fbbced525529ee0c6401cd357e6d7d1f0210`  
		Last Modified: Wed, 28 Oct 2026 15:02:11 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:5578c6dea2f9abc06ed38c73e65ca7eabfff1d140a219bbd318ffb4f488dccb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.2 MB (509174923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cab40358cb1fd46c8971c6ab3407f26e0adad0056410c791b341d1a87d7fe09`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1792531975'
# Thu, 22 Oct 2026 05:05:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:49:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 19:02:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:adfc591135148650dbf526110c7a281e2348fa5b65b8e9b8f646cec906264d49`  
		Last Modified: Tue, 20 Oct 2026 23:31:20 GMT  
		Size: 47.2 MB (47232438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285503d849255a9a5b7dbcab2c31eca38ccb189dd677888dc960cf188fa74a95`  
		Last Modified: Thu, 22 Oct 2026 05:07:49 GMT  
		Size: 27.6 MB (27563488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1ff2c7b2c417377f25b940ecb4ed64ba46773bfef441e0430521386bcb3e2d`  
		Last Modified: Sat, 24 Oct 2026 03:53:31 GMT  
		Size: 77.8 MB (77807485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb9d4f7ae42948e3f11be02998a297d8971d948d2c0ec0e80b1c7e56d764e83`  
		Last Modified: Mon, 26 Oct 2026 19:20:16 GMT  
		Size: 356.6 MB (356571512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:03d5dccda0d0cada7383448ef4fcb58d2e9a3cf2f972a548bf0eadf1c84bf862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16965734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9ca43d21341f8ace8b897c3e590be48e0f7688b498b6d376288ab207ba3afb`

```dockerfile
```

-	Layers:
	-	`sha256:9a2b4d0475cc740165464534daf4574680975ab4bd28e114bccf5d1ad5515e28`  
		Last Modified: Mon, 26 Oct 2026 19:19:26 GMT  
		Size: 17.0 MB (16955557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28b7d32b1ace09ae752e5e4d90a2986341cd6a5d23a6bb91e7c4e8be05a4250`  
		Last Modified: Mon, 26 Oct 2026 19:19:21 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5cb3d82431558859d2f9f0e1fcc7a5001b5e014446431b318499707432dbb4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337623908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9aeebee26a21d5fd1e9532884371494bb64ac15b03050d6750ef8c63ad1e537`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:11:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:20:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d60baeb673f726dfd8d5d1b46f51e89f23e17eb3992e524fa3e225597d8cc8e5`  
		Last Modified: Wed, 28 Oct 2026 00:09:37 GMT  
		Size: 48.9 MB (48910387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d053a611ec912d772ef2485cfd80a68a9dff4b99352e9cbbb359915369783e`  
		Last Modified: Wed, 28 Oct 2026 02:42:36 GMT  
		Size: 27.8 MB (27805740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf56047d9724d8a205ee3987d6c40d7d1a3b7139a73384a53ff14751025b492`  
		Last Modified: Wed, 28 Oct 2026 04:11:40 GMT  
		Size: 80.2 MB (80222844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c3af8a31ca27a039753c550d5d2f001ac93cdbea94344b608e78382bcccadf`  
		Last Modified: Wed, 28 Oct 2026 05:21:39 GMT  
		Size: 180.7 MB (180684937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:91e1387ad75b3e1f326f286287369e7a3d6a4cb08d50f704f14405d584c6efad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16700726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0448ce0ae3cdfe5d9c705d8853e84d4d16f3d807de09366634f9185139acef2`

```dockerfile
```

-	Layers:
	-	`sha256:9b948465f4b1422178713ac1e2c3b0ccb3064f69dc5bd7e52a9198a0368c2c55`  
		Last Modified: Wed, 28 Oct 2026 05:21:36 GMT  
		Size: 16.7 MB (16690582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:823e0016460f24a240069251d733a211e8c6a8e19a387c82d77f55d8dc0de23d`  
		Last Modified: Wed, 28 Oct 2026 05:21:35 GMT  
		Size: 10.1 KB (10144 bytes)  
		MIME: application/vnd.in-toto+json
