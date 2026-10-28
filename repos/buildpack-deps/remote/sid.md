## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:a11d10a49910375ff00753e820ddc18be1d0f00f390ed54c6cde7aea0bba0b05
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
$ docker pull buildpack-deps@sha256:a9ac6d14be64e6ca04cf8ec93dc9b340ad6e914b27f8aef8cc0c500f5d681446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369579902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0a82a67b55d97ef62ed642287047ddef5756ef6f7351dd43c5ff3b22d52806`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:39:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884f7d59e0f8c4374d204fc3699caf5eaffaa450cb2e287fb612afb10b919b64`  
		Last Modified: Wed, 28 Oct 2026 01:39:58 GMT  
		Size: 28.4 MB (28426836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059f163b87e5c0ec76df5e2f3e586f5109d7e09af56a91205f90c04bb882290f`  
		Last Modified: Wed, 28 Oct 2026 02:23:59 GMT  
		Size: 81.2 MB (81205692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431b6dfdfdd18a9d3af402ed0690f1aa3a66f6f9835f65a2ef6bf1c669822ef1`  
		Last Modified: Wed, 28 Oct 2026 03:16:04 GMT  
		Size: 210.1 MB (210124425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dafd4422e7c006f469f157dc77eb5e3e0580256cc1e663a1fb31e6f1f4beb388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16873097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5b5f6a0a070b9699a88dd2f6bd85eab08426398dea415410a8bf8a1ff2c894`

```dockerfile
```

-	Layers:
	-	`sha256:c6d5470a3ad7a050b4d7c2154b75cc1f2baa3ecb5610b234fe710bfce2514a88`  
		Last Modified: Wed, 28 Oct 2026 03:16:00 GMT  
		Size: 16.9 MB (16862964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0821ccfba08a9d244daab96c49396cd3b1ca4b0083f2e060287a8661355d4fcc`  
		Last Modified: Wed, 28 Oct 2026 03:15:59 GMT  
		Size: 10.1 KB (10133 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; arm variant v7

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c681abcf7f77af70201bc0d1b2f11ae0e775911381958f27f8ccbf1c9cec2ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.4 MB (354395148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1817ea719fcd06cf9a0fa369f3766578ab12fb0c4fe1d614dbada18e36d2f495`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:16:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26000dc41a1c54f7e37df3ed2559cbdd938d3e840049d2fa8e784530215c9230`  
		Last Modified: Wed, 28 Oct 2026 01:43:26 GMT  
		Size: 27.4 MB (27368863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a631551ffe898213f271b65134be8dfd9e4a7e387db2f9f740ee6408fface2c4`  
		Last Modified: Wed, 28 Oct 2026 02:35:17 GMT  
		Size: 79.6 MB (79552745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957b6b9747a4911ecc4fcd1fc8df8c62dec08aa04a46561c4e58b2ceb96b2a77`  
		Last Modified: Wed, 28 Oct 2026 03:17:19 GMT  
		Size: 198.3 MB (198304325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c93fc5eaca088e84468391ed4712b28edc25d2a17a6e848af22a142a5187c81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16979496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cb2f16b23a09d68d3400cff165a0c1ef09efb490bcc51a16bfc83da95c095c`

```dockerfile
```

-	Layers:
	-	`sha256:febb2aabc6b7d59ae03966c179ccd212d00ff44c67c51e3699f60cd5c5965267`  
		Last Modified: Wed, 28 Oct 2026 03:17:15 GMT  
		Size: 17.0 MB (16969283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19249eaf72056edf25c742011433b6544f2c984fd773060aa7f075cad4a43152`  
		Last Modified: Wed, 28 Oct 2026 03:17:15 GMT  
		Size: 10.2 KB (10213 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b617c9392c99c4e0b22ccf46f3a0d3ceca0faaa3f18ba3d960b09b1a58b12495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375484212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac77868b49d117b8fffa6e7172c72136c76ad4ce69546042ad71cf107db89999`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c05bcd3efef8b271823eac41b290f90667d600094b5262f2b9e60ea8a734b3`  
		Last Modified: Wed, 28 Oct 2026 01:43:04 GMT  
		Size: 29.6 MB (29588136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3b7e2ec802fba2089a54a65c8f267d62e86f4d76c1cf2a2cb1a916e0a5dd65`  
		Last Modified: Wed, 28 Oct 2026 02:28:48 GMT  
		Size: 83.1 MB (83070603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8c1da2562a1b72eaeae2ec1521d59038c854486e8077342d572eb568281404`  
		Last Modified: Wed, 28 Oct 2026 03:16:12 GMT  
		Size: 211.9 MB (211874184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f8872aa57e9b6d7d7f03bf62e485f9af1acdeac6010d85e40d9ae64b5ff8fca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16842119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d9b2a83e031af66a01fb699938806ad77c1a4daa6164edbc1e7f713b7b9a8d`

```dockerfile
```

-	Layers:
	-	`sha256:97a5d259a7439dcc60163106efa1d859421b4f43d9acd55d58912af872fd6935`  
		Last Modified: Wed, 28 Oct 2026 03:16:09 GMT  
		Size: 16.8 MB (16832008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:853cf17fb5f11b6d830102769593e7b53b407cd64159d6099fa610a811b90207`  
		Last Modified: Wed, 28 Oct 2026 03:16:08 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; ppc64le

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

### `buildpack-deps:sid` - unknown; unknown

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

### `buildpack-deps:sid` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:b2cc17c0ec1d80bfb3c800209330c9981c6e5ffa11da1456163b52afab56885f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.9 MB (509910560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f237dd809fac7ca445e5a3e8fe129ec2eb63d210602087fb5bf5f676135b5b9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1792531975'
# Thu, 22 Oct 2026 05:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:57:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 19:26:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:29af863f47901f0573d3798e2d1e207aa2429f06d14b2d1c48747fc578d89be6`  
		Last Modified: Tue, 20 Oct 2026 23:35:20 GMT  
		Size: 47.2 MB (47229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7950d5578fe85c450babdcea1474b50a7b9919ee831d6cae6b5afdba749683`  
		Last Modified: Thu, 22 Oct 2026 05:12:58 GMT  
		Size: 27.6 MB (27580769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a916a6b8ec734128e62813052874a990d39d5aff71a5f5dccc1dd8fa14789716`  
		Last Modified: Sat, 24 Oct 2026 04:01:45 GMT  
		Size: 78.0 MB (78002551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9021211bcd791b79d87e2be5ff54f2c1e29be3c22218d70161e4592c12f19f32`  
		Last Modified: Mon, 26 Oct 2026 19:45:07 GMT  
		Size: 357.1 MB (357097491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:19c85a568d6433907aebe74e22ab1eeeb0f00edeb38455d25a152b20782f5b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16937652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b24d51eddd9a82165cc0da71a6941374ad778e891bcc075878a6b1968a1181bd`

```dockerfile
```

-	Layers:
	-	`sha256:f45bc33538cddf7b226d0bc37632a64f249e32f8a7d9ad6616c14566819de2fb`  
		Last Modified: Mon, 26 Oct 2026 19:44:18 GMT  
		Size: 16.9 MB (16927487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a83e7efae8edf8c79fa7cd43daa2da4897e75d0a5ff8e97f93b46c422ba6f1d`  
		Last Modified: Mon, 26 Oct 2026 19:44:13 GMT  
		Size: 10.2 KB (10165 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid` - linux; s390x

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

### `buildpack-deps:sid` - unknown; unknown

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
