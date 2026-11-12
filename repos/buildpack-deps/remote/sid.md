## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:e182b70e880ec7894be75f0b20a1a2182a74b1774643f22fd6f81b66cee3e37e
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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f684e1c0903d19c7356a9ac695ef707f8ffe970f859f8e6584732e0a6752a367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308257180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7ee09bbebcc63f61c274b8ff146708eb1b56d911e2b6b49e60dbd76e2b61f9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:23:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:613d25b7667af2a220f573c279bf82bbef55bc5c774950c59eebaa05fbd97bf5`  
		Last Modified: Thu, 05 Nov 2026 06:16:26 GMT  
		Size: 46.7 MB (46655893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4327113c2aad6720902fc85ab305e9fcb11a5f664c179906ff07ae22dc74ba17`  
		Last Modified: Thu, 05 Nov 2026 08:18:38 GMT  
		Size: 25.6 MB (25647151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c4217ce319f342cb9c2c25c16a8988b7f863e4197b0b51d1ba37d42191a17d`  
		Last Modified: Thu, 05 Nov 2026 09:24:09 GMT  
		Size: 74.6 MB (74624714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cb9aec06d788c5d993e69a5a9f3c2b17141d270603876232b3889fb4525a1f`  
		Last Modified: Thu, 05 Nov 2026 10:13:21 GMT  
		Size: 161.3 MB (161329422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cd56ac2aba416e0c7063f104482534dd284faadf863e32157732e4f06324c878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16662245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb875a4e6fb5dc53810c72c54d551a484f7b5401118bbc18071dced10249b368`

```dockerfile
```

-	Layers:
	-	`sha256:06d856f4964e905b28d50d19038042ab1b93f8a13d3fb664ef4ceb7ae77a18f8`  
		Last Modified: Thu, 05 Nov 2026 10:13:18 GMT  
		Size: 16.7 MB (16652048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b9f450750b004b8dff771d60360a792728ded71a17ef7120464e7e72c91f11d`  
		Last Modified: Thu, 05 Nov 2026 10:13:17 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm64 variant v8

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; 386

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:02e1d305eefa77f478b6392de91cdfd7530b4e94a88e096a69d20b2b954a7078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.9 MB (374865151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5def9d3ba38d59d0dfdf35bdb27b03aece0060c3f67981e4b8afeb8099793ff7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 10:09:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:27:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:50:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:71727a7c52ae923ce7dcf0437407248a4f42af9d7dfda02dd727e04556f7305f`  
		Last Modified: Thu, 05 Nov 2026 06:16:13 GMT  
		Size: 55.3 MB (55318193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2dbbb8da0cb60b0bcbd35289c935d149c1d915be3db7cfa0de4fb889d48f4`  
		Last Modified: Thu, 05 Nov 2026 10:09:27 GMT  
		Size: 30.5 MB (30532223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56be3ec8fc6effdc3a394c9fb9648de5e41eefcd89613529051034c76b478fd`  
		Last Modified: Thu, 05 Nov 2026 17:27:58 GMT  
		Size: 87.2 MB (87221100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacbe3066a0fdeb0c7cba2fe8658b88f6b1fe89b777fd90be7f06f055068f4b4`  
		Last Modified: Thu, 05 Nov 2026 20:51:48 GMT  
		Size: 201.8 MB (201793635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:27d454d3b28eafad840a0f156b06d878a3fac8e93987a6c4f18b3041df7a9e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16879435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce287deb61c08f10a8b17ab9984d99371be2f03405f64a331ca310589e075f5b`

```dockerfile
```

-	Layers:
	-	`sha256:55c0d16f1f2b0d7a558cf5ae4dab6213e9168997e69075907dbbe7e1d9bd9ec3`  
		Last Modified: Thu, 05 Nov 2026 20:51:44 GMT  
		Size: 16.9 MB (16869270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:506374efa3fbe920c4263ba3a7e2de88116c23cb9e66fc7a0f168f93db3a0581`  
		Last Modified: Thu, 05 Nov 2026 20:51:43 GMT  
		Size: 10.2 KB (10165 bytes)  
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
$ docker pull buildpack-deps@sha256:9f0646c5e052d9564cb8957eee325e1648d0043a679b6a52a980e36f589e4ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339388052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620a9a55c08350eca37ba0f80e5295c1ae36718b6db91650c9eb79d68af5750a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fab4dd3bb1bfe9c82bed80a75831816c076eda870f6bc87ec816275770723c7b`  
		Last Modified: Thu, 05 Nov 2026 06:14:57 GMT  
		Size: 49.7 MB (49744159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab1241173c07fe656a4c10a3409d581ee67ce12f0b7a5dc712ad0cacafaeefa`  
		Last Modified: Thu, 05 Nov 2026 07:57:26 GMT  
		Size: 27.8 MB (27762158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b44d3ac68e56433e1c289400be12fd06235936fe3fe25e51301695cf2e6387f`  
		Last Modified: Thu, 05 Nov 2026 08:49:15 GMT  
		Size: 81.1 MB (81056144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6775525f5cf324b5ee8c0d1384dde5894cd090c700f7c646eee5db32bd34b044`  
		Last Modified: Thu, 05 Nov 2026 09:21:52 GMT  
		Size: 180.8 MB (180825591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fba02113f8153061a3746b4209b49c9c5f0f0f32ea7a08ea700211e924519001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16682307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37d1f248b11696c05dc1948de7c04257ea6f8491eec623cf2a7b12a2412d36e`

```dockerfile
```

-	Layers:
	-	`sha256:6d146ee4ed96923f890eb20ee9aa2baa062c778e471737fdf074cfb2a04f1c2c`  
		Last Modified: Thu, 05 Nov 2026 09:21:49 GMT  
		Size: 16.7 MB (16672174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670ff0ab3f777a35437307ea617f8d38517356d71b82a6c656767687860c1a81`  
		Last Modified: Thu, 05 Nov 2026 09:21:49 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json
