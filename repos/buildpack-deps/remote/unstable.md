## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:33273114be0df58db35f1602bbde37f3558c08d4d35319190e3326ade581aef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 9
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `buildpack-deps:unstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3acf1df9129fde05b363a9adbc789deb526807de86985e4f2a73b2d60998fae1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350370516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14db01a7137e1b468a497877f776ba882172e9a53da1d6c241dc82bcac9d8d2a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:41 GMT
ADD file:3bae49887734af64f153e9e3668684efface6dd04ba31139b3d6b3aeb7589128 in / 
# Wed, 11 Jan 2023 02:35:41 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:07:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:08:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:09:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0e522725e09a558b80e5d58e7b360150ad3fe901915db5358002bba7e461b9c`  
		Last Modified: Wed, 11 Jan 2023 02:40:40 GMT  
		Size: 49.0 MB (49040747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9982d6c78fdd2a5e480eda90cc33945a46c3a49f844c51993bdb61ea401c22`  
		Last Modified: Wed, 11 Jan 2023 03:14:08 GMT  
		Size: 9.0 MB (9034446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f912e649ff1b5f13cde3e28b1254be9cef3ad6b8f7e119be8bade6ad4a2c301`  
		Last Modified: Wed, 11 Jan 2023 03:14:08 GMT  
		Size: 11.4 MB (11353307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9942953712b60a6fedbbf21c33c852e4772feb6e3f6ddb6b24534105b1eb71b`  
		Last Modified: Wed, 11 Jan 2023 03:14:27 GMT  
		Size: 66.8 MB (66773858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df2ffa750373b9e26d9a753c6fe02a17fa79431d30631511e76d48277eb15d4`  
		Last Modified: Wed, 11 Jan 2023 03:15:04 GMT  
		Size: 214.2 MB (214168158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a840fb044adc4038207ff9bfb8b02e283b9b73caef6c1a798db0218dc2e00f8f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.8 MB (318761276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373a97948f0ed18b017f728c968711a8b91ab4561b8c2e972616fe086a072598`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:48 GMT
ADD file:c258ec7f780b3ff9c8cd584e0032e838b39a09afc46940f4ac745695130b67ed in / 
# Wed, 11 Jan 2023 01:55:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:28:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:28:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:28:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:30:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a63c02841fd8a16e36e06a2fa4539584c2578f39a3f7bd88934a6c67fc294d9e`  
		Last Modified: Wed, 11 Jan 2023 02:01:08 GMT  
		Size: 48.0 MB (48017943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e0852ac4954f884346a0ba77b1c72d65daf0148903acb9a35db7dfad06d432`  
		Last Modified: Wed, 11 Jan 2023 02:34:15 GMT  
		Size: 9.3 MB (9319858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ff229adae1feab6cbc20cbc1815df4cda72e4b5f1550cc783d1ac1878ee67d`  
		Last Modified: Wed, 11 Jan 2023 02:34:15 GMT  
		Size: 11.0 MB (11001378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7403290be4fa0fa503ddc9f9eae749c5b303c64bb932ebeb39756c496335d7`  
		Last Modified: Wed, 11 Jan 2023 02:34:41 GMT  
		Size: 64.3 MB (64302370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252f85b4fe350de579413bd0d63cdcb1d383b1d9a6d454ec1457db258c5cb28c`  
		Last Modified: Wed, 11 Jan 2023 02:35:24 GMT  
		Size: 186.1 MB (186119727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a78a7b837627df4db38793f8d0181f0e040549dc6e4edb755f27bc1d5f39c0d2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304692508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc33551ab0eb55441d921f5f965e93453e92e5c85b08f5f202bafda85bfb4a73`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:01:58 GMT
ADD file:45e9dcffe5e042927af8c1ae4e6393b33fda2a9ad194140450689e4f039e0e20 in / 
# Wed, 11 Jan 2023 04:02:00 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:36:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:36:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 04:37:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:38:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b5f9150f24704ac05df76d4317fa7947141130d434993eb229642f2806e580c9`  
		Last Modified: Wed, 11 Jan 2023 04:09:46 GMT  
		Size: 45.8 MB (45836631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76dd86f667638a0d24fc7caca6a13df077a2ca83ca774f180a73ae3b21239d4`  
		Last Modified: Wed, 11 Jan 2023 04:46:26 GMT  
		Size: 8.1 MB (8136164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483384d04259c74f6b246f5f72d9b7808cb4db037464d9e35959767481be012a`  
		Last Modified: Wed, 11 Jan 2023 04:46:26 GMT  
		Size: 10.6 MB (10634278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980241b1cfba59a6c47c3ea7bb3119be7fb88222d2df0a39849915d3aa1c5433`  
		Last Modified: Wed, 11 Jan 2023 04:46:52 GMT  
		Size: 61.8 MB (61814954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2545e34639fbfb4a4b4e5804a6927055341562c3929a14265c62311239a67`  
		Last Modified: Wed, 11 Jan 2023 04:47:32 GMT  
		Size: 178.3 MB (178270481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:50b7fd5911554c1206341318b67e1b3c9034cbd629cb63d4972e6657ea8fce41
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.4 MB (341438996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3355d8e93462cefae33aeb94e2611445e2d327c3554bf24cb86e7ad457a812`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:58:15 GMT
ADD file:b780242785904e4fb27dec85c00f7e10bcc0dbb0d7006b133d9038c4328c7d83 in / 
# Wed, 11 Jan 2023 02:58:16 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:27:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:27:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:28:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:57ec0bfa7127b6c459b1b1f099459b850b4fa150e388b2c3ba10105c4a746caf`  
		Last Modified: Wed, 11 Jan 2023 03:02:47 GMT  
		Size: 49.1 MB (49084551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c81a30877f5e4b6157288cf3088552f011edc6c7b1f1ad0e931c54a99121d57`  
		Last Modified: Wed, 11 Jan 2023 03:33:22 GMT  
		Size: 8.9 MB (8866992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dbcce22354f1f070c2b60f5cdce7ed07210c870842c8951379f29693c8191b`  
		Last Modified: Wed, 11 Jan 2023 03:33:22 GMT  
		Size: 11.3 MB (11318694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30d1aaf113c1bf91979898a6dd4f6f41ea7891a0036461ebcc8059012f48d2c`  
		Last Modified: Wed, 11 Jan 2023 03:33:39 GMT  
		Size: 66.6 MB (66631237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a599b712762a55c85bb2f6c283b0659866c23c3c22cfeb0c3a5dc0b4f5da65`  
		Last Modified: Wed, 11 Jan 2023 03:34:08 GMT  
		Size: 205.5 MB (205537522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0785bab3a5aa2bd79e0a527b4dab4ab82de5f5235836feb1203f9b31c1e98f19
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (353025451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b6b592e886291a390f2ebd9d1eae1dfbb81e47fc4787f3b197993a25d149a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:17:15 GMT
ADD file:70daac43e15ae08f49ca2f191e46f20fb9df90f6fa25b199b61103e75ae43d16 in / 
# Wed, 11 Jan 2023 03:17:16 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:50:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:50:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:50:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:51:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:19edd03a92bb4010fb5a10c8cc739c02db9ae484e4e25247ce4b7e0977cf1e9d`  
		Last Modified: Wed, 11 Jan 2023 03:23:48 GMT  
		Size: 50.1 MB (50082487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cabc838a5a608c7c069930064fc921b2d9d4876490abf6fb0f2167b38bd8a8`  
		Last Modified: Wed, 11 Jan 2023 03:56:53 GMT  
		Size: 9.2 MB (9213611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdadd8b2dc92af1b4e9d2450c4417d3496f769af427b8ef28ebfa4ba33e8f68`  
		Last Modified: Wed, 11 Jan 2023 03:56:54 GMT  
		Size: 11.6 MB (11555911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9e0e97faa793e8728f55a366d0d75d05d3b76a5f1cedc63dbdc662e459e736`  
		Last Modified: Wed, 11 Jan 2023 03:57:17 GMT  
		Size: 68.7 MB (68745125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fef25cdb14157dda03a044c20e6b087988030fb0b108d01fba38efa4a6124`  
		Last Modified: Wed, 11 Jan 2023 03:57:56 GMT  
		Size: 213.4 MB (213428317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:75845fcaf8e2e69825719b3e0a2312dae833283ceae9802364d68203c9c1df45
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.2 MB (326207724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65bbecb27db84021cec38edc2e4a91744ad49d50fe1abd76bdf1f10ff6cae024`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:35:05 GMT
ADD file:a772415cec37230670450044a3962179f53657814c9c0e8bc6ef502ab4fff614 in / 
# Wed, 11 Jan 2023 16:35:12 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:30:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:31:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:33:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:39:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8fe537e863349284188081cc926e1cbc3d1d09a758c86969580374a79f6a9a0`  
		Last Modified: Wed, 11 Jan 2023 16:44:00 GMT  
		Size: 49.0 MB (49043063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d22c89d2231b986e2d8e07b29039b4077a44f2ed6aac30212a0adc292871a`  
		Last Modified: Wed, 11 Jan 2023 17:46:11 GMT  
		Size: 8.4 MB (8400802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bf98ffebf3705900ffc4ce2bc2ee4d9f6f919564fdc57406d4df67e95f4b87`  
		Last Modified: Wed, 11 Jan 2023 17:46:12 GMT  
		Size: 11.1 MB (11104051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10eb2bd84dd13d143069e2a30d3ef34051906e3536c1f3ffba3448d9277fcc9`  
		Last Modified: Wed, 11 Jan 2023 17:47:06 GMT  
		Size: 65.6 MB (65570435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cffba47c62f991bd7f8c03e857f42f27661d7cd13e52f520cc21999020b0b8d`  
		Last Modified: Wed, 11 Jan 2023 17:49:18 GMT  
		Size: 192.1 MB (192089373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ad6b4f885b56d405b8fe4fc1c6a4bbced83bc52a189b2711bff89c62db68eb06
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363917496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31371d3e146e1560121238aad224365ab4ca2ce8b46140f3e3b010e731ffbde2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:50 GMT
ADD file:a8a466b916dd8b82163da9263cfb32eb757c2a0eb173228a5ac8ef05bdc55653 in / 
# Wed, 11 Jan 2023 03:49:53 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:17:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:18:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 07:18:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:20:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:35c8c29d2bf600cd3a311b3649ac4076a0670c35cc296f1f28d2622bb6dd54d4`  
		Last Modified: Wed, 11 Jan 2023 03:56:03 GMT  
		Size: 53.1 MB (53077709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab0d63135d44be3ecac38d5206687b79632de571e5c05f58c0a49d13d4dd332`  
		Last Modified: Wed, 11 Jan 2023 07:27:41 GMT  
		Size: 9.6 MB (9615481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b2df2d7c9512f9de0ee08a692413dcbdbf53d56bc49fda25fae6cba32ce022`  
		Last Modified: Wed, 11 Jan 2023 07:27:41 GMT  
		Size: 12.1 MB (12115501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f811c7b48263d45bec77d7173793763f8b118007064bd7f81a3184c8353898`  
		Last Modified: Wed, 11 Jan 2023 07:28:11 GMT  
		Size: 72.5 MB (72484748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3b6ed280d6d158e3250f44578128ace82669067b9e8824ff6cede629ffbf48`  
		Last Modified: Wed, 11 Jan 2023 07:29:11 GMT  
		Size: 216.6 MB (216624057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:3a887968fe43226ca614e3bdfba591197b3593e08bde65a9a38a179bf5715812
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.9 MB (359929860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0617997a465ac3f99d967a05d654c18e959edee32e325b2b1dc07db26768495`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Oct 2022 00:39:40 GMT
ADD file:cff1e1a432929527e9bb64bde53e2b614c941bd4631b7bd3634fdda8a7240455 in / 
# Wed, 05 Oct 2022 00:39:43 GMT
CMD ["bash"]
# Wed, 05 Oct 2022 02:26:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2022 02:27:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Oct 2022 02:31:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2022 02:40:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9cc6da93595cf4d9d589de999765cc4f1efa5e0d8e23ca6dd8b73b18afdc8189`  
		Last Modified: Wed, 05 Oct 2022 00:57:59 GMT  
		Size: 48.9 MB (48857821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554ce58712f86101a4716baede25ee43c9c1fc550b39fb4b3e5fa1622fd3b00b`  
		Last Modified: Wed, 05 Oct 2022 03:30:22 GMT  
		Size: 8.4 MB (8388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd132871253f925889ef836099addcf830644843a64a1529bddc510390846a9b`  
		Last Modified: Wed, 05 Oct 2022 03:30:22 GMT  
		Size: 10.8 MB (10750715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bfc76b3f6f1ba447e697e6e2190cf70e757458cce81446b79426ae4cccdb03`  
		Last Modified: Wed, 05 Oct 2022 03:33:00 GMT  
		Size: 54.0 MB (54018661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e7099a4ad88bc20a780df4c500b9445dc2cb39e8ac84d70a11e8903e5b6448`  
		Last Modified: Wed, 05 Oct 2022 03:40:39 GMT  
		Size: 237.9 MB (237914651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:811456f6f8f3fdb2e2666090c359507355dda46d5c7d6caaba1308849d37e4ad
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321240137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13c144378748abc3653fcb3708a7a858efe62f59a32fd504597f581257930d8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:39 GMT
ADD file:603b8f38f314737d8b96d7fa7c31b4c6ede8fec5c46d30621085354a718b7cf6 in / 
# Wed, 11 Jan 2023 02:22:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:50:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:50:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:50:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:51:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:63d179f68a4d4f8c050f7c24ec5c73831d75b928d359ddbbf2e658360463fd13`  
		Last Modified: Wed, 11 Jan 2023 02:27:08 GMT  
		Size: 47.4 MB (47434084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8ad9595a7cc2a79974880bde3167e302536eaeca227adc959cfa976ef5c29a`  
		Last Modified: Wed, 11 Jan 2023 02:57:32 GMT  
		Size: 8.7 MB (8665726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53049c87c88bc24602f77d08379e056c3032ef773e4e1b619f0f1b543464ab90`  
		Last Modified: Wed, 11 Jan 2023 02:57:32 GMT  
		Size: 11.2 MB (11215593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d89c9e3a6a24225c1c417a81836eb27f4ad90582e405c1d436b19bf180c2661`  
		Last Modified: Wed, 11 Jan 2023 02:57:48 GMT  
		Size: 65.7 MB (65731898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9acd1848c937aeb2e77308f8f545fe1be9f939d6037b49911320ae88eb1d68f`  
		Last Modified: Wed, 11 Jan 2023 02:58:16 GMT  
		Size: 188.2 MB (188192836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
