## `buildpack-deps:bookworm`

```console
$ docker pull buildpack-deps@sha256:27afdce3431be65ba05e2d11beab7c2427379ff95712d8165bd016c159587474
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `buildpack-deps:bookworm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c8e8f3d6e647f782059d933878e9a0de6889cec350149a770d51d1baa245a60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348629009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8928b227d9f896277273fa52850b77012a6fe4925f8d75f6625bf4667e26845d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6a9ffe665b63ea18491fedb646423413ae3fdefcf7776ee25a2eaff8a673e`  
		Last Modified: Tue, 25 Aug 2026 02:17:34 GMT  
		Size: 211.7 MB (211662335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:864c1d8ac7988720d3936b2d980f54443396e7921f345515d838ffe377260e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15881848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d69aff0ed662559394e30462ae6085927d6474a860a2f884f9bf4cbe00d2a3`

```dockerfile
```

-	Layers:
	-	`sha256:fc1fdc39e3640c36e82032de7eed4c6ed0def6b6a3cf9d9414ebe7c160c881fd`  
		Last Modified: Tue, 25 Aug 2026 02:17:30 GMT  
		Size: 15.9 MB (15871659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae2125bba2c540834ed6c11d47e6aeb258da7d739b79d226de9b2b0479de810`  
		Last Modified: Tue, 25 Aug 2026 02:17:29 GMT  
		Size: 10.2 KB (10189 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9a6313a56d72daad19af2c424441d8855cd3f6c9b713d95601b02b7fec4227ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301407544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cb9c75039c391f40ece19a747223f0e19f38e8c40e555db931ce508a2672ac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a5a707a569b0307f2e17db86af2421559f53f4647206901eae8593c6fe2fb2`  
		Last Modified: Tue, 25 Aug 2026 03:14:21 GMT  
		Size: 175.6 MB (175579748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ea1449ba4ae2eb5adb689df5567c83527df88f025b634a4eb73c5c655a0ae973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15684372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9d71c8069457aa497c10d0ce802b0c32fdade6c9095246b2d53fcac901f594`

```dockerfile
```

-	Layers:
	-	`sha256:2a236acca3b88689ce9f29e77f15311f18b9d49b94b1451ef3eb747824383f39`  
		Last Modified: Tue, 25 Aug 2026 03:14:18 GMT  
		Size: 15.7 MB (15674119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daf580388ab79b29c9846acbf2e17afddc9943ddfda4dcf7e6ae28182ae43e9f`  
		Last Modified: Tue, 25 Aug 2026 03:14:17 GMT  
		Size: 10.3 KB (10253 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d2b65563319efe6bcb62e08750efeebf61458946f43f6f26fe62f0c1e293ebad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.7 MB (339702949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53da9d3a7227413cc749b144fd027f42ac447c9c9bfda4e357e569fb0f5a1a95`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9873f9cf3f97d8317bea39be5130389ca496910902e4c4327c227d606b57511d`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 203.2 MB (203190462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:16f838867f257cfa6b7903ee9fb2cf1e15d64fb5cfb0fc83e2409df68dfbcc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15910429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c614e2b48a3e07152da6d1b050e1f554b7bc485a9e8c1d277406f46444b674d5`

```dockerfile
```

-	Layers:
	-	`sha256:18fe8730ab770247f32a062d98227b31878af21a3a2634e1445f00f122d5c179`  
		Last Modified: Tue, 25 Aug 2026 02:17:10 GMT  
		Size: 15.9 MB (15900161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a6276489c4735c90ba95524d0c7c8de437ba3d9c8dc79ccfb223c43bcf2d032`  
		Last Modified: Tue, 25 Aug 2026 02:17:09 GMT  
		Size: 10.3 KB (10268 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:07ff0204d8d24c5234f52f94ea4d14841bcf042e06a197a54a5f5676c1ca0528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351210159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cab56cfc81e946934b7318e3890308f177e3314079557ec077a84de17c60e20`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:17:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bccc271fd741e5cc3ed1753eed6a6dc384881a8e08fe9349c59d8e5d2980fe`  
		Last Modified: Tue, 25 Aug 2026 02:17:49 GMT  
		Size: 210.6 MB (210581947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9495bb33755f3c53957affec20c5f76d2bec2e27f01cc57e1b676c7bcc372c6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15860054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b4b8ac26c700c47b539cc6acba58358550344a8703e74cff9f36c47531ab2d`

```dockerfile
```

-	Layers:
	-	`sha256:19c4e831c603621efee26f94dc696f86fc6656960d3e0fbe2f94a264748f5aee`  
		Last Modified: Tue, 25 Aug 2026 02:17:45 GMT  
		Size: 15.8 MB (15849887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d17f0a75fb704f94753b0d4968f7987a9df55269cec0f8acab1a497d29d41fe`  
		Last Modified: Tue, 25 Aug 2026 02:17:45 GMT  
		Size: 10.2 KB (10167 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e9d64a24a124f40c7589b9cecbef50b7df5f0f2452600df830debfb5b8e5ed29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.6 MB (362638290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca270a21e648c07a78fe67dff99f7124cfab62f4c0f0be11070f97b807b63fde`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9546012095f5835af9399f34fb6731784e64c61cf8a22462e2f59024e39605e5`  
		Last Modified: Tue, 25 Aug 2026 12:38:18 GMT  
		Size: 214.7 MB (214736789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fa03f5444cc9bf40370a579ad184daccb9e1662f459b02720c37a4cd7294238e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b49090cd97124bc185f0c1f78e4f97e39887628edd9c91920e577bfafdf5ff2`

```dockerfile
```

-	Layers:
	-	`sha256:5a8a4e4d9b925c59311f8b9653e432da6cdaefb00f01e3c3d6f441ebc8edb304`  
		Last Modified: Tue, 25 Aug 2026 12:38:14 GMT  
		Size: 15.8 MB (15848162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed7cd0496491c035c09a7929e7d0907c52878dc619a42d8ae329bb34cb24ca7c`  
		Last Modified: Tue, 25 Aug 2026 12:38:13 GMT  
		Size: 10.2 KB (10221 bytes)  
		MIME: application/vnd.in-toto+json
