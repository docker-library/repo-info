<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:4.6.1`](#r-base461)
-	[`r-base:latest`](#r-baselatest)

## `r-base:4.6.1`

```console
$ docker pull r-base@sha256:e07eb31c118ae94d31d43f22b60f40d7a7d5056ee9125e076956c428fdf78b82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `r-base:4.6.1` - linux; amd64

```console
$ docker pull r-base@sha256:ca71275caa26318bbb872b0ac42e68109c982638cf5dcab4d940892cb94dc2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **751.1 MB (751129366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47516f1b5d405d876a47e7a8d431ff43a5ab0cfa7c8122516b932e77e2843b1f`
-	Default Command: `["R"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:37:15 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Aug 2026 00:37:15 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 05 Aug 2026 00:37:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 00:37:22 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Aug 2026 00:37:22 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 05 Aug 2026 00:38:07 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:07 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:335deb63ddb10461aefcb1d844c9836be66643e839c282397fa549c842fd8c23`  
		Last Modified: Tue, 04 Aug 2026 23:52:48 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c31c4a423ee9a8ead7ec47b2192accb1959eb160cb6bab794e2d9f74a37d7`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf80f294ccd00d2662223df48efade2527a8508507e92e1ba46f3e1237b31b8`  
		Last Modified: Wed, 05 Aug 2026 00:39:19 GMT  
		Size: 27.1 MB (27101397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dfcc6051585900e7925ed1a44f0fe8191b24c7c31cd50dcc5d3f6aa7314881`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 868.5 KB (868488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22305b10de2d327b661bcd66df19495ec89971caa5f84c32d98e28f34c1f3948`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e7637f15761d6330b8f5b5caefe3e2a96fd684ff610832d2ab34a17f36bda0`  
		Last Modified: Wed, 05 Aug 2026 00:39:31 GMT  
		Size: 673.8 MB (673824047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:cbff1a67721dbb1758383f9e589e75842437e271cccb8c798f370a9d89af6970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13113907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed3265805e9c8a2e05dcf9db9a319204549ae25f2107e90d04f9a9f6b5d8a4c`

```dockerfile
```

-	Layers:
	-	`sha256:dcfa952156aac45d40932de9e02a7c38968f438ada542d45f42a8774c23a14c9`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 13.1 MB (13094747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4355e1670b5f9d40a0544f4fe055655d5f264bca32bf046b42d2d1c980ac5d4a`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:48cac789b99e187475667451b18a66c8ced4f71f0f948247f0c70c0426e9a137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **763.4 MB (763355676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264df259ebb2fa4ff2a3db6d346ec273e18d4c84af727b1cc4b39065a9e8edbb`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:44:52 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 25 Aug 2026 00:44:52 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 25 Aug 2026 00:45:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:45:01 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 25 Aug 2026 00:45:01 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 00:45:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Aug 2026 00:45:01 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 25 Aug 2026 00:45:01 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 25 Aug 2026 00:46:05 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:05 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:30f4d11c972e1812e323af417c2a97df915c25e06b3f845e71563f63add52edc`  
		Last Modified: Mon, 24 Aug 2026 23:20:42 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9488e45769983073afb56dfdbd483f6a9dc9de3347edce9570794ec451041ad`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc19048bd1c0a54c1e7beff8533e3e261f7291a7f488b55b38fd7ab2c0e5468`  
		Last Modified: Tue, 25 Aug 2026 00:47:26 GMT  
		Size: 27.0 MB (27020835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5f33c3f49e659302b67f26f00cac86ad80007ff2782590861e1d25a40d6716`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 868.7 KB (868663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07287be396b6648b353999dc66cf0edd555632661a1a8f13a8e123edc428ddb1`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f6d30e477cf2c3cf0ec94e79d5c99749b96f2f1d7074f36f5f48ff9cb68e4b`  
		Last Modified: Tue, 25 Aug 2026 00:47:37 GMT  
		Size: 686.0 MB (685958525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:51ed240ade99d543193b68c15aa99a52d1f1480c413f0d01da9abc2da8bdc8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13221692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b72dc7d9fe411753022776444d365d9d6605b3a8daeb07797b4fb9ab1d5ffc`

```dockerfile
```

-	Layers:
	-	`sha256:521d2ff6fc809b810d8f96c5ba54745bd642f06266641bafea813d81e84dde89`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 13.2 MB (13202392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc15d8b64169be5955aefa96102cc7d56c141790d0345ea49b0b9bc782d9038`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; ppc64le

```console
$ docker pull r-base@sha256:22949ef24a9347913e6fee47e587284fddb44dcfa818b44d139915b6b5899e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.0 MB (773026465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1a390f14d0ebb0cb675e0a040e3a9a4570b9b26337c2d9fd492c0a74cf1bdf`
-	Default Command: `["R"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 05:14:10 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Aug 2026 05:14:10 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 05 Aug 2026 05:14:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:14:39 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 05 Aug 2026 05:14:39 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 05:14:39 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Aug 2026 05:14:40 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 05 Aug 2026 05:14:40 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 05 Aug 2026 05:17:36 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:17:36 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:b3c052ddbda2f7849811aa46e2373f6622480959099a141a9275a23e79947523`  
		Last Modified: Tue, 04 Aug 2026 23:52:46 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a37efd83a1f77ec45aaae67a13e925f43f1b186a975da792dfebdada7df8a`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d7cffced734dc64980419c4865cb8c824ee32dc112dc071ac48f12923b9e79`  
		Last Modified: Wed, 05 Aug 2026 05:20:07 GMT  
		Size: 27.4 MB (27426392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f293b63918c9e1ab686338c498e3464352fe937c09cadac57ba1b5b2a244c7a6`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 868.5 KB (868497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826a0603ab06493ba54e496ae518c1896043be9dbe611d368436a0a38f96ebe8`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bbe554a167ba6fd83e9b3085f08c8e4981027c1d3289ba3c896dfc82716706`  
		Last Modified: Wed, 05 Aug 2026 05:20:20 GMT  
		Size: 690.1 MB (690052820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:63f91ab42b4c2a91fd639d890203ae4fe6bfd85fd16249ea97c1e982d112c4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13126979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e63c2e043d0869af9eb1547faaec51a3ffe93200d9bd129ba594d671246963`

```dockerfile
```

-	Layers:
	-	`sha256:6a46395dfa96ea1627b2e0b0b9bb4cb3755c31a03f72f3bd88d7f0e15e584233`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 13.1 MB (13107779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96e581e90f8b78b308cd035f69b09f2d054373ca65cb5135f5e2e99817451cb5`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; s390x

```console
$ docker pull r-base@sha256:595082911586da36bd648dc3430653f1c8095025be76ea2cc8e650c237ee55b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725579284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cbe5623e725030a9af4aba0977b5c3729415fb727b62d567e68e29107f50a5`
-	Default Command: `["R"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 01:02:21 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Aug 2026 01:02:21 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 05 Aug 2026 01:02:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:02:31 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 05 Aug 2026 01:02:31 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 01:02:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Aug 2026 01:02:31 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 05 Aug 2026 01:02:31 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 05 Aug 2026 01:03:38 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:03:38 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:52238ad230b64f6771698113bf11eb99d580b6c0331c6fbe593ed063507e59c3`  
		Last Modified: Tue, 04 Aug 2026 23:51:14 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd6f813a0e8070e71a9d49170c6919c4c38f5cd6de79a593eaf63e79130d03c`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2145fe23f5f24977e123c3105b96a22eaac20984cc81f4a0ece762e0c2331362`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 27.0 MB (27044998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a81d8fcebb10882d676467267e8bd29972f4e91ce890a1b401fa823f6d397e`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 924.5 KB (924544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8614ff1273effcdc060543131d8abb5a4abec8469e62ac8c66e2c6579e6b03b6`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0053373c837a6e5d0fa9fd51cc9ae719b2562ef070e8af5c75db016582fecd`  
		Last Modified: Wed, 05 Aug 2026 01:05:39 GMT  
		Size: 648.5 MB (648527525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:d438122aeeb187d1e4cbd7df8db42927e99131d1a4ac53bd1f82855e46eb8368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12942942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e948a3e25906cc7f73ebc9581d1994360c49fbdc3729fd35c78af57d63db20e4`

```dockerfile
```

-	Layers:
	-	`sha256:68ce906c072404349e6603aaba5b67a03686fb1d5e8bfc5a3ebc2c9fce1951d7`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 12.9 MB (12923782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba421b8bc7a697eb751046b0dafdecf1d2eae9e68af0391188bdb76b324bb974`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

## `r-base:latest`

```console
$ docker pull r-base@sha256:e07eb31c118ae94d31d43f22b60f40d7a7d5056ee9125e076956c428fdf78b82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:ca71275caa26318bbb872b0ac42e68109c982638cf5dcab4d940892cb94dc2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **751.1 MB (751129366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47516f1b5d405d876a47e7a8d431ff43a5ab0cfa7c8122516b932e77e2843b1f`
-	Default Command: `["R"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:37:15 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Aug 2026 00:37:15 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 05 Aug 2026 00:37:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 00:37:22 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Aug 2026 00:37:22 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 05 Aug 2026 00:38:07 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:07 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:335deb63ddb10461aefcb1d844c9836be66643e839c282397fa549c842fd8c23`  
		Last Modified: Tue, 04 Aug 2026 23:52:48 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c31c4a423ee9a8ead7ec47b2192accb1959eb160cb6bab794e2d9f74a37d7`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf80f294ccd00d2662223df48efade2527a8508507e92e1ba46f3e1237b31b8`  
		Last Modified: Wed, 05 Aug 2026 00:39:19 GMT  
		Size: 27.1 MB (27101397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dfcc6051585900e7925ed1a44f0fe8191b24c7c31cd50dcc5d3f6aa7314881`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 868.5 KB (868488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22305b10de2d327b661bcd66df19495ec89971caa5f84c32d98e28f34c1f3948`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e7637f15761d6330b8f5b5caefe3e2a96fd684ff610832d2ab34a17f36bda0`  
		Last Modified: Wed, 05 Aug 2026 00:39:31 GMT  
		Size: 673.8 MB (673824047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:cbff1a67721dbb1758383f9e589e75842437e271cccb8c798f370a9d89af6970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13113907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed3265805e9c8a2e05dcf9db9a319204549ae25f2107e90d04f9a9f6b5d8a4c`

```dockerfile
```

-	Layers:
	-	`sha256:dcfa952156aac45d40932de9e02a7c38968f438ada542d45f42a8774c23a14c9`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 13.1 MB (13094747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4355e1670b5f9d40a0544f4fe055655d5f264bca32bf046b42d2d1c980ac5d4a`  
		Last Modified: Wed, 05 Aug 2026 00:39:18 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:48cac789b99e187475667451b18a66c8ced4f71f0f948247f0c70c0426e9a137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **763.4 MB (763355676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264df259ebb2fa4ff2a3db6d346ec273e18d4c84af727b1cc4b39065a9e8edbb`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:44:52 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 25 Aug 2026 00:44:52 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 25 Aug 2026 00:45:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:45:01 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 25 Aug 2026 00:45:01 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 00:45:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Aug 2026 00:45:01 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 25 Aug 2026 00:45:01 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 25 Aug 2026 00:46:05 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:46:05 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:30f4d11c972e1812e323af417c2a97df915c25e06b3f845e71563f63add52edc`  
		Last Modified: Mon, 24 Aug 2026 23:20:42 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9488e45769983073afb56dfdbd483f6a9dc9de3347edce9570794ec451041ad`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc19048bd1c0a54c1e7beff8533e3e261f7291a7f488b55b38fd7ab2c0e5468`  
		Last Modified: Tue, 25 Aug 2026 00:47:26 GMT  
		Size: 27.0 MB (27020835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5f33c3f49e659302b67f26f00cac86ad80007ff2782590861e1d25a40d6716`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 868.7 KB (868663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07287be396b6648b353999dc66cf0edd555632661a1a8f13a8e123edc428ddb1`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f6d30e477cf2c3cf0ec94e79d5c99749b96f2f1d7074f36f5f48ff9cb68e4b`  
		Last Modified: Tue, 25 Aug 2026 00:47:37 GMT  
		Size: 686.0 MB (685958525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:51ed240ade99d543193b68c15aa99a52d1f1480c413f0d01da9abc2da8bdc8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13221692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b72dc7d9fe411753022776444d365d9d6605b3a8daeb07797b4fb9ab1d5ffc`

```dockerfile
```

-	Layers:
	-	`sha256:521d2ff6fc809b810d8f96c5ba54745bd642f06266641bafea813d81e84dde89`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 13.2 MB (13202392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc15d8b64169be5955aefa96102cc7d56c141790d0345ea49b0b9bc782d9038`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:22949ef24a9347913e6fee47e587284fddb44dcfa818b44d139915b6b5899e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.0 MB (773026465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1a390f14d0ebb0cb675e0a040e3a9a4570b9b26337c2d9fd492c0a74cf1bdf`
-	Default Command: `["R"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 05:14:10 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Aug 2026 05:14:10 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 05 Aug 2026 05:14:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:14:39 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 05 Aug 2026 05:14:39 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 05:14:39 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Aug 2026 05:14:40 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 05 Aug 2026 05:14:40 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 05 Aug 2026 05:17:36 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:17:36 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:b3c052ddbda2f7849811aa46e2373f6622480959099a141a9275a23e79947523`  
		Last Modified: Tue, 04 Aug 2026 23:52:46 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57a37efd83a1f77ec45aaae67a13e925f43f1b186a975da792dfebdada7df8a`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d7cffced734dc64980419c4865cb8c824ee32dc112dc071ac48f12923b9e79`  
		Last Modified: Wed, 05 Aug 2026 05:20:07 GMT  
		Size: 27.4 MB (27426392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f293b63918c9e1ab686338c498e3464352fe937c09cadac57ba1b5b2a244c7a6`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 868.5 KB (868497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826a0603ab06493ba54e496ae518c1896043be9dbe611d368436a0a38f96ebe8`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bbe554a167ba6fd83e9b3085f08c8e4981027c1d3289ba3c896dfc82716706`  
		Last Modified: Wed, 05 Aug 2026 05:20:20 GMT  
		Size: 690.1 MB (690052820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:63f91ab42b4c2a91fd639d890203ae4fe6bfd85fd16249ea97c1e982d112c4dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13126979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e63c2e043d0869af9eb1547faaec51a3ffe93200d9bd129ba594d671246963`

```dockerfile
```

-	Layers:
	-	`sha256:6a46395dfa96ea1627b2e0b0b9bb4cb3755c31a03f72f3bd88d7f0e15e584233`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 13.1 MB (13107779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96e581e90f8b78b308cd035f69b09f2d054373ca65cb5135f5e2e99817451cb5`  
		Last Modified: Wed, 05 Aug 2026 05:20:06 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:595082911586da36bd648dc3430653f1c8095025be76ea2cc8e650c237ee55b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725579284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cbe5623e725030a9af4aba0977b5c3729415fb727b62d567e68e29107f50a5`
-	Default Command: `["R"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 01:02:21 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 05 Aug 2026 01:02:21 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 05 Aug 2026 01:02:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:02:31 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 05 Aug 2026 01:02:31 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 01:02:31 GMT
ENV LANG=en_US.UTF-8
# Wed, 05 Aug 2026 01:02:31 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 05 Aug 2026 01:02:31 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 05 Aug 2026 01:03:38 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:03:38 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:52238ad230b64f6771698113bf11eb99d580b6c0331c6fbe593ed063507e59c3`  
		Last Modified: Tue, 04 Aug 2026 23:51:14 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd6f813a0e8070e71a9d49170c6919c4c38f5cd6de79a593eaf63e79130d03c`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2145fe23f5f24977e123c3105b96a22eaac20984cc81f4a0ece762e0c2331362`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 27.0 MB (27044998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a81d8fcebb10882d676467267e8bd29972f4e91ce890a1b401fa823f6d397e`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 924.5 KB (924544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8614ff1273effcdc060543131d8abb5a4abec8469e62ac8c66e2c6579e6b03b6`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0053373c837a6e5d0fa9fd51cc9ae719b2562ef070e8af5c75db016582fecd`  
		Last Modified: Wed, 05 Aug 2026 01:05:39 GMT  
		Size: 648.5 MB (648527525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:d438122aeeb187d1e4cbd7df8db42927e99131d1a4ac53bd1f82855e46eb8368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12942942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e948a3e25906cc7f73ebc9581d1994360c49fbdc3729fd35c78af57d63db20e4`

```dockerfile
```

-	Layers:
	-	`sha256:68ce906c072404349e6603aaba5b67a03686fb1d5e8bfc5a3ebc2c9fce1951d7`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 12.9 MB (12923782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba421b8bc7a697eb751046b0dafdecf1d2eae9e68af0391188bdb76b324bb974`  
		Last Modified: Wed, 05 Aug 2026 01:05:28 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json
