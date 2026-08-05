## `buildpack-deps:bullseye`

```console
$ docker pull buildpack-deps@sha256:af5caec5fc4dcbdd8ad3bd306073b1f0e7bb6ddbef0fdf4b97c449252df8f114
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
$ docker pull buildpack-deps@sha256:f24b53b07293da512ade1a9765bbec222257a936f986457c7e643a839f4413cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.7 MB (321706633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ab2c1848e7219472e62d2779a7fc9408aaef713ed85f8538eb9603e4a81f93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d7359387d3fa9038e8bf44abbc955fd847f0ed595392167fcb6d374b1e30a`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 15.8 MB (15790899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0a3e14e2bc3edab26279efc9f99cea6cf0836afea309df0f22368b3636c12a`  
		Last Modified: Wed, 05 Aug 2026 01:33:09 GMT  
		Size: 54.7 MB (54743062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88923925ca8ddd26ef18f1d112e6c67c4f60b5600d788bcece91c26d2b26b472`  
		Last Modified: Wed, 05 Aug 2026 02:17:27 GMT  
		Size: 197.4 MB (197395653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:82fa3fa5a5c3281862fd53add844e6d2f4e7b37fdb89edda38041dd947d55a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15481780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e05721f7bbd00b8a86f14052e7a5a001ddfa4a7502aea222976b13c18d2d63`

```dockerfile
```

-	Layers:
	-	`sha256:17d9913f965fd6effa5aaecec9628fbb07d86b0702da118db1804976c29f9dbf`  
		Last Modified: Wed, 05 Aug 2026 02:17:24 GMT  
		Size: 15.5 MB (15471585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:426823e4295844e1c6e723ca9a575e316acf7db401c7e28b7ea8d8080748aa05`  
		Last Modified: Wed, 05 Aug 2026 02:17:23 GMT  
		Size: 10.2 KB (10195 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:16367ef9db8b9602551605f244a75730accde8b11052791f076da70b4560de97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282474830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a0770aed4c868369766b3b0cb841f9fa37bf9f6eb098a868ab59f04745b993`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:14:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:78f02c4a9e536f4eb1489b80caa0f24ffc5d691c897b9d8eabf0bfa5de3cfaee`  
		Last Modified: Tue, 04 Aug 2026 23:51:43 GMT  
		Size: 49.1 MB (49067288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e547fab74d5231727514aa7187f974069a1ee9a7f68290afbd470e94e9851e`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 14.9 MB (14905382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d2221f0bd730fce460a5b83957f059201f1f72aa95400dcd77a3417b834fa9`  
		Last Modified: Wed, 05 Aug 2026 02:54:22 GMT  
		Size: 50.7 MB (50659358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e308c8567f48b1fecf9f939400acb620ead70e7c9ba2d25a27958f29ebba19aa`  
		Last Modified: Wed, 05 Aug 2026 03:15:18 GMT  
		Size: 167.8 MB (167842802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8947f8b73134763f7e5f109204de623459ac3ea9a2e206824a0300803d3d5a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15281162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fb36b2802b39a790b8c3ee46f4dc1fe4a4014afb911c9742c693b19365ca26`

```dockerfile
```

-	Layers:
	-	`sha256:c531c115a60af7644a45c8c34cef9db37858fbef1e776b561793c2734446ff6c`  
		Last Modified: Wed, 05 Aug 2026 03:15:14 GMT  
		Size: 15.3 MB (15270903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c66673c7f938cc9663414b99fb939fc571a68b34787be5c09142747d337bb2`  
		Last Modified: Wed, 05 Aug 2026 03:15:14 GMT  
		Size: 10.3 KB (10259 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:dada21e224e4efa182402cf14bfa203a34937766bfc88f5960572402a9438317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313219629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef210ce04133ac022ef3ab1d7a31394de71c54e3e612e1c57ad3db2dc8c4f47`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207d92eea9a933027b87222e2222a508f86aa6a0611f397c4c08f266c630bba`  
		Last Modified: Wed, 05 Aug 2026 00:47:16 GMT  
		Size: 15.8 MB (15774850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b5fcd073141b3adf766799633642f41c4f77cfb62c0c10742e8ae4e709d40c`  
		Last Modified: Wed, 05 Aug 2026 01:39:50 GMT  
		Size: 54.9 MB (54879738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793adb69cffdafc143f553af2ccf72096d98d2e73f3f71d7d889ab7469441c56`  
		Last Modified: Wed, 05 Aug 2026 02:17:13 GMT  
		Size: 190.3 MB (190304139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:705b85778cbb297cbc47b17381abd64107dc371570bb3d732738851e4ce452e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15483805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0526ae1f3fa0964f2d3772ec8df78d7639b9b64e64e1ade16b2f8c49aaf4f0a7`

```dockerfile
```

-	Layers:
	-	`sha256:37afcdc2dcaa6efb2151eb4c3752a3ee09fd7c2ae695bdf59c220ab64f5364d2`  
		Last Modified: Wed, 05 Aug 2026 02:17:09 GMT  
		Size: 15.5 MB (15473530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44e79ce74613d2f58dcca9e3c19a6048b95a40fca1521e86f12cb5fdbe3421d8`  
		Last Modified: Wed, 05 Aug 2026 02:17:08 GMT  
		Size: 10.3 KB (10275 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bullseye` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3cb4c8329f1c47009e325bc1b00fb3585b455c1beb01e8b76f9c97f61e61cd64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327335791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fded593b1c2cbfe55b5f9e4d04840d4c1712bf3f97a4104ee90b14db6348ec`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:46:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b30f3a91acd2928e076b886b4ca6835a60bf3b897f1b2e11bf58f61c25c7b45`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 16.3 MB (16295745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99339981fcc7a18d45719c6cb593c685d9566badca90c3137c734193642ebe59`  
		Last Modified: Wed, 05 Aug 2026 01:41:10 GMT  
		Size: 56.0 MB (56047172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a670ecf04625d4d7dd03c16efb9635dca6ee09e338dd8c1cae2338d29a2dca`  
		Last Modified: Wed, 05 Aug 2026 02:17:54 GMT  
		Size: 200.3 MB (200277141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bullseye` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2502824046ac73b02fe01fda42e9b4f6beb152fe19775380bb76f0c606e02b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15469773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a726977332845a7cb4dfe9d7181287c3a07196095ebe3232ed593ac42b259c00`

```dockerfile
```

-	Layers:
	-	`sha256:dc482f2ce8adacf3a1a5057bc630862a451c9c1ff1f32aaead7b401c4aad8581`  
		Last Modified: Wed, 05 Aug 2026 02:17:50 GMT  
		Size: 15.5 MB (15459600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93acad4fe8e3460e5a65c7306c5aafc78f29f6bda56700147983998908227bbf`  
		Last Modified: Wed, 05 Aug 2026 02:17:49 GMT  
		Size: 10.2 KB (10173 bytes)  
		MIME: application/vnd.in-toto+json
