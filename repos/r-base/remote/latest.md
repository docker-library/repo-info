## `r-base:latest`

```console
$ docker pull r-base@sha256:ad9b3bbca751f3ead77704fed4c20246127647b3d567b2bf970b7789e8d7b9a8
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
$ docker pull r-base@sha256:edde7a35771d813788962772dad4de39ad9759e63708b65c8718dde006d85ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.3 MB (381321798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0811f9b7a3d8293c1cc7ac14bb24ddb9651887301a56ce8a27758c63721c664b`
-	Default Command: `["R"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:38:32 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 21 Oct 2026 00:38:32 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:38:40 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 21 Oct 2026 00:38:40 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 00:38:40 GMT
ENV LANG=en_US.UTF-8
# Wed, 21 Oct 2026 00:38:40 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 21 Oct 2026 00:38:40 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 21 Oct 2026 00:39:17 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:17 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:01f4af150f35cf8c0660aa106c98e4ada817b99a2d56c58d15242daddd3f56cf`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 49.8 MB (49814332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd04df105d2115df479e793c224c32379504239eb5403a78b35d0bb7a1d27a06`  
		Last Modified: Wed, 21 Oct 2026 00:39:56 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec9370487029f2179fcc166c03982b6204cc7b6a4289f2841086320609948cd`  
		Last Modified: Wed, 21 Oct 2026 00:39:57 GMT  
		Size: 27.2 MB (27226212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0100d900b2eb0bc63f24e2159affd2dea6ffa11f9ebaa3a89dd7cd835e95e6`  
		Last Modified: Wed, 21 Oct 2026 00:39:56 GMT  
		Size: 868.6 KB (868645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513ebef5adef77699d08074de9d462a11fe0f62a0187085e2657d56faa7c7e55`  
		Last Modified: Wed, 21 Oct 2026 00:39:56 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adeb020b96fcc09bc888da80abf695cabc5dc78db64531b6b2ee9de1714eb03`  
		Last Modified: Wed, 21 Oct 2026 00:40:04 GMT  
		Size: 303.4 MB (303408880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:ac913bbe8e08d072795092afdb03804c3ef68113d01e2b226fdab566963f16b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13026820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1899e08fe17679b9ecf7c59447f17bb89a06dbacffd17bf57595f1466d7e28`

```dockerfile
```

-	Layers:
	-	`sha256:c25119e630626500b9e4407b423e82fc55dd985159f9e86aad02279f103fb59d`  
		Last Modified: Wed, 21 Oct 2026 00:39:57 GMT  
		Size: 13.0 MB (13007660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9c5a40a317b3c188bb217f3cd28bf2a9072991c0599bc8724137ee1fd8dbdfe`  
		Last Modified: Wed, 21 Oct 2026 00:39:56 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:b61fa6eb73deda0a6b5dc9d0fb7a7bd8495f4529536408368f79a918e9fd6c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.0 MB (363036499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ec2f18857382f65a9ecb4df40bf8f865899d6da95caa3ffb083e51c5cb9d59`
-	Default Command: `["R"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:41:40 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 21 Oct 2026 00:41:40 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 21 Oct 2026 00:41:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:49 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 21 Oct 2026 00:41:49 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 00:41:49 GMT
ENV LANG=en_US.UTF-8
# Wed, 21 Oct 2026 00:41:49 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 21 Oct 2026 00:41:49 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 21 Oct 2026 00:42:32 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:42:32 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:e39da357b55f2c6e80d7112a1c30dfc8e12212feece4c704fe3ee09e191a593f`  
		Last Modified: Tue, 20 Oct 2026 23:30:36 GMT  
		Size: 49.1 MB (49142446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1e135bbb41f5743effb7ea7fe70d4ae0844de3c47e821f7e893f2ea1f111bc`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18092d4d153174edd4726338c64316b67b262a1721243b21db7209b717beee02`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 27.1 MB (27053276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e365ffa66e92aaf4a1cd423591dceb4aa2a77464d33abd836df9418e51e091bb`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 868.7 KB (868665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a086368dc2774803d260a2dfed8919dcd0c644418145383cfdf77e65512b487c`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99249f72e80377228927605cc1ed2b5ef498016fce03e0fbf92f34dee5cefda`  
		Last Modified: Wed, 21 Oct 2026 00:43:18 GMT  
		Size: 286.0 MB (285968381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:5e569553ca900b04e919b056ebf08a8c67381d1c2d8a95245e9dc92681a9121c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13148272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c013910e87151f83a5d19ba60ed080ea496360e57f6367156399911201d77a8`

```dockerfile
```

-	Layers:
	-	`sha256:8b77ab75f560e480e8d30e7094ca00acd7eb3a8517becba4655dc7551f5ae527`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 13.1 MB (13128972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e105db202385b0fcf26b3b4b6c08fe4fc7a0f1583f3739ff7ac8bffa42009180`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:2661d7cb0676a535c8c0317ddccbe3a04f667b7da648625648aa3e2340f766f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374452450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d92f3ab098e2e24cb00d7770af10fca1ab5bea3e748c7d81f45c1a5be2009c`
-	Default Command: `["R"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 04:03:59 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 21 Oct 2026 04:03:59 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 21 Oct 2026 04:04:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:04:53 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 21 Oct 2026 04:04:53 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 04:04:53 GMT
ENV LANG=en_US.UTF-8
# Wed, 21 Oct 2026 04:04:54 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 21 Oct 2026 04:04:54 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 21 Oct 2026 04:07:57 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:07:57 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:f71c44fd4abcbc105edc2014324e694ae5e33581f182e5bb9c661420d6335ffe`  
		Last Modified: Tue, 20 Oct 2026 23:34:37 GMT  
		Size: 54.5 MB (54501622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910d8d6e626b70fe075e88f0fe75fed0094f023a123afea73c4d048b700eb06`  
		Last Modified: Wed, 21 Oct 2026 04:09:33 GMT  
		Size: 3.3 KB (3326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d21fb36adfcbdf81c07f1d460afcc0b586df8366f089a7dfc91763c936ef5c`  
		Last Modified: Wed, 21 Oct 2026 04:09:34 GMT  
		Size: 27.5 MB (27525684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be13c31ce9c8714b371e0e8c132d2935a1f7121d19eee44dc1670380d826ec03`  
		Last Modified: Wed, 21 Oct 2026 04:09:33 GMT  
		Size: 868.7 KB (868673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301b09508c5fb45aee1ebba86b8191c9fb45646d4fd2849b1e9cc49741522c44`  
		Last Modified: Wed, 21 Oct 2026 04:09:32 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddf204b83707aece5941fdada04b1d78d4a14bfca78189cdb537b93c0ffbd27`  
		Last Modified: Wed, 21 Oct 2026 04:09:40 GMT  
		Size: 291.6 MB (291552723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:f2f617ff47f69528f0622467d2792837b818e9b4df4a4f5396a6bb1df4cf2773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13039864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a5842453b62a019d2e57175fdc5dc1ce2595f3e89c3261f65f5617b00c4d4ef`

```dockerfile
```

-	Layers:
	-	`sha256:5790e20a77b5743f0e19257824d81472194b2729d84abc99c1dcf6ba64684a66`  
		Last Modified: Wed, 21 Oct 2026 04:09:33 GMT  
		Size: 13.0 MB (13020664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecc3dd53fb8185b1e032ff15897e4c9e944b8c0d3cff6bf0a9ac8b3b4f4f21cd`  
		Last Modified: Wed, 21 Oct 2026 04:09:32 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:10e1f70d06bd99781c083582fdbf1b793d48144719187ca1678e6231b76df0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346229185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be7ecfbb8ead06bdadb4e838d89b68a9e83310fe345741ac522f6aa0762c6e4`
-	Default Command: `["R"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 01:04:09 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 21 Oct 2026 01:04:09 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 21 Oct 2026 01:04:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:04:18 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 21 Oct 2026 01:04:18 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 01:04:18 GMT
ENV LANG=en_US.UTF-8
# Wed, 21 Oct 2026 01:04:18 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 21 Oct 2026 01:04:18 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 21 Oct 2026 01:05:01 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:05:01 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:1caba6ebfedbf6ec13e624b864c7aa0bf265b5cf2ff503cd1c6b8d87729c54a6`  
		Last Modified: Tue, 20 Oct 2026 23:29:57 GMT  
		Size: 48.9 MB (48912050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0534929d2ebeeaf29bc676ded134e2516826f1e1fd92c16455b1cee708ded1ca`  
		Last Modified: Wed, 21 Oct 2026 01:05:53 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ca09736a50a35c30877b842de55fc7c85f0834671005258396cde14045335c`  
		Last Modified: Wed, 21 Oct 2026 01:05:53 GMT  
		Size: 27.1 MB (27146033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e43c88820679bc0c877c9e283aec84577a7be9616268cd442a009dcb1d01a1`  
		Last Modified: Wed, 21 Oct 2026 01:05:53 GMT  
		Size: 924.7 KB (924714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e04bdd5257ccfb55bd5365148d8417912435634b1086b3cad2bfa715379f9d`  
		Last Modified: Wed, 21 Oct 2026 01:05:53 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab462b0c235ee42c20527baa134658bbe23c062688e08d280a7a80bd6dc94fc0`  
		Last Modified: Wed, 21 Oct 2026 01:05:58 GMT  
		Size: 269.2 MB (269242657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:730e696133a5b26d20da28c2d63f01c897b731e32d7c51778b2669e3380a51ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12855829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e516e2a17d945eee4335272760b2b98be6fa24420f4764e9be21619a58f7c44`

```dockerfile
```

-	Layers:
	-	`sha256:51a31d7bedc7aea8f0390fffab9b306bfc07c13aec44a770bc898f14081c78f2`  
		Last Modified: Wed, 21 Oct 2026 01:05:53 GMT  
		Size: 12.8 MB (12836669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:668a59d24f11642997eb89a9064eb1073f85a528f69cde02e7d8c1fbab784b90`  
		Last Modified: Wed, 21 Oct 2026 01:05:53 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json
