<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:4.6.1`](#r-base461)
-	[`r-base:latest`](#r-baselatest)

## `r-base:4.6.1`

```console
$ docker pull r-base@sha256:c64a34ddb6c3955f1df3d5f7519435ca3698007b03af47d67ad9f8ce75a72b47
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
$ docker pull r-base@sha256:1c19e544c2cf1f60e83d8f78f5a3f94f006a710883cbd18e3ccc49ca17d6075e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.2 MB (369226664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51433bd08278ae88c39bb956260ddf33ca901d907ce6c57fb3a31ac8e3a93781`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:36:50 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 01:36:50 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 01:36:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:36:57 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 01:36:57 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 01:36:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 01:36:57 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 01:36:57 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 01:37:35 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:37:35 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:9e0242bb3da2f89ebd64e68593da72e3f7d5152d2413ce055d3ec9310ddb927a`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 48.9 MB (48865333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941121b479cd86320b2ed4eeefcae5ddd8471ebe054ab16b2b4f0f825681a319`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaad6712832460690de525e5890b9a74f46c64464078fc8e0cd36a5c5106fe1`  
		Last Modified: Tue, 14 Jul 2026 01:38:13 GMT  
		Size: 27.1 MB (27092789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137f6202f11366e88fc9bb1e024c06436a551acf6ac7aa27b394010ad2cce49`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 868.5 KB (868489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd2cbe236e4fbee28fcfa26ae78c54d42084e79e6c5c8cd8796f378690eb9de`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70836c0877b44f773d32b8ed3f060ce7a8bd84def0c1fc179c7311bc5ed24840`  
		Last Modified: Tue, 14 Jul 2026 01:38:19 GMT  
		Size: 292.4 MB (292396323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:ff4b8baf742c19892388736ee9eb2cdd59894e5d5cac043ed3d50ebaab489313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13004212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537960d4dbca9a21f436645d42f7dae8d50559496a8046f25c5ab546dadd5f28`

```dockerfile
```

-	Layers:
	-	`sha256:f8734e0cfc5823b174b225bb2b22ea44bfeae9a27ff610dfbc652b2ec09edc44`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 13.0 MB (12985053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2517266d8f4aa1f969dcf7498e07543b1842886883fd8d7c91c9dfa72825fcf8`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 19.2 KB (19159 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:399af81927d9121563ad6dfc0887b6e53033b7f44d93a2131ab286b6472e676f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352830421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a53012faff3b74eba811ffd26d4bea400e8f5744d1a89f3f476a1b5bc4988e`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:39:42 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 01:39:42 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 01:39:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:39:51 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 01:39:51 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 01:39:51 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 01:39:51 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 01:39:51 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 01:40:33 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:40:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:e24d577d84750492035e9c782071fab720554e89588f20e1fec36b9494c91758`  
		Last Modified: Tue, 14 Jul 2026 00:14:31 GMT  
		Size: 48.9 MB (48890604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04be8d77a945d2165c6b70fb719f0fc97e6c295924bd5100562b31d49ff18fac`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68b56565ef121ad9f8bbafbe9ec0dd2915bdccebdc8f676bf1ff05df90f6871`  
		Last Modified: Tue, 14 Jul 2026 01:41:12 GMT  
		Size: 26.9 MB (26943790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b790a22e16c6c002d8420104c07239d43b58221b6461f72035e54f42a0f74a35`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 868.5 KB (868487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2753aeebc8961afc9e75c5e3e413b099b92bc065eb063d906e1e9e2dd62b1a1d`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685c4d77e48a69c4a8d0fdd29e90b10e8f0b4cf99e91140a6e81c92de6dffaa9`  
		Last Modified: Tue, 14 Jul 2026 01:41:17 GMT  
		Size: 276.1 MB (276123809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:da8e392032e557dca0a3bacc3da9c2ec3ec049b3c604d985108bbd06f67b7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13129552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0299afd6405c68808fbf66be4869a9537c312e989a452b97e0f4d4f4f0fca670`

```dockerfile
```

-	Layers:
	-	`sha256:a81e2d6cdeccbb799300dca4d740b2cd6b7ce7f960951208d4b74cce62d4ee3f`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 13.1 MB (13110253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01589012be02d2b84f65364f20988ef9c339f56abf62c99b4eb6dcdb8702cbac`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 19.3 KB (19299 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; ppc64le

```console
$ docker pull r-base@sha256:bdd687fa2a460dada12b42299df18b7b72472356062a4b13e829d0f7f9912a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.3 MB (365303414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed98bf11d6b4f0a8fc26450ab57f977bc2cfd51ea264b7fcfd57f8e07824c016`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 03:36:12 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 03:36:12 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 03:36:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:36:41 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 03:36:41 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 03:36:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 03:36:42 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 03:36:42 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 03:39:30 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:30 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:c4bbcdef50229f306b20d248290cf496460d990fdb6d2f6bbf320c123de65229`  
		Last Modified: Tue, 14 Jul 2026 00:15:12 GMT  
		Size: 54.2 MB (54187398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fa92fbbf69945466b74972422a8bbdc8d9e75a7522f2d68070c97579c5d823`  
		Last Modified: Tue, 14 Jul 2026 03:41:09 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2830b910c34a78b0a1c3ad06c1b2b0b280feb5338fa3656ddbb23af60ed88e`  
		Last Modified: Tue, 14 Jul 2026 03:41:10 GMT  
		Size: 27.4 MB (27413867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b283a2321bfd826fa2fa39be892e3fb1abb14eca1dfeda634fc851da7532bf97`  
		Last Modified: Tue, 14 Jul 2026 03:41:09 GMT  
		Size: 868.5 KB (868488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1c00a042a81d12d18fa5fa548ac8cda00bf15fe59524a433d90546e48374bd`  
		Last Modified: Tue, 14 Jul 2026 03:41:10 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863cf784d21d781c96dc951f651ab81f4759c92a7853e10fcc334ab2db7a163`  
		Last Modified: Tue, 14 Jul 2026 03:41:17 GMT  
		Size: 282.8 MB (282829927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:0ac1e91944027a7b4b2097b1407b2e1b41f6f1c1bbd3d603c877cd9c4e403d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13013698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c66df73a39d6029304c87432d45d4992ff3a70bd1ec2d2fc6d6b10f826b415c`

```dockerfile
```

-	Layers:
	-	`sha256:36fbb07f944104c1e340832cb79dbff6be20baaa453faca5f33861b64e11fefa`  
		Last Modified: Tue, 14 Jul 2026 03:41:10 GMT  
		Size: 13.0 MB (12994498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70046a3739383289e9f79e2fa969869fff7ef4068b2e058aa3f56422734480c9`  
		Last Modified: Tue, 14 Jul 2026 03:41:09 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; s390x

```console
$ docker pull r-base@sha256:5e2af37bc1ed812a6167e027b75172d6d924ee191a76ba95b71eb466579a76e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337932368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4efc009e9f96cd9c42024d891fa8d4c7cd2919d848d688ecce4931838b58a34`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 03:02:36 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 03:02:36 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 03:02:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:02:46 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 03:02:46 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 03:02:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 03:02:46 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 03:02:46 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 03:03:34 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:03:34 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:f6a94ce2329c5fa4caf98783b99d3339a863ea3f00b11f91e4f19cdd64d8e002`  
		Last Modified: Tue, 14 Jul 2026 00:16:35 GMT  
		Size: 48.6 MB (48600735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89609dd91208fb635599c19e1d3e80e854fa552a4d1baa42b843699e8f316e3b`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ce8bbe4b7c97841336d440c08d112334e254f073fdcca86e53f9641bfda575`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 27.0 MB (27039926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810648528d216a4edbc876df788e2af1f5e05f1e0cef2f48df6a3c9ec6af9c63`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 924.5 KB (924545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1617468ce1fbfd0e03264a5781a77fb93833a20481b077d3f053df83889d331c`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18db64bed134f6515f13fed64f7d2e629d0add8f5791d66a6d31f543069c201c`  
		Last Modified: Tue, 14 Jul 2026 03:04:31 GMT  
		Size: 261.4 MB (261363433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:7706c19a28254361abe7149d52bea03babf9c3d6d25dc001e5080a688d0b0350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12829998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1219c7d8c996f4c8000ef53cce42fe27161df0a716d207ae561a300982718cfa`

```dockerfile
```

-	Layers:
	-	`sha256:fbbe9c4fa5341c36e5470c4284f9f1d4fec525aba005a647a84fe9f655277cae`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 12.8 MB (12810839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbdad2e1ebdf5e2b972939ea60ae350d1fd8a1be48d7da31855630cfd86b48d6`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 19.2 KB (19159 bytes)  
		MIME: application/vnd.in-toto+json

## `r-base:latest`

```console
$ docker pull r-base@sha256:c64a34ddb6c3955f1df3d5f7519435ca3698007b03af47d67ad9f8ce75a72b47
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
$ docker pull r-base@sha256:1c19e544c2cf1f60e83d8f78f5a3f94f006a710883cbd18e3ccc49ca17d6075e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.2 MB (369226664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51433bd08278ae88c39bb956260ddf33ca901d907ce6c57fb3a31ac8e3a93781`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:36:50 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 01:36:50 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 01:36:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:36:57 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 01:36:57 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 01:36:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 01:36:57 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 01:36:57 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 01:37:35 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:37:35 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:9e0242bb3da2f89ebd64e68593da72e3f7d5152d2413ce055d3ec9310ddb927a`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 48.9 MB (48865333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941121b479cd86320b2ed4eeefcae5ddd8471ebe054ab16b2b4f0f825681a319`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaaad6712832460690de525e5890b9a74f46c64464078fc8e0cd36a5c5106fe1`  
		Last Modified: Tue, 14 Jul 2026 01:38:13 GMT  
		Size: 27.1 MB (27092789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137f6202f11366e88fc9bb1e024c06436a551acf6ac7aa27b394010ad2cce49`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 868.5 KB (868489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd2cbe236e4fbee28fcfa26ae78c54d42084e79e6c5c8cd8796f378690eb9de`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70836c0877b44f773d32b8ed3f060ce7a8bd84def0c1fc179c7311bc5ed24840`  
		Last Modified: Tue, 14 Jul 2026 01:38:19 GMT  
		Size: 292.4 MB (292396323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:ff4b8baf742c19892388736ee9eb2cdd59894e5d5cac043ed3d50ebaab489313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13004212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537960d4dbca9a21f436645d42f7dae8d50559496a8046f25c5ab546dadd5f28`

```dockerfile
```

-	Layers:
	-	`sha256:f8734e0cfc5823b174b225bb2b22ea44bfeae9a27ff610dfbc652b2ec09edc44`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 13.0 MB (12985053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2517266d8f4aa1f969dcf7498e07543b1842886883fd8d7c91c9dfa72825fcf8`  
		Last Modified: Tue, 14 Jul 2026 01:38:12 GMT  
		Size: 19.2 KB (19159 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:399af81927d9121563ad6dfc0887b6e53033b7f44d93a2131ab286b6472e676f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352830421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a53012faff3b74eba811ffd26d4bea400e8f5744d1a89f3f476a1b5bc4988e`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 01:39:42 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 01:39:42 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 01:39:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:39:51 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 01:39:51 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 01:39:51 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 01:39:51 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 01:39:51 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 01:40:33 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:40:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:e24d577d84750492035e9c782071fab720554e89588f20e1fec36b9494c91758`  
		Last Modified: Tue, 14 Jul 2026 00:14:31 GMT  
		Size: 48.9 MB (48890604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04be8d77a945d2165c6b70fb719f0fc97e6c295924bd5100562b31d49ff18fac`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68b56565ef121ad9f8bbafbe9ec0dd2915bdccebdc8f676bf1ff05df90f6871`  
		Last Modified: Tue, 14 Jul 2026 01:41:12 GMT  
		Size: 26.9 MB (26943790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b790a22e16c6c002d8420104c07239d43b58221b6461f72035e54f42a0f74a35`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 868.5 KB (868487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2753aeebc8961afc9e75c5e3e413b099b92bc065eb063d906e1e9e2dd62b1a1d`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685c4d77e48a69c4a8d0fdd29e90b10e8f0b4cf99e91140a6e81c92de6dffaa9`  
		Last Modified: Tue, 14 Jul 2026 01:41:17 GMT  
		Size: 276.1 MB (276123809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:da8e392032e557dca0a3bacc3da9c2ec3ec049b3c604d985108bbd06f67b7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13129552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0299afd6405c68808fbf66be4869a9537c312e989a452b97e0f4d4f4f0fca670`

```dockerfile
```

-	Layers:
	-	`sha256:a81e2d6cdeccbb799300dca4d740b2cd6b7ce7f960951208d4b74cce62d4ee3f`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 13.1 MB (13110253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01589012be02d2b84f65364f20988ef9c339f56abf62c99b4eb6dcdb8702cbac`  
		Last Modified: Tue, 14 Jul 2026 01:41:11 GMT  
		Size: 19.3 KB (19299 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:bdd687fa2a460dada12b42299df18b7b72472356062a4b13e829d0f7f9912a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.3 MB (365303414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed98bf11d6b4f0a8fc26450ab57f977bc2cfd51ea264b7fcfd57f8e07824c016`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 03:36:12 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 03:36:12 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 03:36:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:36:41 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 03:36:41 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 03:36:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 03:36:42 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 03:36:42 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 03:39:30 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:30 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:c4bbcdef50229f306b20d248290cf496460d990fdb6d2f6bbf320c123de65229`  
		Last Modified: Tue, 14 Jul 2026 00:15:12 GMT  
		Size: 54.2 MB (54187398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fa92fbbf69945466b74972422a8bbdc8d9e75a7522f2d68070c97579c5d823`  
		Last Modified: Tue, 14 Jul 2026 03:41:09 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2830b910c34a78b0a1c3ad06c1b2b0b280feb5338fa3656ddbb23af60ed88e`  
		Last Modified: Tue, 14 Jul 2026 03:41:10 GMT  
		Size: 27.4 MB (27413867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b283a2321bfd826fa2fa39be892e3fb1abb14eca1dfeda634fc851da7532bf97`  
		Last Modified: Tue, 14 Jul 2026 03:41:09 GMT  
		Size: 868.5 KB (868488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1c00a042a81d12d18fa5fa548ac8cda00bf15fe59524a433d90546e48374bd`  
		Last Modified: Tue, 14 Jul 2026 03:41:10 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863cf784d21d781c96dc951f651ab81f4759c92a7853e10fcc334ab2db7a163`  
		Last Modified: Tue, 14 Jul 2026 03:41:17 GMT  
		Size: 282.8 MB (282829927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:0ac1e91944027a7b4b2097b1407b2e1b41f6f1c1bbd3d603c877cd9c4e403d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13013698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c66df73a39d6029304c87432d45d4992ff3a70bd1ec2d2fc6d6b10f826b415c`

```dockerfile
```

-	Layers:
	-	`sha256:36fbb07f944104c1e340832cb79dbff6be20baaa453faca5f33861b64e11fefa`  
		Last Modified: Tue, 14 Jul 2026 03:41:10 GMT  
		Size: 13.0 MB (12994498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70046a3739383289e9f79e2fa969869fff7ef4068b2e058aa3f56422734480c9`  
		Last Modified: Tue, 14 Jul 2026 03:41:09 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:5e2af37bc1ed812a6167e027b75172d6d924ee191a76ba95b71eb466579a76e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337932368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4efc009e9f96cd9c42024d891fa8d4c7cd2919d848d688ecce4931838b58a34`
-	Default Command: `["R"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1783900800'
# Tue, 14 Jul 2026 03:02:36 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 14 Jul 2026 03:02:36 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 14 Jul 2026 03:02:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:02:46 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 14 Jul 2026 03:02:46 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 14 Jul 2026 03:02:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 14 Jul 2026 03:02:46 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 14 Jul 2026 03:02:46 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 14 Jul 2026 03:03:34 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:03:34 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:f6a94ce2329c5fa4caf98783b99d3339a863ea3f00b11f91e4f19cdd64d8e002`  
		Last Modified: Tue, 14 Jul 2026 00:16:35 GMT  
		Size: 48.6 MB (48600735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89609dd91208fb635599c19e1d3e80e854fa552a4d1baa42b843699e8f316e3b`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ce8bbe4b7c97841336d440c08d112334e254f073fdcca86e53f9641bfda575`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 27.0 MB (27039926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810648528d216a4edbc876df788e2af1f5e05f1e0cef2f48df6a3c9ec6af9c63`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 924.5 KB (924545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1617468ce1fbfd0e03264a5781a77fb93833a20481b077d3f053df83889d331c`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18db64bed134f6515f13fed64f7d2e629d0add8f5791d66a6d31f543069c201c`  
		Last Modified: Tue, 14 Jul 2026 03:04:31 GMT  
		Size: 261.4 MB (261363433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:7706c19a28254361abe7149d52bea03babf9c3d6d25dc001e5080a688d0b0350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12829998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1219c7d8c996f4c8000ef53cce42fe27161df0a716d207ae561a300982718cfa`

```dockerfile
```

-	Layers:
	-	`sha256:fbbe9c4fa5341c36e5470c4284f9f1d4fec525aba005a647a84fe9f655277cae`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 12.8 MB (12810839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbdad2e1ebdf5e2b972939ea60ae350d1fd8a1be48d7da31855630cfd86b48d6`  
		Last Modified: Tue, 14 Jul 2026 03:04:26 GMT  
		Size: 19.2 KB (19159 bytes)  
		MIME: application/vnd.in-toto+json
