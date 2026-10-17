## `buildpack-deps:jammy`

```console
$ docker pull buildpack-deps@sha256:ac8a744e763b1054a229c90e0e8c80b5b6b37f22850158d56cfdb50189e94f72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:jammy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:01df0114467986a296a9dcb3734c2e20b49af0117b21dec4d13c4964adc57e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249579056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb47857c0ae55885ae14e8469e15f6b011b9f11a97f5803e38fd87a2d61c4b5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:17:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1721334406ae339cf03d446ec861d70b71a24412e80dedb17cc2a64e8b88de`  
		Last Modified: Sat, 17 Oct 2026 01:17:44 GMT  
		Size: 39.5 MB (39508798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a561a6f1d08a1e5e2766b050c38fc82404d7c682b06bc3a551cc3dc88e1cbe`  
		Last Modified: Sat, 17 Oct 2026 02:18:44 GMT  
		Size: 173.2 MB (173248729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:923682e68b5dddf64700abaf2469840eaf8a25da6d7e7c652042ce0aea235183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11834510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ed09fa61aa714d5aee0e38e145ae894839c2b382a1cfda1a289c72f06b8af6`

```dockerfile
```

-	Layers:
	-	`sha256:582abe73e1d5c9444390d552056c4d78aeecd05621460411dbd602039941050b`  
		Last Modified: Sat, 17 Oct 2026 02:18:39 GMT  
		Size: 11.8 MB (11824350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7e47f39d9d5d95da10290026e54b86b1a70ed7aca021e0e0bb9aba224fcb5e8`  
		Last Modified: Sat, 17 Oct 2026 02:18:38 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:59ed8b5dcc8190fc325d0c3c33ea8acf5b15efd0eca1f1b9c0309547a1e5401a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216798603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e9b071030e5424c607ef20b861645f81d232c0f82770cf6b239134df0990b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:21 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:24 GMT
ADD file:50a860bb86a61a938205aa42540aa15297b2f6be7f485db52a6f525e3208ef3f in / 
# Fri, 02 Oct 2026 10:27:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:17:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9787843ba490cff9717a8f5c2f4e7feb6766cda214d74e674690b1d2f5c17e79`  
		Last Modified: Fri, 02 Oct 2026 11:08:39 GMT  
		Size: 26.9 MB (26856530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07859acbfbdb693d7ae7a02009be4082ccb3a047264599451d084aff2706ee22`  
		Last Modified: Sat, 17 Oct 2026 00:12:27 GMT  
		Size: 7.0 MB (6969545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4281d4d35a6162ff5aa0508fc2b2d7072db459e6b27518ed8947478c46765e3c`  
		Last Modified: Sat, 17 Oct 2026 01:17:34 GMT  
		Size: 42.3 MB (42286348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee96b3c8d1cf25108cb9c95379dc1c5aeaf031027699b7abb6143945f718b6b`  
		Last Modified: Sat, 17 Oct 2026 02:18:21 GMT  
		Size: 140.7 MB (140686180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:918df23a4cd15c83cae8e2c0038aa4802e58db326e612de9e27c8607966a3d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11623782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527bb33e109af6fdae081fbbc33a999300a9865d23a30c54cce09b8d4fdb15bf`

```dockerfile
```

-	Layers:
	-	`sha256:d5b925bf3f430bdbe121f51ff2d778ba5bbf4c93ba87386745e2533eb30f2448`  
		Last Modified: Sat, 17 Oct 2026 02:18:17 GMT  
		Size: 11.6 MB (11613559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c83741f5153ad6b995154a983981ef9ad907132ffe1a5f2d91d4db6213a4743`  
		Last Modified: Sat, 17 Oct 2026 02:18:17 GMT  
		Size: 10.2 KB (10223 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b42a097e9ba880d3e3e2345ea52306ab6862926392a00150afc9e43437808cfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241056928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9f1be18bc330f34757c8d3ae68138a52566528279e7bf3e39d18a8bebb4d31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:17:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:17:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30394008d4f793cd23f385030942832337c46fa5eb86630d11e698a94fe3acbc`  
		Last Modified: Sat, 17 Oct 2026 01:17:35 GMT  
		Size: 39.4 MB (39438767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e36aa041cc46ede595bcc2cd57de7c0fb459fa084c324d6ccea7f782161f89`  
		Last Modified: Sat, 17 Oct 2026 02:18:20 GMT  
		Size: 166.9 MB (166911337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:68007a61cbe85074779c8d1e1c5aab2c0fc785fc528c028c623f2c0f6d9823f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11830256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e99ead912114a6e8db015ba7805c32261d0fb6426d3069deeff9199a15df26c`

```dockerfile
```

-	Layers:
	-	`sha256:5b5b3cca000c8bb65076be2fd59113a9b7a362a5028363487ba589854392b3b5`  
		Last Modified: Sat, 17 Oct 2026 02:18:17 GMT  
		Size: 11.8 MB (11820017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73af595046636251221b3c272b9fa945f80906362c2ee4a3c80c310135e012c5`  
		Last Modified: Sat, 17 Oct 2026 02:18:16 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d6926d4f93f813f2ef33d56a1a6d8d6c84f12f53a443bfe93d86d81d5c509703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273516102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967d783c4eab49891c0fada20ff0c3dd42b8b8fcdaf04ff29c2cc674bedc2fba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:29:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 06:04:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:49:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3957c99cc69d4f73bdca6e8af244f071ddcfd5a9ea6755c0e070ef51d1b26b`  
		Last Modified: Fri, 02 Oct 2026 03:29:30 GMT  
		Size: 8.1 MB (8146749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d798b77abf402139faf1fc0db9753f1694bd50631e79b16742102415c6b769`  
		Last Modified: Fri, 02 Oct 2026 06:04:51 GMT  
		Size: 43.8 MB (43796791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26307695464659a014b98cba553ee5ad716fc1b06b813fca06184edf44ae1724`  
		Last Modified: Fri, 02 Oct 2026 08:50:29 GMT  
		Size: 186.9 MB (186869354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d339436eb4a8746dcee4c90ca744ae3e674007c3eeda07138e2377eec553737a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11793907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30f6c3d48f8d8e65768f4b283dc73d1583c1b9ab3c068270f310f3235c5d5cf`

```dockerfile
```

-	Layers:
	-	`sha256:e09eedc2db9001334e2fd6cccb6c022b47692f42e188ecd9f118f7307782158d`  
		Last Modified: Fri, 02 Oct 2026 08:50:25 GMT  
		Size: 11.8 MB (11783715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e30e734006944a8da80a92410d68a78f07b93aa1acf0aa58f756c90eacf9aaba`  
		Last Modified: Fri, 02 Oct 2026 08:50:24 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c2f41445f7b7adaa0fa1160ae0c070383177a66260bce88fe2ae9c8c3b415384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277225568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e584b217411ce02fafe171d96232fe36ce28f8d4eb7e274994ae84e8918822e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 23:05:25 GMT
ARG RELEASE
# Thu, 24 Sep 2026 23:05:26 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 23:05:26 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 23:06:34 GMT
ADD file:cb3a3c94d10d49287891ea08cbf8b7fe79473139463a46576d63e2080b6bc527 in / 
# Thu, 24 Sep 2026 23:06:40 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 03:39:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 16:01:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f3630582427710780089d8db818cfc199c0497126d6d8cff737fe0c0f2c57faf`  
		Last Modified: Thu, 24 Sep 2026 23:36:32 GMT  
		Size: 27.3 MB (27301128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b2bae9d2354f858148e47c23992147b58b4bb8af88954f41563f4b430396d1`  
		Last Modified: Sun, 04 Oct 2026 20:38:39 GMT  
		Size: 7.1 MB (7076071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650b6bcfe3169dc77bd9c189f779b60b07319c69be9590c6f80707e2d496b181`  
		Last Modified: Mon, 05 Oct 2026 03:41:58 GMT  
		Size: 42.3 MB (42329042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa65b95ec1bd0cbd0599ad22848d3edae9a9041ecfc2e4089168644bd4e0dc0`  
		Last Modified: Mon, 05 Oct 2026 16:11:31 GMT  
		Size: 200.5 MB (200519327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3c9df7d923ed1268a7c01037f6fa2c91b3ee9015f9f9307ba7861d7a17b27061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11776263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a978e43ea18a3483548e1c22432208f12f4024e5e9781afefcf497458ac18b5a`

```dockerfile
```

-	Layers:
	-	`sha256:b1db0984a47fb87fb05b68e9e0eab5122e5b4b537d688357455eead8c51ce4ee`  
		Last Modified: Mon, 05 Oct 2026 16:11:03 GMT  
		Size: 11.8 MB (11766071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2491611a8d196ad451f4fccc3006a52a672693234ae8fe39296093790ec7307d`  
		Last Modified: Mon, 05 Oct 2026 16:11:00 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:14ff8c5718aa83b9c0c449ba7123b16dbc31dc73ff1d1efad07850b0a9dd5c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223546399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a31497f88fd9682e1b66300b6a60272e817be41ab49539a10fb8f2abd9241e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:47 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:47 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:47 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:49 GMT
ADD file:37d95fb30f79d123e31757f3914721d25b7e55b974a72d49a4ef18cbdd2c5044 in / 
# Fri, 02 Oct 2026 10:22:49 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:16:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:21:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1cc3b16ef800fa37e67e957552c6fceece7de8c1f49769006e2e5ee5704c33e0`  
		Last Modified: Fri, 02 Oct 2026 11:09:00 GMT  
		Size: 28.2 MB (28222770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ba51a3bcd334fd30a3f5b87ec753bc2d99e55b2566f414d59b97aee424d886`  
		Last Modified: Sat, 17 Oct 2026 00:11:01 GMT  
		Size: 7.0 MB (6979956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459cb9c1192c3046f4fe4ba9fe910f18844ed56b2dccc059282cbc3a13c24c05`  
		Last Modified: Sat, 17 Oct 2026 01:17:24 GMT  
		Size: 39.4 MB (39440497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b607fce908f6f494435a9de8f635d289990f02404f9ea076c95a17608f4141`  
		Last Modified: Sat, 17 Oct 2026 02:22:41 GMT  
		Size: 148.9 MB (148903176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f3bb7d8f5c873ed0e708b4bf7130824688a9955ad767edfecd2759523c37ae4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11648386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2517b7e7d802562d2d691abcb0977c131507a5558f01f72235034335379ec7b8`

```dockerfile
```

-	Layers:
	-	`sha256:21aa3d7ee84e8ea6612924662604d6bd9adf966fffa544ff744e79bd42f15c35`  
		Last Modified: Sat, 17 Oct 2026 02:22:39 GMT  
		Size: 11.6 MB (11638227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4c6950b0de90ef0bdf7f2d00375c3f37bed823f41dfc06c892aecf56910b3f8`  
		Last Modified: Sat, 17 Oct 2026 02:22:38 GMT  
		Size: 10.2 KB (10159 bytes)  
		MIME: application/vnd.in-toto+json
