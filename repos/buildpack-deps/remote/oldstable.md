## `buildpack-deps:oldstable`

```console
$ docker pull buildpack-deps@sha256:7237881f59d74009314351d84575a2babb4549c45caa7364d62ea5e61a574513
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

### `buildpack-deps:oldstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f1695dea7f56437da0208aee8a6e473cec40a04864233ac5a344c5ee4b4f1d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348609230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbeca8a0d16da4759fccae2d0b0434117f439daec188d069660c58531d9692f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32ed818f20fae825717c40dbc77cd4ed4bcefad6ba95a83f8c4f3c1f8631c31`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 211.7 MB (211659733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fa596b0e07e2944b6d59b0828eced82c65e4257fe2d7d6a9f55e41c633ff144c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15876591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2182661ee9656c3ef8ad6649cabcf1f1a4af8cc9679fbe0935bc7efeeae2008`

```dockerfile
```

-	Layers:
	-	`sha256:5d311df52d7c6247a6a38305957b151e1b15fc1f01a3578fad5a9d328cb6d759`  
		Last Modified: Wed, 05 Aug 2026 02:17:21 GMT  
		Size: 15.9 MB (15866402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7f9766e1634f0cf4312d38c6fde7abc86612d4990a9ba22762a84ec9236424e`  
		Last Modified: Wed, 05 Aug 2026 02:17:20 GMT  
		Size: 10.2 KB (10189 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d4af818ef4c6e0a61dbdb17d1cebe3800fa80a3a689e3f9a094196d2bf60023b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301375147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6928bcc1d4066b989da4fc7d508ebb43b6dc4b2ee5db4193350851fda4c58713`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:13:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192992ccaa250c7c1c083f797b9c40b83df5abf709b4a48200515e9ccd9e0205`  
		Last Modified: Wed, 05 Aug 2026 03:13:56 GMT  
		Size: 175.6 MB (175560059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8f8701de697e7260cd97bf9d1a56607be250fea68c142d3290c1d9a1874ed501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15679113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c5d8df2055bd24af3afb5aacc57a8aa6e20ef03495cc0ff470cf2a2f1df9d5`

```dockerfile
```

-	Layers:
	-	`sha256:855516c2b3330f58e37bd2efcd877437fd3c0b1c43e7587829bc0d3d813847c3`  
		Last Modified: Wed, 05 Aug 2026 03:13:52 GMT  
		Size: 15.7 MB (15668862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be8a586940e492bdaf85455dbdfbc264210db05f99ba3e021b3fd55725e786e4`  
		Last Modified: Wed, 05 Aug 2026 03:13:52 GMT  
		Size: 10.3 KB (10251 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:645b62aca8d4504ed608ff71e7c57932eb88ce724c632d3a391aaffac2717e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.7 MB (339678242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06a7c2626721af33c7c2fd7d05efee61b4a56df3ef9e16bb17e5184fc34533a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75326012c0e46bc6e0ebd4e16aaeed57151bdb35abecfaf1536077110c99c56`  
		Last Modified: Wed, 05 Aug 2026 02:17:08 GMT  
		Size: 203.2 MB (203184026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9219523160695744d2cbe71f265c7fbfa92538a61b6a5a99061b6d3d86388e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15905173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b970ced2263305798f03a65b7cb76507cb34ddf57ea7b29ec889a2c0dc0bd831`

```dockerfile
```

-	Layers:
	-	`sha256:6ae897598f4f8e018e137757e6d0c7380186eb6739372dea898868a335037caf`  
		Last Modified: Wed, 05 Aug 2026 02:17:04 GMT  
		Size: 15.9 MB (15894904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65a84d56997258ce742ca84dc17fc117be701034226dc0844c2d0486fcb75ff`  
		Last Modified: Wed, 05 Aug 2026 02:17:03 GMT  
		Size: 10.3 KB (10269 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:096f92e9f00c838c047b878b2db18b302642e395fc07e38cd9e8024edf580319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351185780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8854e289b88598b58ccbcfbde7bd85b7a531607ad8e1215f7100abb3d338fe8a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed12a6feb1930e559968e2bc0bfe7d26d40716344b44941e3f2e9998b9ffc9`  
		Last Modified: Wed, 05 Aug 2026 01:41:06 GMT  
		Size: 66.2 MB (66249235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c133a195a73a7b0ecedaff454ed5ac74175059d3a55ec53b2efce0040810e4a`  
		Last Modified: Wed, 05 Aug 2026 02:17:37 GMT  
		Size: 210.6 MB (210571553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0129ed595f089e2efac2a3db3f43a5391d6005b6c79bbd1a955ba2e8b3fb3260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15854796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0457dc20413878002b0a53fdd867d9fedbde15063ae4f5e229fd07bafac6022`

```dockerfile
```

-	Layers:
	-	`sha256:57b9755649f7aefce72e6981011b7508d6340bc8f04037b4d2b9af5aa630b153`  
		Last Modified: Wed, 05 Aug 2026 02:17:33 GMT  
		Size: 15.8 MB (15844630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52d6b18902d84c27a5dc9372f99a6ee93c4082859fe59fa69f61c116ebee8e23`  
		Last Modified: Wed, 05 Aug 2026 02:17:32 GMT  
		Size: 10.2 KB (10166 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e7fea517883239fc22c7c8d1bf2de0770820a7a35932856748214daf5c1e4eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.6 MB (362612948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6df9886f4e11da0f0d5d49add97b2dfadfd645c1e9e13ed1d97d0a1ea974cd7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 08:56:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95027cd80c4454d89d6b4c8efbc12b5a5db6e68d78e2e007912a237c0765c139`  
		Last Modified: Wed, 05 Aug 2026 08:57:45 GMT  
		Size: 214.7 MB (214732697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:998a7c70b9199986396138688c75a83141e0878bbc4e9783023225e517f44f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15853125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201ff61a2e6febd49a923b01cea5663026dd272ad9b958ea21a63f78d50ed8c5`

```dockerfile
```

-	Layers:
	-	`sha256:b9d44f92addd4152885b0ff9a0fbf7894354c700e2dbe3ef165c5c69a61f6771`  
		Last Modified: Wed, 05 Aug 2026 08:57:40 GMT  
		Size: 15.8 MB (15842905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f04381281c5371830f7e3889aab1862cf9867fa70d71190e0a57eca7dbbcc8ff`  
		Last Modified: Wed, 05 Aug 2026 08:57:39 GMT  
		Size: 10.2 KB (10220 bytes)  
		MIME: application/vnd.in-toto+json
