## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:5c96626dd0bff3053bb91ab5d661e7a571f3da0b2d8391d677783386251ab17c
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

### `buildpack-deps:unstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:377eeb09af4e36d81314e4f6be3129b99ff5fcd1edb428519bb424ab0aac67ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.7 MB (370735677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70036cdd9028598f81476e7869edcf2c998ab51fa010c94ab8c4c7cd232e7cdc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:38:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4273df8690da95456a1a9afee73682592f8aec24169da4f16e634c55be6fc3a`  
		Last Modified: Thu, 05 Nov 2026 07:38:30 GMT  
		Size: 28.5 MB (28484938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db8361de0af8cd5896057a31444db94278ae0ea1181c6b7c56584d5c0405734`  
		Last Modified: Thu, 05 Nov 2026 08:32:08 GMT  
		Size: 81.3 MB (81275365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:962dc7b020a5743dffbcf4f4d222744271c5a095fa9008388c45df004e2bfd26`  
		Last Modified: Thu, 05 Nov 2026 08:54:15 GMT  
		Size: 210.2 MB (210248615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b010365bb58a6f029251acec9e707873529c92971bc1a57fd34ea92a40bb422d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16877058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73195a89ee063b0f4e090042629e827c4d528746c4b5ab55df18991556fbacd6`

```dockerfile
```

-	Layers:
	-	`sha256:beeffcd15caecc94c88719ec7a7b2a40b253f20129f3a304d500acfc9d518f7d`  
		Last Modified: Thu, 05 Nov 2026 08:54:10 GMT  
		Size: 16.9 MB (16866925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c64c292a546ce8d0a33a2a6ea586bd433453c9a9fc31416140531a59009cd53`  
		Last Modified: Thu, 05 Nov 2026 08:54:09 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2f113757388e097b1642ef740c7cf6a0db83313f9011e7cdc33fae8f8cf63ba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307544389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45eb57fb519c703c0d2a5bec5a411573dd3c888d8fa63bd06d72a594528d7c1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:13:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4f8c8c9832ba5ab44b1cb736fe733a2663fb538ecc67b64e0a78250794d28137`  
		Last Modified: Wed, 28 Oct 2026 00:10:52 GMT  
		Size: 46.0 MB (46006728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbdac6a50e441fddec66db56e671f3bd4b0bd332067e055f6b30571ca7534ae`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 25.6 MB (25631085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3807fcb52ced060599928200bf3683ffee06ef8c781e0f98ca59102f36dbec00`  
		Last Modified: Wed, 28 Oct 2026 03:47:41 GMT  
		Size: 74.6 MB (74605378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9215a7b793e041816c18bd07e583bc09837305aae2b122cdd752e4a320b4de0`  
		Last Modified: Wed, 28 Oct 2026 04:13:48 GMT  
		Size: 161.3 MB (161301198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:34b20f0c4effca424164eb795247ce60c841ebe4f2ccd2bc908afec4f2b3c4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16658278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8ec51a6e0e5fdff030207736ae17f461e75dc919724ad01e110b3cfa4d9097`

```dockerfile
```

-	Layers:
	-	`sha256:415f3ad5f22abfd7c2c46299db25586361480fd3fc1b51ec05eff8083d698bf1`  
		Last Modified: Wed, 28 Oct 2026 04:13:45 GMT  
		Size: 16.6 MB (16648081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09681b37f5aa5a719848486be719e083baa91ef397afedde4f51e3f8e4dd812b`  
		Last Modified: Wed, 28 Oct 2026 04:13:45 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4313c912536299abde3852c45f6745347a20ae3a881360543723abadca428852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.2 MB (355154429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2b16e9290a9e7281be1c03bb26cdce52a6a5186c1e466664792f977e57e945`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d97bf474429e52e6150d13d3b5e082a8df5e1ab3276ef938597c5478ad75e6b`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27387460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f31c402eef4e66431bb0f37d2f146833316e8b196fa8cc9faf3471893109c60`  
		Last Modified: Thu, 05 Nov 2026 08:29:36 GMT  
		Size: 79.6 MB (79555507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cab2aa64e742bcb8c802ec03e18803c656d2916b9a584731f2028b6d20d0efa`  
		Last Modified: Thu, 05 Nov 2026 08:54:59 GMT  
		Size: 198.3 MB (198344999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e2e11bc7236b6af1eddaaf3aac2bdc959be0fd35fcaa2c2022f75d77d2c08405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16983459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db52999964af8e7cc4fe28caad51955500f95ba052c0ee1860a015dcbeec4b3`

```dockerfile
```

-	Layers:
	-	`sha256:cdb031987b616455a78c6e6658baabb47ad2d9afc537c88ad34cb78c01365568`  
		Last Modified: Thu, 05 Nov 2026 08:54:56 GMT  
		Size: 17.0 MB (16973246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d94d23e7de55e56eebfee0299b5dafc7012c270436704aec5fc3f4c92cc0fb17`  
		Last Modified: Thu, 05 Nov 2026 08:54:55 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f5a2bab55be8bef8e376840fbdab8d5dec71887eef9e9a0be196c00fd3c02f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.6 MB (376563234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bad6187a5b54eee5e7c98dad9e7f587f0637c92954ea39f5aa384efd64cdb4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32022506408b6385b68a95a3d7ccc48745ae3095167986e3061e179ec815c332`  
		Last Modified: Thu, 05 Nov 2026 07:41:32 GMT  
		Size: 29.6 MB (29633135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbf3d94faa2719fcf4f0f05b909c6ae9229db895c4177874447113a2d92927`  
		Last Modified: Thu, 05 Nov 2026 08:24:50 GMT  
		Size: 83.1 MB (83083144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca1fa1e74f11412bcdc7dd59e2f3f82a678b521f9a331e0f267dd2e2b801c51`  
		Last Modified: Thu, 05 Nov 2026 08:48:24 GMT  
		Size: 212.1 MB (212058626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:be14a128a63b9e28f54e93fe893f0119618edaf13ea00bd5bf4ae8c192912be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16846078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548571eea8f8a5452d165d4f4a7839ba55c9bee976beadff1389d5ee7b5e9696`

```dockerfile
```

-	Layers:
	-	`sha256:9e3afd75d02c3c3ee5b40ce76638fa7bf0178ce08a5fb4fc94019b9fd3c78d70`  
		Last Modified: Thu, 05 Nov 2026 08:48:20 GMT  
		Size: 16.8 MB (16835967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b12685006ca244bcc344de012564351063a156b6328a1f063f53d1fbdcc8b4e4`  
		Last Modified: Thu, 05 Nov 2026 08:48:19 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d12cf31183e9a615ce58bf6c4c01443081d55b9500b392e50be45f9a38cb0470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.0 MB (374007464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7b1e23224ee36373467db3e3c6bff765974ed257a18ea9cc5c56fdfec46d6f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 04:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:56:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:04:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8e851d2604e88e5c6735eb86dfbb8fcb0e9aeacbdb9899452d64a5249204f79a`  
		Last Modified: Wed, 28 Oct 2026 00:22:29 GMT  
		Size: 54.5 MB (54510378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718051fc13a59ccb94708b59f2848851167c5d68f0214c82f820a7624cbc1ec0`  
		Last Modified: Wed, 28 Oct 2026 04:20:10 GMT  
		Size: 30.5 MB (30517348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ade1c546c014cc82ef16fd52bfa9c7c5f1ccd4808bc920406bd89ab8b9b170`  
		Last Modified: Wed, 28 Oct 2026 11:57:27 GMT  
		Size: 87.2 MB (87210128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef36ddebc730065ddc85d1b90654742d129316ac40d4a0d74237fef4a5f579`  
		Last Modified: Wed, 28 Oct 2026 15:06:11 GMT  
		Size: 201.8 MB (201769610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5c3835ea119140bd58bec9e90abeb0d7b0b1e156eb1ba19cf2321c66999b45cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16875464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5265f2513b50bcc8afdac23ad9de135b2390dc6c869b4f7109311df0adca38d9`

```dockerfile
```

-	Layers:
	-	`sha256:2ea0dc472cd7eecf26aff33c82649debad9bc46a4ff79b8677679d7896891457`  
		Last Modified: Wed, 28 Oct 2026 15:06:07 GMT  
		Size: 16.9 MB (16865299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f90938d0cc8001a5263d3ab571135453555cf08570c0b978991a1ca65568c3e`  
		Last Modified: Wed, 28 Oct 2026 15:06:06 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:f1e134b733a7776c02b9992215f0a9a5c65b18957773d3a1a6baf5a2b6ecbaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **513.0 MB (512998253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d60b9280695f5fee4cb1debe0ccd82fdfabdfe6e0fdef14bf5089efab198942`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1793059200'
# Sun, 01 Nov 2026 11:18:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:37:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 04 Nov 2026 16:19:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:87eacb97def82a2d6fda0c59baaa7e20f9b437d682e32d16d1da3f4c076fc672`  
		Last Modified: Wed, 28 Oct 2026 18:25:23 GMT  
		Size: 47.3 MB (47253173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccde0825030b10a0ef2507b430836b91c953ff3b552a30a5e10f46e110dd377`  
		Last Modified: Sun, 01 Nov 2026 11:19:57 GMT  
		Size: 27.5 MB (27501817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6072c8a0e4141a352bfddd48efd07f1a2fae1ae7a4aa758667e737755aecd4a`  
		Last Modified: Tue, 03 Nov 2026 07:41:22 GMT  
		Size: 78.6 MB (78645917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0c5932f09f95abff5549d19b5239f451102def3c3b4d9708d9d3c0dbec6b68`  
		Last Modified: Wed, 04 Nov 2026 16:37:20 GMT  
		Size: 359.6 MB (359597346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1f87a925f7ae034e195e5f9aa5c0d5b8aa8ad9d9d704e3ec4a9c03adaf6df1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16944294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c085c845ef4af4c328f89f9443c6daa62aee62640baf3205a8e9f9fc47f3518`

```dockerfile
```

-	Layers:
	-	`sha256:435f430a49c18d6415c60b81baea3335c29fdf8a2621dcc81f8b97d7e2634f6c`  
		Last Modified: Wed, 04 Nov 2026 16:36:30 GMT  
		Size: 16.9 MB (16934129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fcbeb645ba73fdfbddb0208148d2e65808cb87b42ba9eb9f08b6df358778cc1`  
		Last Modified: Wed, 04 Nov 2026 16:36:25 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c6a1450bb23b7710415dbbd75cdbb555e9772771f787d6bf3af45fe43f88decb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.4 MB (338429359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61efb283ec2b8857c32b2bc0f292e6ac2d5ba886e91fea572b99e197e545112`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:11:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:20:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ed2e8a0473ac3a9d40de716965fd5725a2e604829974db4e80a8ab39edd09cc0`  
		Last Modified: Wed, 28 Oct 2026 00:09:50 GMT  
		Size: 48.9 MB (48926863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f3b22601efff56e082964d2265a7213df35e5e4c10ed288576c2612a3f0f9c`  
		Last Modified: Wed, 28 Oct 2026 02:42:48 GMT  
		Size: 27.7 MB (27748313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d47c30ad42a435716f775aad462b4b3d75ba20ae920754cd7950b272028c6a`  
		Last Modified: Wed, 28 Oct 2026 04:11:40 GMT  
		Size: 81.0 MB (80994140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f769d56ebf98aea038ea4b5d3d2f148c2200e7464c698ec81b8ae4b53281a7e`  
		Last Modified: Wed, 28 Oct 2026 05:21:41 GMT  
		Size: 180.8 MB (180760043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ccf968c852a25745c476c4a46189f6f6056ddea12ccc6ebae59dca7946f26b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16678347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731dd2df47e48d015ad7621d6a0229cf1f88aedfdbad0f91f5314a37f700a45b`

```dockerfile
```

-	Layers:
	-	`sha256:308876bbde85df0f7ed3dc465e7d456a9b7b8fa7a8556fd57bf3095005ccb021`  
		Last Modified: Wed, 28 Oct 2026 05:21:38 GMT  
		Size: 16.7 MB (16668215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eb9c17d1854528c6c514073500c4f87ada782d7b4d10fe384cc6de42ebec1df`  
		Last Modified: Wed, 28 Oct 2026 05:21:36 GMT  
		Size: 10.1 KB (10132 bytes)  
		MIME: application/vnd.in-toto+json
