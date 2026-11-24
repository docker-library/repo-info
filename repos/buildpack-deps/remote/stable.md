## `buildpack-deps:stable`

```console
$ docker pull buildpack-deps@sha256:086433f3c4cca3435eba355f585f55d593751a35c865745d88ce97e7258e3fc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `buildpack-deps:stable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7264bb2533764439bc61d1502ac3e67872426d6c25810c0df5cd74a4bf28a3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.3 MB (380262639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53edd64c1b508e4f9cc3b76ee278419739aee1bcb2db0ef1d650acd31f3ec8ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807982f6af4fc03f2d394347e6e9bcaab579df144f168742316271ff8f226ac1`  
		Last Modified: Tue, 24 Nov 2026 06:16:16 GMT  
		Size: 237.4 MB (237383741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:378735492f71eb273a9976bc2788af988b8f74d38247b93e3c073f2d3bd1e53a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17215509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45f0bcc6f2c5b40fde94d85a4a2583989f057aaff34951836b7462e05fe90df`

```dockerfile
```

-	Layers:
	-	`sha256:88ead3d486bc9f3986fb0e037233ad454317eff8821e257b5fa695cd8306a40d`  
		Last Modified: Tue, 24 Nov 2026 06:16:11 GMT  
		Size: 17.2 MB (17205047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:591d4554e88e4817fa5c16f6fffee9ec1814fcbcf205425aa589f6c6cef500f5`  
		Last Modified: Tue, 24 Nov 2026 06:16:11 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:98717e4f44e4c2f84236bc184e9041eac5aa3b1666374fdaa1c57283732c8655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.3 MB (344261610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89dbe857765eff31836a112a16c126b1a8aa6c830f21254aa504e3828094e5d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:00:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:39:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29a87ca490077f54b80c22054cab3bf32cf8e3c1fe5cce03a29c695ed2cd8a0`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 24.4 MB (24384767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630eff185c5ed60bf7d671d520e5010b1dd0f6386af977440cfdbddbc7aef680`  
		Last Modified: Tue, 24 Nov 2026 06:01:09 GMT  
		Size: 65.4 MB (65351288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b67cb992eca834ffc9b46a9322ff7f6b3a1c2895a7ab6bb208c93d145b8a431`  
		Last Modified: Tue, 24 Nov 2026 06:40:28 GMT  
		Size: 207.0 MB (206954737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:71f294ec3be10ddfdec5b0fb9eed85c6fd11d42daef08daed3d21e5fe7a37f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16977780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9dcc750b9f22da7456a5234f2f91d530035822a169468d052b5bce8e4b817b`

```dockerfile
```

-	Layers:
	-	`sha256:ba57c932f387d1f0c1b0dddfcf46fbd6fe01186ee2d0bfb400127fb855ec136d`  
		Last Modified: Tue, 24 Nov 2026 06:40:24 GMT  
		Size: 17.0 MB (16967246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f662f4b7ea93ece3932ed6f3a27c4bcdb22b88ab64fec091c772cf64bd25613`  
		Last Modified: Tue, 24 Nov 2026 06:40:24 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:396a4978ba19f2a80ef93fb239a2781ec98c882a44b9d1d3afb0ac776032b43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326720385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bfd66ee6520d6a94979d544ea81caec938a5752c65b7366e1eba20ded3d4cd2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8301dea1564c32e919589729d3a99d246c0e513c2f4ce53d05c49a87fcba793e`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 62.8 MB (62752711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b1394821b4d3d6b469d4bf4867a64611feb51a34ff2b83100a6e9b81cd89f5`  
		Last Modified: Tue, 24 Nov 2026 07:14:05 GMT  
		Size: 194.5 MB (194471400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fee70e359abb0e1708ad3071816a0255dbed9683a96550703a1116d1b4e5fa8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16983572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0e935a7f7474c53637f37e362bf1da23e89f47ad6cde1f9e1e2429a0580477`

```dockerfile
```

-	Layers:
	-	`sha256:e81794faeff4975fe5755811672957df9f6c7d6897a41d2bebe6e85bf8194cad`  
		Last Modified: Tue, 24 Nov 2026 07:14:01 GMT  
		Size: 17.0 MB (16973038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90329e446a9139c7d346e9c0248c61771354fa84c2361eb7a3e67c2d62f10787`  
		Last Modified: Tue, 24 Nov 2026 07:14:00 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2f325a62316b056f5e6c4cd503b4d6a69822e1db94cc4096b1371c563b498fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369829403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d576772b3cacdb07cecd0d2e2ca7f07a850a7ae65767512dc917ede9eee9ce25`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0906044c4c05ec5672de8a303b188542bc9036eda76195f44ad5786c7bc7239`  
		Last Modified: Tue, 24 Nov 2026 06:14:49 GMT  
		Size: 227.4 MB (227379443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b205d7c5c2eb87d2ced035f789d8494bbbf52ea67849290723e683a4b3528a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17299258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54bcc65c54354e5dff0e9ba4678866e28f45e74ce9b38707de09516bb025b8e`

```dockerfile
```

-	Layers:
	-	`sha256:8361ff72a07562a1f45c2d429e28c893436e0d78fcd793f06ab2fefbc2eb8e60`  
		Last Modified: Tue, 24 Nov 2026 06:14:45 GMT  
		Size: 17.3 MB (17288705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d8fee375243048d9bb143e619bcd97e3c735c6c45708a92b8bccf581f6954c2`  
		Last Modified: Tue, 24 Nov 2026 06:14:44 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:cbd507fc369f42ede9f287240d5c9f94bea1532c6feff5bc82d3b478776ff1a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.1 MB (389101654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c039bebf0f107b1ccc0e044d7bce24e61a706c2eb811dde99c4cd3e6976e94d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad941d6d2e360c11be5bab67f076a725561b77784d7d2677f094938e20cc0c5`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 26.8 MB (26810342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57f569e4512c64e1bfa4a948ff7d606bc67eb9529e900abeea67665fe98f04b`  
		Last Modified: Tue, 24 Nov 2026 05:25:20 GMT  
		Size: 69.9 MB (69857338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f440e35123eeb506442b41eb92c3382ae77889bc4582d445c76e15cec5ab3508`  
		Last Modified: Tue, 24 Nov 2026 06:16:44 GMT  
		Size: 241.5 MB (241508529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:122fe752d9cd938fd637f4dca139edc163608800268e7660d85de5712c280f97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17185094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfb7f08e282a6c51a918317d48b587d902f460faeca38c834e22ded3261829f`

```dockerfile
```

-	Layers:
	-	`sha256:b3724be8645be945a5a9e46ac14709edba867360df331430f976e25ae260cfab`  
		Last Modified: Tue, 24 Nov 2026 06:16:39 GMT  
		Size: 17.2 MB (17174659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:620878bfd54d303ee079ab82132a95a35d48717701657169c93081c346c9dfdc`  
		Last Modified: Tue, 24 Nov 2026 06:16:38 GMT  
		Size: 10.4 KB (10435 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:837dd626176c1eebb2c15447c186a6cdeec180d534fbdb0ede9e95a426a23fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.8 MB (385844180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297377daea4560b7014f439a23de7f8bcb815367ae82d231b697f500a352c67c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:04:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 17:00:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f511b5b325c69d6a4a96a572a778958b1386314d7c6a837c0a1d614395b62b`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 27.0 MB (27042631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0c5e858e334a1201fd045983093765bfba0cfd88b8f8f40614e0937845326`  
		Last Modified: Tue, 24 Nov 2026 14:05:39 GMT  
		Size: 73.1 MB (73087385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1e3b88165192c8347e0b315b856284c7c6fb2d4f816aa44e68b8c9552567f7`  
		Last Modified: Tue, 24 Nov 2026 17:02:05 GMT  
		Size: 232.5 MB (232484319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aa0969cd8bf05e153bf542dc76607d91d3f8169079e730007511455d852bd4fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17201059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af00ad31b56748fa64b8d5985669352bb2d4288e76c662ed856d1d1223c7463`

```dockerfile
```

-	Layers:
	-	`sha256:02ff476b3ff61a282d5296d527f8ac4f907f7350b0ec6a172c3c01efeae142a2`  
		Last Modified: Tue, 24 Nov 2026 17:02:00 GMT  
		Size: 17.2 MB (17190559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d116e00576071de54cf2b05fcadd21bbc33a3ca3d38e04002a0c0a54665a97`  
		Last Modified: Tue, 24 Nov 2026 17:01:59 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:40b5c369903defe20b5cf643bfb5737974b26d01680462acd609112dbc40158a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.8 MB (463844067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b6e28cfd8e36b87127659693a1da289c88de280228dec2ea5a451728600cf5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 11 Nov 2026 23:37:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade036d64c0c99f2d487c5a27ab433f753f97769aba4a090e4546c2c49751ffc`  
		Last Modified: Wed, 11 Nov 2026 23:54:07 GMT  
		Size: 324.3 MB (324265996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9f2e21dbb5f1ca4da64d7979e9e6e0516a943c123ba7e66b70ba6ab38cfbbfbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17271586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194f4691b17747420061f89436b00a47404c053ac3026c982ac691e80786dc03`

```dockerfile
```

-	Layers:
	-	`sha256:1fc75b2eb31d68df391274a8397d88de3f5edd17b7e42827037f22381687baab`  
		Last Modified: Wed, 11 Nov 2026 23:53:22 GMT  
		Size: 17.3 MB (17261086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:071320d54425fdbd4f626f9096e06f9b6941cccd7f84614406e9958c043c47e8`  
		Last Modified: Wed, 11 Nov 2026 23:53:17 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1fdf28eef09594f3b4f885464bb10af7c3af55a0984837ed9f1027e5f907058f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352754922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe947e687c4461593b93c0eddd4778c758ac1209b30e138f8036f1e4aeb00fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3f4ce2bcba42a9f49e1dce7fbd9adaa01993b467a604f99739eb8a2c8ef380`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 26.8 MB (26829608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882c152e55bcff64f0d4b9871cc103b5a85e1de8b9ff0bc0015cf9263213ba7`  
		Last Modified: Tue, 24 Nov 2026 05:42:22 GMT  
		Size: 68.7 MB (68663169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2d1bd9b9ba1ea6690f7f3cd97dc9044d5cc8da41ad14a6715985201049144e`  
		Last Modified: Tue, 24 Nov 2026 06:15:05 GMT  
		Size: 207.8 MB (207779453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f6b341424284005c53cff40a6af5c70cab5c82675082c57be36a68624ae4c047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16992740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45c4876f14fef3547732b0ca2ff71244ff76c4e61f928c4a24ae49cdce0cf73`

```dockerfile
```

-	Layers:
	-	`sha256:5c6405d9b033322e72853f4733bdbb19ce1f7e7a049c8a45fac4223094cffb09`  
		Last Modified: Tue, 24 Nov 2026 06:15:02 GMT  
		Size: 17.0 MB (16982279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:499d2a43c4fd9d72d742147e0203e38e2f580b09b48cd655b6540000dd18dfba`  
		Last Modified: Tue, 24 Nov 2026 06:15:02 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json
