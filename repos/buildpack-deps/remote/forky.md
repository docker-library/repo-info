## `buildpack-deps:forky`

```console
$ docker pull buildpack-deps@sha256:40f9965e334f0c1ee4e5ee9ba92965cb30a0ad5f2304ae09ae62d2b2ed8d49a9
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
$ docker pull buildpack-deps@sha256:fa73cdd2921ec8a349b69e51e30c9d85549aa9b336664389ea2775597859c734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.5 MB (368484264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0355c6951ada4b4fd7b2c8d1f1cfe15920de429e7dffaca799bc29d1053db6d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:46:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48a2909741e311cf0ce7afcff0c4a557e9dfc7e2db7d533fbea455c53021047`  
		Last Modified: Wed, 21 Oct 2026 00:46:17 GMT  
		Size: 28.5 MB (28511595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622fecac6e48da244674c88f7943a11297ed427e8a9e7df5625cffad8b7947f9`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 80.4 MB (80361316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af95bfc35c963bab86756fc8d9648d0ff634daf7c020d972977fe0ecd6a337b`  
		Last Modified: Wed, 21 Oct 2026 02:17:19 GMT  
		Size: 209.8 MB (209797018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:da3b856cf77100102a41749def4625467d20beb94bd0513d2a1971f9306d2b8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16892390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ea0d66137e347c4de128f2b1451f68191b18706685aea202d2b67f711cb0df`

```dockerfile
```

-	Layers:
	-	`sha256:a4387b4659b84c51155ac0ca1ea56caeb0bf966bbe6d5de9f9dd1fa4d6208ae5`  
		Last Modified: Wed, 21 Oct 2026 02:17:15 GMT  
		Size: 16.9 MB (16882245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c2484a8fa2b670245940bbb7a56057740b2abe39a96e111890b0bf836c64b51`  
		Last Modified: Wed, 21 Oct 2026 02:17:14 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c55d106828f0e70b1fc8b48896327e2699a1378cd6bb21fe3811a2fe9b16a2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306613583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cf3d1555249391de89aff50dfb03e2e6030af0ceb5227d98e423055d36ec68`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 01:29:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2b392fd5f07f5ac3cc7f94fe6fea253d8373fff52e6f33a7f4c7991028e3c990`  
		Last Modified: Tue, 20 Oct 2026 23:30:17 GMT  
		Size: 46.0 MB (46004148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea395aedcb65392ccd5e084d6140b57248cf74d14a3af87f8500db3ad2dd3ea7`  
		Last Modified: Wed, 21 Oct 2026 01:29:15 GMT  
		Size: 25.6 MB (25596760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8cb3e79133eb14be1e125a0595f25260b7f3bfc24a59d03739640dbfe0352bc`  
		Last Modified: Wed, 21 Oct 2026 02:48:52 GMT  
		Size: 73.9 MB (73852357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4920f6ec6036566bb45a7b73e140396d11cd5a0d8a02914800723aeafb7ffd37`  
		Last Modified: Wed, 21 Oct 2026 03:14:52 GMT  
		Size: 161.2 MB (161160318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6772b58bf18b21ae704d796f6e57795e4a88e5a091855256e200f88889e94e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16677597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2abd1ac466337866c9e658ae86fa2ea7a66df9a7fbb4e4fafa0cc64c205a1f87`

```dockerfile
```

-	Layers:
	-	`sha256:2b50b8b05b779d14196dc98660520cbf000769966f155bd3b6641d3ac3c326c8`  
		Last Modified: Wed, 21 Oct 2026 03:14:49 GMT  
		Size: 16.7 MB (16667389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd90c833d64bbbe6bf57183987b96b338c2195d9b7b00bd05ea8dc17575e3d7`  
		Last Modified: Wed, 21 Oct 2026 03:14:48 GMT  
		Size: 10.2 KB (10208 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:536bf31ca44b4e779a866c70028eef7093e9b1271d8b46904734d83472602944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353457800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bbce24cf423c438d25638cd23447f07a45f318772d9a90f0f7a8f60f2a34bd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550fdf21a4adc852253d7b2705e811e8361138dc148c930f266d52d8b12546e3`  
		Last Modified: Wed, 21 Oct 2026 00:49:51 GMT  
		Size: 27.4 MB (27431193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b3484d31b32a98dd63aaef2e590a531813d2b82272d568d3b3cbdd9cb9c16f`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 78.7 MB (78744683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da342c9b1f4d612d1a72d14312aa05c32aaf2b2fa57d27c7de8ad6dac7177a6`  
		Last Modified: Wed, 21 Oct 2026 02:17:25 GMT  
		Size: 198.1 MB (198139475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:31529036aa88005fbd22b36113d9c5a0b0e1f4f4cfa1fc976ebf2f2c90efb5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c487226f79b5a6033ce9524b0c47b6262586af540bf531db4bf2f81b209af4`

```dockerfile
```

-	Layers:
	-	`sha256:5f1794179b3042c10ef89966d5803022ca3d8d949ed72d889d2d2d717b6b225a`  
		Last Modified: Wed, 21 Oct 2026 02:17:20 GMT  
		Size: 17.0 MB (16989204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ea1fc4ed1a4efcf2417dda01d1ee6b8f8bf4c09faef1ab19963d700734b1dc1`  
		Last Modified: Wed, 21 Oct 2026 02:17:19 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; 386

```console
$ docker pull buildpack-deps@sha256:beda55534a5f483c393483d1b1dcdf4a4d1b758c6068265950e67deb481bb8d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.3 MB (374331080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8a438286af5301e2b674b2ed109b6ea1ac44ef1921fe1e502ff07437595051`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:48:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a82d12bb7ac6591825acca7b46cb1bf53a45a71b72bdafbeffec867fb8981dad`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 50.9 MB (50934347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd43726af5936a5f1928036813d115245d1041ee25b63b0653391c676145f78d`  
		Last Modified: Wed, 21 Oct 2026 00:48:38 GMT  
		Size: 29.6 MB (29639765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178e42d3c828d569020dda1e73acc379160bd4cf528726a6ce2618268e6cf646`  
		Last Modified: Wed, 21 Oct 2026 01:24:36 GMT  
		Size: 82.2 MB (82180516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616c0685a3845edd7dcb30106bf4a446fee4f9638452b32b22227ea2311a8462`  
		Last Modified: Wed, 21 Oct 2026 02:17:32 GMT  
		Size: 211.6 MB (211576452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a4204279bbe9d4ad651579d8c93e14ae2a52c320991c81ae50801e287182c00f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16861412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633b1ebd117f74b0d7cf7c475fc2176c5ac98f79265493215ccd5af076390edd`

```dockerfile
```

-	Layers:
	-	`sha256:adeb11cec69dad57cd85993229054c4121653b73895bc80b18d09ff8e33b0756`  
		Last Modified: Wed, 21 Oct 2026 02:17:27 GMT  
		Size: 16.9 MB (16851289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f729749a6e0a057607870b7e5f576b2c0df1ea5ff77e527643ac6dd47370b9f5`  
		Last Modified: Wed, 21 Oct 2026 02:17:27 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:436a9f4fee44d1ff4336f6db831c0bf6a493f3da1bc9590172e340a9c4464085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372924136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50705f2882175b4883b47af1da1383031c76f6401b37288acccd92463c89bfd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 04:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:04:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:27:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7563a816b2fdbaba742be8a6a1b6e59423cab6e5ab5f29d804cd7dabee35741b`  
		Last Modified: Tue, 20 Oct 2026 23:31:51 GMT  
		Size: 54.5 MB (54501625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baee4bad0395e17c4baa7c07b335302e6b2ffd492495b2f16305e31b1b517d46`  
		Last Modified: Wed, 21 Oct 2026 04:21:42 GMT  
		Size: 30.5 MB (30516124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6024c34bb400799f6ce0f1cf2b933a77d05b5276cee3a0a65e070b97a43b80`  
		Last Modified: Wed, 21 Oct 2026 12:05:07 GMT  
		Size: 86.2 MB (86233976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c2ab364d291f6ae0a6b6276cf67b871c416f11647c75f797c0c48affd39698`  
		Last Modified: Wed, 21 Oct 2026 15:30:02 GMT  
		Size: 201.7 MB (201672411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f80d21f272e3370e2af8723dffc4120da90fb9d5a72892618350afa755765c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167e3e951f5fda42a28af8f433f73f905706d591629ec9660f2f630564f7014e`

```dockerfile
```

-	Layers:
	-	`sha256:c115cb69b7d911c5fa6e442cd5c0966903804e979bd524e442343e5a34ff462b`  
		Last Modified: Wed, 21 Oct 2026 15:29:58 GMT  
		Size: 16.9 MB (16884609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36bad28d93fd73a63db701055bde26a98107c7d031790301eae9e2dfc2dfbdbc`  
		Last Modified: Wed, 21 Oct 2026 15:29:57 GMT  
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
$ docker pull buildpack-deps@sha256:42c26a87527744c4aa2a9c38e470221b147baf777794d86a9e36e4f9c197972d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.5 MB (337546005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96de5590964eb6a49b82296b6490c702c0bee61daa0c45ea287b12667d469f31`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 01:09:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:25:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9cae28ecaf50579691c9c86615c8c483a4effc3bfb6a1813d6dbe1e36528a31c`  
		Last Modified: Tue, 20 Oct 2026 23:29:15 GMT  
		Size: 48.9 MB (48912053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd63e277f96e809fcb85e7de282f52c51ae9e1d2cc78924e1abaf6d1deebe3d4`  
		Last Modified: Wed, 21 Oct 2026 01:09:45 GMT  
		Size: 27.8 MB (27807169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc75b13eda1f81727b4549189c00035b103fc790731581e9bebff1ac9ad2c34`  
		Last Modified: Wed, 21 Oct 2026 01:56:30 GMT  
		Size: 80.2 MB (80186436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24ff07e70422161ed861c483122cb30f54f77b7f0a670416c3fdb38221ec326`  
		Last Modified: Wed, 21 Oct 2026 02:26:07 GMT  
		Size: 180.6 MB (180640347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a2893899702a5786c387bfb878c3a91ae0f3aec9f8015f8f1058de74bfce8006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16697664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90be2ca89cf950a410901256f32b132fb9afea4f32fbab506ce46b4192bf049b`

```dockerfile
```

-	Layers:
	-	`sha256:d56fb4844ba039679ae1f1e419fbe5a0ae83dbcc9d7be40207e3d96533e61ed2`  
		Last Modified: Wed, 21 Oct 2026 02:26:04 GMT  
		Size: 16.7 MB (16687519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac220428bc29d72df1c69225afe440d16a05a84a8ec36d077ed725c57672d06`  
		Last Modified: Wed, 21 Oct 2026 02:26:03 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
