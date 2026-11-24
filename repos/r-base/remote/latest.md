## `r-base:latest`

```console
$ docker pull r-base@sha256:5e9d21c92dc45630f439aa9931212387d0852227bcfbd1615b10286c4552d12d
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
$ docker pull r-base@sha256:badb8c8cfeaa02fb4e7545881891569b355d202c6e572a4e8b5f62219d02dc09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.0 MB (386958203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c334929e6a4a29c9981f833d95e8182dcf9c45d8ed535a310db7105f741753`
-	Default Command: `["R"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:31:02 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 24 Nov 2026 04:31:02 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 24 Nov 2026 04:31:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:31:10 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 24 Nov 2026 04:31:10 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 24 Nov 2026 04:31:10 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 04:31:10 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 24 Nov 2026 04:31:10 GMT
ENV R_BASE_VERSION=4.6.2
# Tue, 24 Nov 2026 04:31:58 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:31:58 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:894c99e7929b6dd8a6d3d7b2bec705e1055dc87b70b70d04215bf5a659f20727`  
		Last Modified: Tue, 24 Nov 2026 03:40:18 GMT  
		Size: 50.8 MB (50824476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652f8d9a6d4146fba4cb30b88fe4b963d420c97041382936eac489b639bb29dc`  
		Last Modified: Tue, 24 Nov 2026 04:32:35 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec9243d0a65486720cdff456ff84f172b402bad9d78e976f70278d36e938e64`  
		Last Modified: Tue, 24 Nov 2026 04:32:36 GMT  
		Size: 27.3 MB (27295188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e931921aca8c75037825773f395ac6aca45f954cbcdbd744316f878c99d4df21`  
		Last Modified: Tue, 24 Nov 2026 04:32:35 GMT  
		Size: 868.6 KB (868643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3e8e868aff862ce7a4948be4a4b1c299737b6efd7ab6b02928f7a350d04aa8`  
		Last Modified: Tue, 24 Nov 2026 04:32:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8a6505ca8f1eefe67d7ef0b1fe2ad349938dc95bd5ee52af939a8c31c12cd9`  
		Last Modified: Tue, 24 Nov 2026 04:32:43 GMT  
		Size: 308.0 MB (307966165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:1876d4cea1ad02e42060b87028e98f4bd881a8772c7d2ba184b5df81ee8b980a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13082885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a031440a9d4afa81435a3f0b1f1b87ef1fbbf1ddae1b03f4a70d7e2f2bd037`

```dockerfile
```

-	Layers:
	-	`sha256:ca48fabf1cc703429f4ad9d021d558dbdc9e737f37e968821c46011abb8454db`  
		Last Modified: Tue, 24 Nov 2026 04:32:36 GMT  
		Size: 13.1 MB (13063725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ce65abbface38edad2bc66cf3fadade8611dcd2d7f94ca84654a3973ab516ac`  
		Last Modified: Tue, 24 Nov 2026 04:32:36 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:68b2f5c6bb8fea0e19b020b80557e3a649775c0507c8e7d15eb250e5bcf50822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.8 MB (367792715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fce8a3285f9374d11b61291c519759c846cd0d90f7eb8507d8d8c97056c5c3`
-	Default Command: `["R"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:34:54 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 24 Nov 2026 04:34:54 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 24 Nov 2026 04:35:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:35:03 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 24 Nov 2026 04:35:03 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 24 Nov 2026 04:35:03 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 04:35:04 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 24 Nov 2026 04:35:04 GMT
ENV R_BASE_VERSION=4.6.2
# Tue, 24 Nov 2026 04:35:53 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:35:53 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:01607144353775a70d512c3abff11b6d05d618e99c9005fa4a970fb5a9dd1b9a`  
		Last Modified: Tue, 24 Nov 2026 03:41:00 GMT  
		Size: 50.0 MB (49959533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0785d07657ccf4cfad1b127f7c11bfb5fd463b733e1b10978702aca76440b16`  
		Last Modified: Tue, 24 Nov 2026 04:36:30 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a16d284a4772987de07c9da54c8a9b5a5301c413e3aac6e2968e441971000b5`  
		Last Modified: Tue, 24 Nov 2026 04:36:31 GMT  
		Size: 27.1 MB (27070707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7741e1f794e4783c358f3b834c6b276a3b23c8dbbeac8f3e823662bb87447164`  
		Last Modified: Tue, 24 Nov 2026 04:36:30 GMT  
		Size: 868.6 KB (868641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fac465a6667fa30c333f6b837e2d634e1db17d55ac39c9f213faece6463286`  
		Last Modified: Tue, 24 Nov 2026 04:36:30 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a402ae9e1485cba329f4126bbd3c0a714c3b0149f7c2c57725997d2dc892ace`  
		Last Modified: Tue, 24 Nov 2026 04:36:37 GMT  
		Size: 289.9 MB (289890107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:b525587d9ab92a516ad8715eda3dfea440a69955032850f0da5c1310a7738922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13203714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642871fef3f5ad56d9bbfa28feef3cc4dee5c4269c86009ca58dfa8653f3cb76`

```dockerfile
```

-	Layers:
	-	`sha256:11c10fe8f14b5d32b58d2d52cf653f60fbd13be0672e532f224b7dab456d0555`  
		Last Modified: Tue, 24 Nov 2026 04:36:31 GMT  
		Size: 13.2 MB (13184414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5db45f01cc6cb186c761cb976838e38acf1ffa711702f33f34018eb8d0c84e8`  
		Last Modified: Tue, 24 Nov 2026 04:36:30 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:de534ffcb31e4e819a5d7736038bb4b2a6d95cb7c0b4c3d0c7e8890c6c691898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379592688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80007587c5ab711a4ab6b095f41e70a8f458908303bd89c22b8b75095a7bb22`
-	Default Command: `["R"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 06:35:37 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 24 Nov 2026 06:35:37 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 24 Nov 2026 06:36:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:36:07 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 24 Nov 2026 06:36:07 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 24 Nov 2026 06:36:07 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 06:36:07 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 24 Nov 2026 06:36:07 GMT
ENV R_BASE_VERSION=4.6.2
# Tue, 24 Nov 2026 06:38:04 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:38:04 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:41fc97a0dfedf7e7f772faaf975303a5634001f6f86dc376b2fedd8ee24a8b32`  
		Last Modified: Tue, 24 Nov 2026 03:42:14 GMT  
		Size: 55.4 MB (55430737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3da286c1993d2e519cd86ae1d545563edf223dfd5a5b1ef22e6344de2458b1f`  
		Last Modified: Tue, 24 Nov 2026 06:39:28 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f11b643368ba9ca5f94aa51a9b0a6786dd226b88613fb2ad2e1acf78a6fefc3`  
		Last Modified: Tue, 24 Nov 2026 06:39:30 GMT  
		Size: 27.6 MB (27551078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7698309f12a2c534d7db49f856348daef861f4eec285e26ac4f4539b5a9e3a`  
		Last Modified: Tue, 24 Nov 2026 06:39:28 GMT  
		Size: 868.6 KB (868647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9385e576e2485091f77e1b0777fdd24639f0510d4deadab2cc86365200d52b0d`  
		Last Modified: Tue, 24 Nov 2026 06:39:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399483bf73822906c23171622129681146a1df4c06fafd2e29572aa5ef1454a6`  
		Last Modified: Tue, 24 Nov 2026 06:39:36 GMT  
		Size: 295.7 MB (295738496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:3206a014e916aa6db5092ab1d62eb7e31948f7b02a45589c817fe3d67d2a07f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13096015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2cfc9ce2ea183609b3cd72911771c8220ef7c8568397be389bd5de28d3fad66`

```dockerfile
```

-	Layers:
	-	`sha256:4fd798707fede24eaa7781321e5d5f125ba157ab5a99a19e4c7319d526b97e4d`  
		Last Modified: Tue, 24 Nov 2026 06:39:29 GMT  
		Size: 13.1 MB (13076815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63715f8696ea3f1f63d531fbcd6024333e9b014808d0499cf10fb7fbd77b155d`  
		Last Modified: Tue, 24 Nov 2026 06:39:28 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:ee34bd43c2260d2dc6f1870faae01a09d39f9745a1dff63aae7c5f812d3f956d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351310944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7091b6defdc2481ee33eb4ac7218f90fc983a8881a7e9609bde7b1ba19671094`
-	Default Command: `["R"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:48:37 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 24 Nov 2026 04:48:37 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 24 Nov 2026 04:48:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:48:46 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 24 Nov 2026 04:48:46 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 24 Nov 2026 04:48:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 04:48:46 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 24 Nov 2026 04:48:46 GMT
ENV R_BASE_VERSION=4.6.2
# Tue, 24 Nov 2026 04:49:35 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:49:35 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:bb3f8bf18583e80de62777884a823b287d9b32bc3ad3fe673ef8fe64a8d385d6`  
		Last Modified: Tue, 24 Nov 2026 03:39:38 GMT  
		Size: 49.9 MB (49863269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f036cd9af7612fd4bb4697add524ae5dc67d61e8337d093d4df68df3119a2e`  
		Last Modified: Tue, 24 Nov 2026 04:50:22 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450970480b93ccccfadf4ec187e359cb99404229076f4ec1c355b93ae8fd21e8`  
		Last Modified: Tue, 24 Nov 2026 04:50:23 GMT  
		Size: 27.2 MB (27163306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435f86df5429188e0ecd8feb5fee92bb02fa6a3bf1dcbe71498fa3464ce5ed65`  
		Last Modified: Tue, 24 Nov 2026 04:50:22 GMT  
		Size: 924.7 KB (924704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05b3859c9d43943dfaa8e28827135620141f987d3b6aa9d6e59f5610a4e1ad`  
		Last Modified: Tue, 24 Nov 2026 04:50:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4f9eac0134651b661a7d3fd41c487b9c7512739182aa36545583d681037a6d`  
		Last Modified: Tue, 24 Nov 2026 04:50:27 GMT  
		Size: 273.4 MB (273355939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:cb217baba7abcc170c0dc187cfb867e2bb74084f5058426c7967a5146fb47e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12911877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d21de7304c293365c20000a9432cb59042b6d56d77dd09071324a3aca3c866`

```dockerfile
```

-	Layers:
	-	`sha256:83f4465386337730e2fdbdd78e8c9d3ad719c0ad4235ab91e790a376c6da72c0`  
		Last Modified: Tue, 24 Nov 2026 04:50:23 GMT  
		Size: 12.9 MB (12892718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d858a05e31520f47d2cd4f8f73e88e836bcfe03280ed8b557bcd4a5be01251c9`  
		Last Modified: Tue, 24 Nov 2026 04:50:22 GMT  
		Size: 19.2 KB (19159 bytes)  
		MIME: application/vnd.in-toto+json
