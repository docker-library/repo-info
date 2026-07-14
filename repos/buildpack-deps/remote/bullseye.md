## `buildpack-deps:bullseye`

```console
$ docker pull buildpack-deps@sha256:56870ae36aa5e7606086b51fd29b1f97ff6d83b301560954a435e06263e56611
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `buildpack-deps:bullseye` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2239101a24a882b3017421ba2ec4971cfe2b4c9f9fd672501ee216942c0b337b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.7 MB (321686862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e832cf635f8b0e611e76665391236dad90f5300d31d018b4ba581bea52bcc760`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5681d8e1155e1bb706091f1a7eebabc55855cdbdb20c01f3851abaef0f290`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 15.8 MB (15790828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3214a37800dcb85308a3ee26895ae746a8913db3cf74dba437915f1e979ed64`  
		Last Modified: Tue, 14 Jul 2026 02:30:03 GMT  
		Size: 54.7 MB (54742908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d3647a94d0365f6fb544030799327410bc1cd3dd529ea61620d05dfad781c8`  
		Last Modified: Tue, 14 Jul 2026 03:18:39 GMT  
		Size: 197.4 MB (197376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:61506c4c95b3f4cebfad502b660d37cbd2e16bc7d3a027147606e085ec692ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15481780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8b6c8d541adf2f5e8c0f59f1243fb946ace091aceca1fb6e8d862b6d0ec1a7`

```dockerfile
```

-	Layers:
	-	`sha256:f84ed1f77f19da3c7316ae843fac59f622677d51902891ab36380ffd684f70e0`  
		Last Modified: Tue, 14 Jul 2026 03:18:36 GMT  
		Size: 15.5 MB (15471585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ada43e836a9cf9cf73d4f459310c5c196fb628cb78d34f7113f7bd240bb461c`  
		Last Modified: Tue, 14 Jul 2026 03:18:35 GMT  
		Size: 10.2 KB (10195 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3ca082b17ba1d2863eda9e48676d3e83f5adb2e637a77f7f30172abfbfc42ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282453990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20100aeaba0afd0775f585bdb90573c352ef107ebf4a18a88fae576c06d8b1e8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:14:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:79f8122bf1fad87c58a2f6b6abc369f6df714bcc40cd08395085726d7a1357a4`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 49.1 MB (49066855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729edf26ef2001255f6a93744a2467482c1d8c2d0cc94c098a71afb3dd3af65a`  
		Last Modified: Tue, 14 Jul 2026 02:29:50 GMT  
		Size: 14.9 MB (14905289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3d3e8b4b8edda5ad2406be24f1948a6aaea76f38cd8c698f40887fd5749332`  
		Last Modified: Tue, 14 Jul 2026 04:15:25 GMT  
		Size: 50.7 MB (50659507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346e1121705da8875fbd537611fb1c612b421c4dc61cda7d3d572d12616c044e`  
		Last Modified: Tue, 14 Jul 2026 05:14:40 GMT  
		Size: 167.8 MB (167822339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2bcd5b4258d5836af04417beeecc6481ff4ba3ab9777b3b07ba15b82763b96a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15281161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7458ac7c4be1f9c1db3033e51febdf27577cbd893de6556898aa923502583a12`

```dockerfile
```

-	Layers:
	-	`sha256:dad0c54b87ca6d589705f913149b07ccb9426079ec78b65bf01c5070328328ae`  
		Last Modified: Tue, 14 Jul 2026 05:14:37 GMT  
		Size: 15.3 MB (15270903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:096c06ccb94feb270a6eb9d45533b2d1ef1b302483fc3aadae37c2f134effd9a`  
		Last Modified: Tue, 14 Jul 2026 05:14:36 GMT  
		Size: 10.3 KB (10258 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ff6b534f191a426fc8303225b43b29bc912af9a68589cb9ebed2524e3cbb40d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313201647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce4068793b5ab4ec3f8cf1b5ec62f7388a55e1e57796da7fd887b9daa66cb60`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8ec33dc561d736c45e9bd0a2160810db1f866ce8bb8fdd35dbb5297f5d4cd2`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 15.8 MB (15774933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62f54371529143bb3cc8355513868c57b4480ed394f322c2f387e2b83d41c6f`  
		Last Modified: Tue, 14 Jul 2026 02:37:04 GMT  
		Size: 54.9 MB (54879548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcfa4bb137297d2b9a50853c3208953c22e89b7cb16b6cfd91ac399e4141b26`  
		Last Modified: Tue, 14 Jul 2026 03:18:32 GMT  
		Size: 190.3 MB (190286276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4d9c3e05c09b0b1ac43424a5eb2cdbbeb986d09085d6ede4ae4c3eb16047038b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d8c94f0ffa266ea7abfb1f1896faf3ba339eeaab3cedc4d5375f030b14d457`

```dockerfile
```

-	Layers:
	-	`sha256:98ba9aedd0b76531d1576fe71ca313c1caee8840b04493c98b820aabeb6442f7`  
		Last Modified: Tue, 14 Jul 2026 03:18:29 GMT  
		Size: 15.5 MB (15473530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dea27cec2959ebab3a814c5d86758e9d0ea6ed4b160490784ddbd9d9f87eb66e`  
		Last Modified: Tue, 14 Jul 2026 03:18:28 GMT  
		Size: 10.3 KB (10275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9eacd3ce626562bedd3b93045124e04de6072c3662aa66bc3eda1649c4ebca6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327317429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f9a0718b11a15e78db8b5c53cb992d759cbbd48f38725bdb0ce79e1a676ad1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63cbf6f5806fb8aa6c69a5959b7d567988ef18fca9270d4385dd0048cf1ef04`  
		Last Modified: Tue, 14 Jul 2026 01:47:41 GMT  
		Size: 16.3 MB (16295690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed14eb3b977d9bba05e944f824145a76a67b16e46cc4e8ab58539219eeca0e1`  
		Last Modified: Tue, 14 Jul 2026 02:36:17 GMT  
		Size: 56.0 MB (56047143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b15cdd835df6124ca339c2896b2886a9067b38b807ad6c615fb9a3730e6c8a6`  
		Last Modified: Tue, 14 Jul 2026 03:18:50 GMT  
		Size: 200.3 MB (200258989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e2e1c98e60b9b4beae5b062f9ce148e6adc7e95724c50cb9d26e774a4d8315fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15469773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49e753f0ca3e91d37f25b183947a1ac47d9422010a5fba200d70c4ddd3be266`

```dockerfile
```

-	Layers:
	-	`sha256:134c92d154167d036de2c65fe9a4017b3d1009cf59849ca80d758512e9c9bc3e`  
		Last Modified: Tue, 14 Jul 2026 03:18:46 GMT  
		Size: 15.5 MB (15459600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6852599b885d0e3c13f75eab3d3eefabdf78b3c2fb3f5b3867a6df8d1c3c427`  
		Last Modified: Tue, 14 Jul 2026 03:18:45 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json
