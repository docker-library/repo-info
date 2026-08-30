## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:1ade40b62edd8c614852c306e2bafa868b3c5510e37522178e6cfa0878f3399b
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
$ docker pull buildpack-deps@sha256:8fd59265609a803a369934361f3def9bd1890ebbde114483e331597f1237713f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360579975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f646c37549214d4e35efda2cd21746867b8f628bfe4b4b139b99d08342995149`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:50:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:18:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bd8d43e7ed1119cc0fb577edd0e8dbc8a8a2076a9517859aed9b78d6cbda98`  
		Last Modified: Tue, 25 Aug 2026 00:51:02 GMT  
		Size: 28.2 MB (28175566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04a0e0fd36aabec9fd5dfc92c06624bcd9096e31ecb8e64dac469059ad47b98`  
		Last Modified: Tue, 25 Aug 2026 01:38:49 GMT  
		Size: 81.9 MB (81854099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5c1e2fc854e8504b24aa5372b2e85dc8600c368d435a71278fb973b327ee19`  
		Last Modified: Tue, 25 Aug 2026 02:19:39 GMT  
		Size: 200.9 MB (200864795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2eef608455a1ff96ac3c2e3e84f82ef5d5d775b57b63574c97417f16a9cac0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16952365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695777f116024280dceeda1dcb6fdcf382bef580fe190ef556f05ab795446cda`

```dockerfile
```

-	Layers:
	-	`sha256:b55d8f35b301b8fd17ad86d5fe707a2da1808c9effbd14618b052415fe18df64`  
		Last Modified: Tue, 25 Aug 2026 02:19:35 GMT  
		Size: 16.9 MB (16942220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52fc7e9e1abfdc72610888a0683b6770cfbea69be59017c25a8bbc0b8976e79a`  
		Last Modified: Tue, 25 Aug 2026 02:19:34 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3a5f415a9eb781d10652b48e930a2c64d8fa0069482c44e771e025717151143d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.6 MB (304603610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400671aea02ebbecf44be705458e895e7724b0f9ceefaa1270fda272b6058f77`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 01:32:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:16:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:478451078f487a859e53e54198fefbd515ce0a5752509069c8373fea4adc6f73`  
		Last Modified: Mon, 24 Aug 2026 23:20:33 GMT  
		Size: 46.4 MB (46382990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b2eb524e40175582fd4bcda78ec14a907c808cabc5a51d6a86d81fc6f66659`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 25.4 MB (25408628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7b73410659b17beeb63a8da2470d5b9458c1aa3787fad2338e0a784680fd32`  
		Last Modified: Tue, 25 Aug 2026 02:37:17 GMT  
		Size: 75.9 MB (75860011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df19d271539b220d280f7a774ef6c9c45bdc5c1302ca50bd8f626b72b53fdd7`  
		Last Modified: Tue, 25 Aug 2026 03:16:33 GMT  
		Size: 157.0 MB (156951981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:31b46a7593c1904c2fe87b89f3dce8920dbdd3728e1fc51e19e83ebacaa23b7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16735115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5582cf81557e5a93565dc2a0cb429dbfd3d958e97cd5675e82d9a40d6db0a9c6`

```dockerfile
```

-	Layers:
	-	`sha256:5c43f3ccfdded79b54085952ccf24054fb7e3028d62af496ddd1695591652904`  
		Last Modified: Tue, 25 Aug 2026 03:16:30 GMT  
		Size: 16.7 MB (16724906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfafffc307ed376612088ff89862e2f70754fbbd7fe1c74aa7e9bb52b61cce82`  
		Last Modified: Tue, 25 Aug 2026 03:16:29 GMT  
		Size: 10.2 KB (10209 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1c2b63fda2b816e8f0dd6f85394c711aa4512f0e39170746582b7d90bc117e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.7 MB (347679194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385a3bbd1e50ff4ffa7df84f3be8089adc4161c3d0e3a5251ba374bbb5f9c09b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a702c6fb3fd4756e63ac2330b9f8bba04992304d9055ee5f69bbfce2c342b3`  
		Last Modified: Tue, 25 Aug 2026 00:53:18 GMT  
		Size: 27.2 MB (27208778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db10cfa9e422bc47bdd17ba69e6117cd826435e5c375cc3a775ded896eff608`  
		Last Modified: Tue, 25 Aug 2026 01:43:35 GMT  
		Size: 80.9 MB (80898092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e80af5a93157e9e40539266423fecd1ec9cc7a4ef9a5fb784bb6f3795df6ccb`  
		Last Modified: Tue, 25 Aug 2026 02:20:15 GMT  
		Size: 190.1 MB (190068405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ae08273ec2b8724d7de38ffd9d577a167406517054c000366cdb31f4b1691931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17056748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c64fbb86987ab289ed51ab04000cb92df192959c2f4f6a1f604335cabd97dd7a`

```dockerfile
```

-	Layers:
	-	`sha256:cde2e4935dc84d151f1fb5253c41708736e9d4ed71bb1e7ce17fef98a800aa97`  
		Last Modified: Tue, 25 Aug 2026 02:20:11 GMT  
		Size: 17.0 MB (17046523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8da1b7e92581c2f0f3e5045917d22ba960c482218fee70c3cf1ae59df451d7`  
		Last Modified: Tue, 25 Aug 2026 02:20:11 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:84fb6b5bb5b7e6c746f24afc647e514951fba6dcde936891d570189bd480ffa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.2 MB (368190789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781a661600fb894f0386b945e9eff54134be863336507e75ebb884ebc22576ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:50:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afac29dcac6d57fcdf320a960605fc95022f24439598d52a6707708ed54ba65f`  
		Last Modified: Tue, 25 Aug 2026 00:51:04 GMT  
		Size: 29.3 MB (29281605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c6276b18d8ba8297f28ef70a46946e31dbbcc9096ec915e15297c30127946b`  
		Last Modified: Tue, 25 Aug 2026 01:42:47 GMT  
		Size: 84.1 MB (84094746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6044541d6ce2a142bea7f508e92defbefb303778ec53042ffdaa7593543563`  
		Last Modified: Tue, 25 Aug 2026 02:17:42 GMT  
		Size: 203.9 MB (203923276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0da9325e2902ad5699b2033ad64e7b5c0e3a8fb82c37a475fa855495b9021814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16922226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e5206b45212671d45ed3f9f4026744387d344586459ae446b3d83b91cd3b06`

```dockerfile
```

-	Layers:
	-	`sha256:1539d42fc1cdb37e801f552069832972dac0b9834a37156e2a23ec0c30f56426`  
		Last Modified: Tue, 25 Aug 2026 02:17:38 GMT  
		Size: 16.9 MB (16912103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32e48d9b189d2ee87f7c00725b9ee194ff09bc9f9b7fae70cc1cb3b0e1352f29`  
		Last Modified: Tue, 25 Aug 2026 02:17:37 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ea1150f9c43478c66cb3c49ab665cba9cc9c20b4b993f759a6e409f037bc8848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.0 MB (368004637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09431c08fbc2eb25b8b648d6062170761df4c131af17681d4a7f58bb85a070e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 03:36:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:47:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:37:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c7ecd50aeb6375d3d0c7120423d98e9beb1310a2c03f9fe165066e2287c041a0`  
		Last Modified: Mon, 24 Aug 2026 23:19:44 GMT  
		Size: 54.8 MB (54795070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ef2fd685cc834ec77ecaefa9d4d2ded6cc2a812e515ecf4f038047e90cf914`  
		Last Modified: Tue, 25 Aug 2026 03:37:11 GMT  
		Size: 30.1 MB (30129017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ee727eca24b23417c421bd785e408d58288e1c1a300e6a6d72869146f148cd`  
		Last Modified: Tue, 25 Aug 2026 09:48:58 GMT  
		Size: 88.7 MB (88680047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0d867ce3a8d1a4828985904c992c4b8f6ed38d7b001d4e40cabb3f0b51e160`  
		Last Modified: Tue, 25 Aug 2026 12:39:12 GMT  
		Size: 194.4 MB (194400503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f431a6a0293a81576a3e7a86d4b7fac28b15eed91a5ef3bf7657380f3541bdfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16952335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986e70ab49154705145f001a38c9c0fec401dff9efd46d8c95ab665581c33caa`

```dockerfile
```

-	Layers:
	-	`sha256:fda2b4e1fbbf8091fe9efb290aa78743a5c71019f4a98b47864a90d51502b632`  
		Last Modified: Tue, 25 Aug 2026 12:39:08 GMT  
		Size: 16.9 MB (16942158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63b0a31292c5288ccd44a3ddf1c7e5318a0b220fb8e01a1b057e90c9203d9a92`  
		Last Modified: Tue, 25 Aug 2026 12:39:07 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:6ae2e3628ba839c6aec5da7c742eca466a79750a8f307a58b379b9972687bde7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.8 MB (487770598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36ee514232128e3750308a96388be727c13c7ddb3f5dd35136187df8a271d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1787529600'
# Thu, 27 Aug 2026 00:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:37:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 12:27:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:317347724f0611ba03877e1eee8b21c4ddf58f85ee0ca414fa59f47dec32c320`  
		Last Modified: Mon, 24 Aug 2026 23:22:21 GMT  
		Size: 47.6 MB (47566939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253230d95d702f8845d5d679ec180622069de8bad3dec9a6982542793adebe41`  
		Last Modified: Thu, 27 Aug 2026 00:18:10 GMT  
		Size: 27.4 MB (27405396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73a5fe07ad3b7d755b0d1bb76e877ff67bd606f6696a6dbc0eba9359aa58d9e`  
		Last Modified: Sat, 29 Aug 2026 04:41:05 GMT  
		Size: 80.2 MB (80189574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba91566cf183a4d0dd6370c9c5cc15ac7f3a37ca85919b0e8322427ead4c4ae`  
		Last Modified: Sun, 30 Aug 2026 12:43:51 GMT  
		Size: 332.6 MB (332608689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9b85224a2eb218ddb67f3695e3e247c4bb7abbf776eb2c7360ef1edbff066526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17021254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef3b8c4c654418c0fb2e6dec0dbe6d0b233224f3b76bacea703e37ccaff0e17`

```dockerfile
```

-	Layers:
	-	`sha256:0521a98e71a0a82353d5745b84d6b37eac94e931077b24b6fc3813002ef7eafb`  
		Last Modified: Sun, 30 Aug 2026 12:43:04 GMT  
		Size: 17.0 MB (17011077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1c8973fce9c8c358a791b81297f5cf284fb50db7dfeb009a601c208912433da`  
		Last Modified: Sun, 30 Aug 2026 12:42:59 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5f2df8ab7947d8e676ea33aaa597e9cbba2c635f8b86bc7824c8d0c0f6ca72c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.3 MB (333288709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f46dae441bf9d99776b48f60f080f08ad6d91dd35e89bcc70a2a4a98c7bfcbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 01:24:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:89aa4da0330231a8a129dbe1eded1750d074f8b5beae07f864cb9d5b9ce64feb`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 49.2 MB (49244053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1f67637999394f5ae66879fedfb4c975d0875fdc0f60458ceebf524c12d8c`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 27.6 MB (27597400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021053092f86e8185d8a8dfcd3cd6c3c65b5685cbdbb45612b0d27736956d0a5`  
		Last Modified: Tue, 25 Aug 2026 02:52:40 GMT  
		Size: 82.5 MB (82477634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14077753f5e077ca956ed30c7114440c3d87c773e06faf4e5d2d80a6f7a3f45`  
		Last Modified: Tue, 25 Aug 2026 03:13:56 GMT  
		Size: 174.0 MB (173969622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:943966438b8c2e447088b99a2bbba5632705ee01807da326dbe3058044b59949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16755221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b014cc7cbb37cc936ba5cba49cb08bcb8c28bf4211c6f7f2d5d5618a90ad7fa1`

```dockerfile
```

-	Layers:
	-	`sha256:6508f7d59a4cf3dc6f8ce339d2e77d6d325301491ebdb5729736a3aa7262bf60`  
		Last Modified: Tue, 25 Aug 2026 03:13:54 GMT  
		Size: 16.7 MB (16745076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90e9e65757c32c5e42401d4d5826d06d650525ebe948086d0696a90b17f2534c`  
		Last Modified: Tue, 25 Aug 2026 03:13:53 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
