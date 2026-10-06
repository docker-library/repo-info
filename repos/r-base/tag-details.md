<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:4.6.1`](#r-base461)
-	[`r-base:latest`](#r-baselatest)

## `r-base:4.6.1`

```console
$ docker pull r-base@sha256:198bf78cd85f5355173832ce3713921614c229752fcb4e0e7cb51b7713f745f7
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
$ docker pull r-base@sha256:3f8ae572dcbf1030d519c1713827f65f49a4561b2609bec8f011e85589bf56ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395525121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642bcd2aeaf6845595ef5d16d62a22a535f4fcd3553148f63a2be585f927d261`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:33:38 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 01:33:38 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 01:33:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:47 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 01:33:47 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 01:33:47 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 01:33:47 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 01:33:47 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 01:34:33 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:34:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:65fa1856b3fcf0aaf689bf19470dc9b767c643904ac974ee6324bb352a294cad`  
		Last Modified: Tue, 06 Oct 2026 00:13:41 GMT  
		Size: 49.6 MB (49649157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350a9e5d5ceda0c17e1a206381ec3b52ec82c26f64093ac12d154163bd42eed3`  
		Last Modified: Tue, 06 Oct 2026 01:35:16 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26d90710bd256f2af9e722df7d9bb4c42f989343de9f12ef1891b8efc433e04`  
		Last Modified: Tue, 06 Oct 2026 01:35:18 GMT  
		Size: 27.2 MB (27226376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed52524677400a9db61a52a439d6e657f9696efa5d35c1428b291d96dee3c4a`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 868.7 KB (868674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6e7be1a5d54127b9a50733c8691056c25f9afdfe6677c9dc5efd506f3ac7c7`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edaa2660da4618c6e2e1087f0e45da5c783e523638f15b76d8382647aefa6f4`  
		Last Modified: Tue, 06 Oct 2026 01:35:24 GMT  
		Size: 317.8 MB (317777182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:cb047d8cd902f3af3f3cd242b2ec3c9dc0107bdd0a0bb49f16bdb580cd23fb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13036869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f62c619049a8f59cc39898eaa0ef3766c54b12407fb00690470cc44054548f`

```dockerfile
```

-	Layers:
	-	`sha256:330e29ca13126a8d25313220307ef1b3d71a4898a6e2b287127273584fdea7af`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 13.0 MB (13017709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299ced7d733ae2256d8692f331cb36450b6fe524c8fb5f5bf4de0c1991a8f466`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:ad0f70fdc3273cae681cfd3c0bc4ff05842ef9e63d9868d4469e906cad2e8205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377300666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9fa45befbae6750dbfa70698b81afe70928e57f6ea46177deaf54ce915f2d4`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:36:37 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 01:36:37 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 01:36:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:36:45 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 01:36:45 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 01:36:45 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 01:36:45 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 01:36:45 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 01:37:33 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:12d1d72ad8cd584e48c2758a1a3ecd8200db1230d16c5a9882b9da871cd754e9`  
		Last Modified: Tue, 06 Oct 2026 00:13:52 GMT  
		Size: 49.0 MB (49047939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29350ad05b9b69505eed6f1e0712ca66ac9c62f424e3a5b8386f5cbf51b2906`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654dd5c78cb2cd93ce558820a89902b12c78d47e5cf66ff0a075bf4470778d73`  
		Last Modified: Tue, 06 Oct 2026 01:38:13 GMT  
		Size: 27.0 MB (27041891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3abef0528368df24d25a2ac11d613131442a7dcf76ff3ad9cafb693ead3035`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 868.7 KB (868671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffaec8aa92ab3f8585e682f15937ab35954f994b992fc121fde71617c915925`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581481e570d793a6478464266caa4f606f5a216d0c42da579c10e9a8072c2667`  
		Last Modified: Tue, 06 Oct 2026 01:38:19 GMT  
		Size: 300.3 MB (300338434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:9ac6f10d2f8edd2d5d8bbba7e807742414b9c78c456bb0a0b4fe21ec5a115209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13158960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af89affddaa6c8f67802dffb03b65e552e0dd0a66b8ca9619f3d56fb27bcc33`

```dockerfile
```

-	Layers:
	-	`sha256:4702f1b0eac9419daeea44b1f8ed626e140a2e210888d93bb993112078a25290`  
		Last Modified: Tue, 06 Oct 2026 01:38:12 GMT  
		Size: 13.1 MB (13139660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11826583e63a8328762fbe20261483df279186b58049090fca56540f1096063a`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; ppc64le

```console
$ docker pull r-base@sha256:4529612233cf242eb9a4804d712114cdf42780035791dcf28d99b01c76b5e529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.5 MB (389451953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d9d99e644a6f8c65a9e7c985de20073908ae6ab3b7ac857e1cf7f4a419d02`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 04:20:47 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 04:20:47 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 04:22:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:22:04 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 04:22:04 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 04:22:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 04:22:05 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 04:22:05 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 04:26:58 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:26:58 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:26d67b9953850eb63391bbdd03ba3d4c1f5fe54668bb4b335957280542faa5bb`  
		Last Modified: Tue, 06 Oct 2026 00:15:33 GMT  
		Size: 54.3 MB (54325016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ff1a3bef3d4a9eaf92417416bf8cf4a38bfd3ec2e3ae57de1c3d03b8f2f57`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b1dddefcc7775930047fb7112647c39d7eae23887e975b6c0fe7f0b73400fa`  
		Last Modified: Tue, 06 Oct 2026 04:28:29 GMT  
		Size: 27.5 MB (27514633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0346c5974f05e5725b1d69c4725d8745d3b6e497bee3299a50df0697e3b0ac4`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 868.7 KB (868667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43b18357cdf7af213fdc19062fcbdb3ce27c2c82a5e72a7bd3cc82c6b26ddd5`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8576520fe285f2dfa2cec87603f2ea855d9385717d8efcaa9bc876249f236c9f`  
		Last Modified: Tue, 06 Oct 2026 04:28:36 GMT  
		Size: 306.7 MB (306739900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:5a090915ec5830c72c62d4114d6ccb2d85a0580a2b5affd4d72ee2d15d8865d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13049942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b2e56e661595b3b829392a55ba894d3a48d845cb9ac9ce15f3223cd5e84b5a`

```dockerfile
```

-	Layers:
	-	`sha256:965581362713d4fa9c41c1a278a0c93afc51ad8008ad966db960684b7b147ce9`  
		Last Modified: Tue, 06 Oct 2026 04:28:29 GMT  
		Size: 13.0 MB (13030742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098829c55e491ead544ba98089181b6a54d12dd6c75a5a5e00d77d8bc3c7f2b9`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; s390x

```console
$ docker pull r-base@sha256:8b9ddcc2a388034902265caa695fa72b96ae57062973e98a71715a5bb75332bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.8 MB (359835109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f183587776346e562bcdcb0d5eed7f8e459223fdb4098a40ac4a7a24455abb3`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:51:58 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 01:51:58 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 01:52:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:07 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 01:52:07 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 01:52:07 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 01:52:07 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 01:52:07 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 01:52:58 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:58 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:77283ff3eba634cbb92d1cf5e9f32e5c44d706e7e0096a2cb14d3fa15d402059`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 48.8 MB (48824600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b46c0a2616959c458ea1b9108da41bd134ebeffa19174125dfda4c16224eff8`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676f779423a91d5d13ca62ec7aa80bf78ecec78befc03017a6e384419770a0`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 27.1 MB (27145674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ec26a9a1481bf3ef7414607e7b80a42c17a4a7caf2b7052f6dd7072afbf37f`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 924.7 KB (924711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b08bd82d2f62542f8ebb4e012bfd9356492075887e05d52ae4f495ed4075ab1`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea61ffbb9d82e6f2299530896d083537a97461d1aa7797fdfb171d8cb3b78944`  
		Last Modified: Tue, 06 Oct 2026 01:53:56 GMT  
		Size: 282.9 MB (282936391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:6b2ec22c8f5255154c6d8b25f3e45f41131d012088cfe4454485b235d03a10a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12865901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbf04228cab36efa580d5ad045cbf57d7a5af64b551393993a9a2ea7e729c69`

```dockerfile
```

-	Layers:
	-	`sha256:e40bea63e47685f60b9069e9373525bea29a8c5482d31ea9b490636a160bf4a9`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 12.8 MB (12846741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15f189d65d5a3950b123eb52047eda621ab86bad68732210541ba2f48d3cad14`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

## `r-base:latest`

```console
$ docker pull r-base@sha256:198bf78cd85f5355173832ce3713921614c229752fcb4e0e7cb51b7713f745f7
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
$ docker pull r-base@sha256:3f8ae572dcbf1030d519c1713827f65f49a4561b2609bec8f011e85589bf56ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395525121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642bcd2aeaf6845595ef5d16d62a22a535f4fcd3553148f63a2be585f927d261`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:33:38 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 01:33:38 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 01:33:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:47 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 01:33:47 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 01:33:47 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 01:33:47 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 01:33:47 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 01:34:33 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:34:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:65fa1856b3fcf0aaf689bf19470dc9b767c643904ac974ee6324bb352a294cad`  
		Last Modified: Tue, 06 Oct 2026 00:13:41 GMT  
		Size: 49.6 MB (49649157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350a9e5d5ceda0c17e1a206381ec3b52ec82c26f64093ac12d154163bd42eed3`  
		Last Modified: Tue, 06 Oct 2026 01:35:16 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26d90710bd256f2af9e722df7d9bb4c42f989343de9f12ef1891b8efc433e04`  
		Last Modified: Tue, 06 Oct 2026 01:35:18 GMT  
		Size: 27.2 MB (27226376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed52524677400a9db61a52a439d6e657f9696efa5d35c1428b291d96dee3c4a`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 868.7 KB (868674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6e7be1a5d54127b9a50733c8691056c25f9afdfe6677c9dc5efd506f3ac7c7`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edaa2660da4618c6e2e1087f0e45da5c783e523638f15b76d8382647aefa6f4`  
		Last Modified: Tue, 06 Oct 2026 01:35:24 GMT  
		Size: 317.8 MB (317777182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:cb047d8cd902f3af3f3cd242b2ec3c9dc0107bdd0a0bb49f16bdb580cd23fb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13036869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f62c619049a8f59cc39898eaa0ef3766c54b12407fb00690470cc44054548f`

```dockerfile
```

-	Layers:
	-	`sha256:330e29ca13126a8d25313220307ef1b3d71a4898a6e2b287127273584fdea7af`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 13.0 MB (13017709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299ced7d733ae2256d8692f331cb36450b6fe524c8fb5f5bf4de0c1991a8f466`  
		Last Modified: Tue, 06 Oct 2026 01:35:17 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:ad0f70fdc3273cae681cfd3c0bc4ff05842ef9e63d9868d4469e906cad2e8205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377300666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9fa45befbae6750dbfa70698b81afe70928e57f6ea46177deaf54ce915f2d4`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:36:37 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 01:36:37 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 01:36:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:36:45 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 01:36:45 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 01:36:45 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 01:36:45 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 01:36:45 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 01:37:33 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:12d1d72ad8cd584e48c2758a1a3ecd8200db1230d16c5a9882b9da871cd754e9`  
		Last Modified: Tue, 06 Oct 2026 00:13:52 GMT  
		Size: 49.0 MB (49047939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29350ad05b9b69505eed6f1e0712ca66ac9c62f424e3a5b8386f5cbf51b2906`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654dd5c78cb2cd93ce558820a89902b12c78d47e5cf66ff0a075bf4470778d73`  
		Last Modified: Tue, 06 Oct 2026 01:38:13 GMT  
		Size: 27.0 MB (27041891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3abef0528368df24d25a2ac11d613131442a7dcf76ff3ad9cafb693ead3035`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 868.7 KB (868671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffaec8aa92ab3f8585e682f15937ab35954f994b992fc121fde71617c915925`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581481e570d793a6478464266caa4f606f5a216d0c42da579c10e9a8072c2667`  
		Last Modified: Tue, 06 Oct 2026 01:38:19 GMT  
		Size: 300.3 MB (300338434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:9ac6f10d2f8edd2d5d8bbba7e807742414b9c78c456bb0a0b4fe21ec5a115209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13158960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af89affddaa6c8f67802dffb03b65e552e0dd0a66b8ca9619f3d56fb27bcc33`

```dockerfile
```

-	Layers:
	-	`sha256:4702f1b0eac9419daeea44b1f8ed626e140a2e210888d93bb993112078a25290`  
		Last Modified: Tue, 06 Oct 2026 01:38:12 GMT  
		Size: 13.1 MB (13139660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11826583e63a8328762fbe20261483df279186b58049090fca56540f1096063a`  
		Last Modified: Tue, 06 Oct 2026 01:38:11 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:4529612233cf242eb9a4804d712114cdf42780035791dcf28d99b01c76b5e529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.5 MB (389451953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d9d99e644a6f8c65a9e7c985de20073908ae6ab3b7ac857e1cf7f4a419d02`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 04:20:47 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 04:20:47 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 04:22:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:22:04 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 04:22:04 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 04:22:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 04:22:05 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 04:22:05 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 04:26:58 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:26:58 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:26d67b9953850eb63391bbdd03ba3d4c1f5fe54668bb4b335957280542faa5bb`  
		Last Modified: Tue, 06 Oct 2026 00:15:33 GMT  
		Size: 54.3 MB (54325016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59ff1a3bef3d4a9eaf92417416bf8cf4a38bfd3ec2e3ae57de1c3d03b8f2f57`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b1dddefcc7775930047fb7112647c39d7eae23887e975b6c0fe7f0b73400fa`  
		Last Modified: Tue, 06 Oct 2026 04:28:29 GMT  
		Size: 27.5 MB (27514633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0346c5974f05e5725b1d69c4725d8745d3b6e497bee3299a50df0697e3b0ac4`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 868.7 KB (868667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43b18357cdf7af213fdc19062fcbdb3ce27c2c82a5e72a7bd3cc82c6b26ddd5`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8576520fe285f2dfa2cec87603f2ea855d9385717d8efcaa9bc876249f236c9f`  
		Last Modified: Tue, 06 Oct 2026 04:28:36 GMT  
		Size: 306.7 MB (306739900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:5a090915ec5830c72c62d4114d6ccb2d85a0580a2b5affd4d72ee2d15d8865d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13049942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b2e56e661595b3b829392a55ba894d3a48d845cb9ac9ce15f3223cd5e84b5a`

```dockerfile
```

-	Layers:
	-	`sha256:965581362713d4fa9c41c1a278a0c93afc51ad8008ad966db960684b7b147ce9`  
		Last Modified: Tue, 06 Oct 2026 04:28:29 GMT  
		Size: 13.0 MB (13030742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098829c55e491ead544ba98089181b6a54d12dd6c75a5a5e00d77d8bc3c7f2b9`  
		Last Modified: Tue, 06 Oct 2026 04:28:28 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:8b9ddcc2a388034902265caa695fa72b96ae57062973e98a71715a5bb75332bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.8 MB (359835109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f183587776346e562bcdcb0d5eed7f8e459223fdb4098a40ac4a7a24455abb3`
-	Default Command: `["R"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:51:58 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 06 Oct 2026 01:51:58 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 06 Oct 2026 01:52:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:07 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 06 Oct 2026 01:52:07 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 01:52:07 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Oct 2026 01:52:07 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 06 Oct 2026 01:52:07 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 06 Oct 2026 01:52:58 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:58 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:77283ff3eba634cbb92d1cf5e9f32e5c44d706e7e0096a2cb14d3fa15d402059`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 48.8 MB (48824600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b46c0a2616959c458ea1b9108da41bd134ebeffa19174125dfda4c16224eff8`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f676f779423a91d5d13ca62ec7aa80bf78ecec78befc03017a6e384419770a0`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 27.1 MB (27145674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ec26a9a1481bf3ef7414607e7b80a42c17a4a7caf2b7052f6dd7072afbf37f`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 924.7 KB (924711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b08bd82d2f62542f8ebb4e012bfd9356492075887e05d52ae4f495ed4075ab1`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea61ffbb9d82e6f2299530896d083537a97461d1aa7797fdfb171d8cb3b78944`  
		Last Modified: Tue, 06 Oct 2026 01:53:56 GMT  
		Size: 282.9 MB (282936391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:6b2ec22c8f5255154c6d8b25f3e45f41131d012088cfe4454485b235d03a10a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12865901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbf04228cab36efa580d5ad045cbf57d7a5af64b551393993a9a2ea7e729c69`

```dockerfile
```

-	Layers:
	-	`sha256:e40bea63e47685f60b9069e9373525bea29a8c5482d31ea9b490636a160bf4a9`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 12.8 MB (12846741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15f189d65d5a3950b123eb52047eda621ab86bad68732210541ba2f48d3cad14`  
		Last Modified: Tue, 06 Oct 2026 01:53:51 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json
