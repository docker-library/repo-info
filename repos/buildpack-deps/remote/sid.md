## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:2bce471103058f05b124426855a4753bd1b479ac88e7c2e0db5dee041d7e3ebb
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
$ docker pull buildpack-deps@sha256:6a7a2e745f87bf619466ced6c95bfeebeca33136753842cacb79f7a5fb5b4c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.5 MB (642520022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27429842881b6fd644ab9535a235c8977ffc25dcaa494c56569ef314bf719909`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d731411aeb3196fe433f8309b736b892475fca5ef141d75893a10230d0d5d5`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 28.0 MB (28041358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3edc06f29bac9ea4d3dea7e53b73f2c1981058a945362b25731354ab1b6869`  
		Last Modified: Wed, 05 Aug 2026 01:33:40 GMT  
		Size: 79.7 MB (79742169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691e147b3df4f7113a7f4b3f49ec3e1de09f602e6968a49a18272a71d98fbfff`  
		Last Modified: Wed, 05 Aug 2026 02:18:24 GMT  
		Size: 485.3 MB (485349392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a68a8ee87ac636319474996b671daca2ce32f26bde811e53da0e5099db47515f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16965791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521ea2e7c9cc2ea0929ec6971182883f6a2c99b7418e260fce493e2ed73861a4`

```dockerfile
```

-	Layers:
	-	`sha256:01d1bad4e92c81e24f1a7a7673b7f1bbfca1fb5d1caeea115feb77a97ef261c9`  
		Last Modified: Wed, 05 Aug 2026 02:18:15 GMT  
		Size: 17.0 MB (16955658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05cd37af86f3ac011c28b59caa56d44cbf742c1856e8b8150947b5a96288ca7d`  
		Last Modified: Wed, 05 Aug 2026 02:18:14 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d555f358e6b10a637783f9aa368f223f95342828008a00ddb449a98bf2d870b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.4 MB (658373588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9b4e36859609b4cc93e0001d4a32bf1efaaacfeb158cce6d50f612aeebdee5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:20:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:16:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:251599f66f2d2349f32940dab7d5837b044ff9b8cac629bd1e0c460bd6f75c2e`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 46.3 MB (46273557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5683fd9b5d0caf4addf66a0ad1daa72fd96a18fd429af0d82149494277f5f8`  
		Last Modified: Wed, 05 Aug 2026 01:20:22 GMT  
		Size: 25.4 MB (25426570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3138c51fd41ef693a2d784a04bd62cc548225b1f03e42fb2828e4d37dd5f7d1`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 74.1 MB (74064636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab581cd245446c88eeb0caa07b25243ddb08635644dc33288679787953979ca0`  
		Last Modified: Wed, 05 Aug 2026 03:17:36 GMT  
		Size: 512.6 MB (512608825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:74cbe6139e51b308dd58f4b140d9db7fc85ca2fd6055739bb2a00302bf64e623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16750149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eda47db079065d5fb04ee402c3a695c8aa0bbd3f4ddd738554ffa0e5441fa0`

```dockerfile
```

-	Layers:
	-	`sha256:bbbc0923da426d0fa2946095ffbdf9d3261390c8cc918374578fd9b8b6438223`  
		Last Modified: Wed, 05 Aug 2026 03:17:27 GMT  
		Size: 16.7 MB (16739953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12dc2372deec7a656099bf7fe81c4ca11774329f6cfae5c303912bb31a63a30f`  
		Last Modified: Wed, 05 Aug 2026 03:17:26 GMT  
		Size: 10.2 KB (10196 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:dae60ed34d66cf81be353722b12537933f740dc127f3e2ed2fa5a93a358a8cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.8 MB (687786480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26066279fb1c34d8c133a93ccb0dd9dcca9603953963e605795f59d4796a4698`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b9320a18c695ff87891bbf7ae073fdeb592ad724df4f8bc0da77677aabb25a`  
		Last Modified: Wed, 05 Aug 2026 00:47:32 GMT  
		Size: 27.2 MB (27247462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5e781a7147d3d64211bceceae7f6bcb4e044a63925d7f3373a45e2e34c0e8f`  
		Last Modified: Wed, 05 Aug 2026 01:40:21 GMT  
		Size: 78.9 MB (78936602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ac923b7c14f9b319ad5eac44cb7197312bda67ce7ccc5661a6171b7c2293ad`  
		Last Modified: Wed, 05 Aug 2026 02:18:14 GMT  
		Size: 532.2 MB (532202397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e275b53d47642646826828c10ac22ef8c4d010fafea47e5ecef5775419f85989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17074094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0281bde33073c065358af4739eb3ca4426259c84cc07c325d68625ccd468d7fe`

```dockerfile
```

-	Layers:
	-	`sha256:0bd0bed05d7a88de41286761419fa4d095ade5ae6d26613e92b3091dd531db0c`  
		Last Modified: Wed, 05 Aug 2026 02:18:05 GMT  
		Size: 17.1 MB (17063881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1afd16c8f98fe1f1431da39383561782ead9f064cbdaf236453115b54c53386c`  
		Last Modified: Wed, 05 Aug 2026 02:18:04 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9460b02a77d574af1d5c395fa3d9c6d7ca5d43552fe015336cc6c69de1f65bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **791.6 MB (791553489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f1402d1ceb06caeaee9c0ee9ec8b235add23f2077c384c6a767be9da2a3405`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a226658853d2da9859299f4e347f1ad8607e8233b4e92150950a20c490a68074`  
		Last Modified: Wed, 05 Aug 2026 00:47:11 GMT  
		Size: 29.2 MB (29190493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5a71c165757534b94e0fd1afa08fae821f26a1519cda97dc703e36ad506046`  
		Last Modified: Wed, 05 Aug 2026 01:41:29 GMT  
		Size: 82.0 MB (81973231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9f6b34c6316e153609be820ff374f9cdd915299a5c2b387093ee341d335e68`  
		Last Modified: Wed, 05 Aug 2026 02:18:52 GMT  
		Size: 629.7 MB (629687285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6b2dcf28e13df5ebc4cb613c5c709593e06dc738b1f0cb2c8620663b8727122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16934812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1fd0072d63f51b12dd54de7827aa288d8a4f1fec2bf2073699fb4de36b6bc9`

```dockerfile
```

-	Layers:
	-	`sha256:0e872189b5aa97e8644cb717620a53cd2330712e91b58cf9eff6c61faa2b8ebd`  
		Last Modified: Wed, 05 Aug 2026 02:18:41 GMT  
		Size: 16.9 MB (16924701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ce2f8cda9e04626e52b0f1353c40fc88574afc9b1d08d71f5f399f9a26f0cd`  
		Last Modified: Wed, 05 Aug 2026 02:18:40 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:220fce2268015dd4d8adb9074b014449b659e3a037f638b8c2206f540fd14c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671588551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea009089d65550eda94fb30f5b5b589da22a07f94112da4581fd20e89074b29c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:56:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:15:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:12fa46b5cfd5c50def1ed4867be13066aa1179fd67c6b3ba7af2cb4314775c6d`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 54.7 MB (54700885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1002eea87187cf4278a4278606a4747ecddd440afcaefd5fde08990f58675a03`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30229850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40898c0c784f9909f677512656fd9353dde5f7cc4b38478a0da0c43e29b8049`  
		Last Modified: Wed, 05 Aug 2026 08:57:35 GMT  
		Size: 86.6 MB (86620033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec6403943c5c4b13220f29393e40f98172627d01228c5c595a43f60498f06d0`  
		Last Modified: Wed, 05 Aug 2026 11:17:34 GMT  
		Size: 500.0 MB (500037783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6e37c461ceb6da378fccd43cbf373220c0946edbb8627acf2f09460c558cb0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16967350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b5e7ab382f6a8bf1a981d2e13d26969ed23488e002ffd6a56d36b63c57a116`

```dockerfile
```

-	Layers:
	-	`sha256:6d8de65749e37ca9b8eccc833df2847bf143f13377d8d5be409fcd27875050f2`  
		Last Modified: Wed, 05 Aug 2026 11:17:22 GMT  
		Size: 17.0 MB (16957185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd70f3dd18f2676304cb2c2829b98e243af472a57eb62460ad2f1dd2dc46e518`  
		Last Modified: Wed, 05 Aug 2026 11:17:21 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:db6d99755532b324073553a800e3f00cbf49df6b3d817ca8f5bb64d565f51eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1197452780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9dfc1c646cae2e4673dc54a8fd71642df661fcf71f8bd941f5c642a363dc66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1785715200'
# Thu, 06 Aug 2026 19:41:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 12 Aug 2026 00:10:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 03:34:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:935a8b7a8a85e4ad6c94cdecece72a76fe398db60a17bd8385e366db5d8bc5cd`  
		Last Modified: Wed, 05 Aug 2026 00:46:19 GMT  
		Size: 47.5 MB (47475901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e792092511b4086c1cb3fbaa83db0fdbefc878d7717bb3bb1da67c9d283acac1`  
		Last Modified: Thu, 06 Aug 2026 19:42:44 GMT  
		Size: 27.3 MB (27340954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad19e0fb013e8a33e1dac4984d213efbdc23ccc7082c7c9fdd31ff36cb6604a`  
		Last Modified: Wed, 12 Aug 2026 00:14:16 GMT  
		Size: 78.2 MB (78239809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5356db0e4f3a67e5784862ac27dbc6c6fa505abbf677f06564e391131a04c77`  
		Last Modified: Thu, 13 Aug 2026 04:07:51 GMT  
		Size: 1.0 GB (1044396116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a59c16a28c7e7a4b1f48d9c9cd105157142e691eb5346302ef478aa6dbe1ef15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17018498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41f5f431fbdf1e8dd1c8aa69e2cd36186f0aa893531c3328332ac52a6afe46c`

```dockerfile
```

-	Layers:
	-	`sha256:83fae3bd8ee764468c74b8e62467883140974eb0f766578b6873db960bd4c5c1`  
		Last Modified: Thu, 13 Aug 2026 04:05:21 GMT  
		Size: 17.0 MB (17008333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e269233576e211e546b737545fe9a08b9d0f7ea1c2fb233bd1f38a3912c5f521`  
		Last Modified: Thu, 13 Aug 2026 04:05:16 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:54a5f55f980abd5301cc9af7627676a79e157d79bab71f3f457ce72c0c4dd6ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **621.6 MB (621611265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33e6f512c2d589b18baac96c3f56a37248b7c2c8e818279e52ab2cd22e95669`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:07:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:39:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2aa606147644082ade2b9d04128b526910aec7a5edfb0a59cedb03e63172907d`  
		Last Modified: Tue, 04 Aug 2026 23:50:43 GMT  
		Size: 49.1 MB (49121203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09543b66c08f537a211cbaf01ac504c310d3f20a289ef6b4de027e48cbf8f3b5`  
		Last Modified: Wed, 05 Aug 2026 01:08:08 GMT  
		Size: 27.6 MB (27628349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e1f43e6669d7a25e62acabc6b809e73e906f58478767919ed7104e99cfc70b`  
		Last Modified: Wed, 05 Aug 2026 02:03:49 GMT  
		Size: 80.2 MB (80247170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57768c399f08f6b599cb99ae25432e8e2d8dde50951fddbaf62309847a271b`  
		Last Modified: Wed, 05 Aug 2026 02:40:48 GMT  
		Size: 464.6 MB (464614543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dda49c05db1a3d3a42cbf2f387ccef7d208af9dc7385615b7dd0a11903b01e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16771077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5dfc34e291540b06cc9bace7dfbfaf13dcd24b7571ecf6bc49e07e6d3dff97`

```dockerfile
```

-	Layers:
	-	`sha256:028033d1f469bf00a59f8ebb618d615e97b8f932df3be44a51dbee17c156923d`  
		Last Modified: Wed, 05 Aug 2026 02:40:41 GMT  
		Size: 16.8 MB (16760944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b261558bbeaabd87d0b13d96d749b6a89bd656073da4f6f6ed0453c7f9976c9a`  
		Last Modified: Wed, 05 Aug 2026 02:40:40 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
