## `r-base:latest`

```console
$ docker pull r-base@sha256:ad49725f24f2abf3f3cb8010abfd00b74d424bc47c4e3841f10e805143e5a6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:94ba89c4503af7c69dca11e855c24f30af8e21c43399d664a68ef8ae05a9f5a0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.1 MB (347114704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de1ef2039fbd2fcbaf609da402d6b2a94fee892755cc7bb074fa26b8738ce0b`
-	Default Command: `["R"]`

```dockerfile
# Tue, 25 Oct 2022 01:45:19 GMT
ADD file:7b3c3912d73330bfbb6eb18f8cba6491e0c4b2be59bc6b846a4a0cde39b1ad27 in / 
# Tue, 25 Oct 2022 01:45:19 GMT
CMD ["bash"]
# Tue, 25 Oct 2022 06:31:53 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 01 Nov 2022 20:20:27 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& adduser docker staff
# Tue, 01 Nov 2022 20:20:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:20:44 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:20:44 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 01 Nov 2022 20:20:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:20:44 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends
# Tue, 01 Nov 2022 20:20:45 GMT
ENV R_BASE_VERSION=4.2.2
# Tue, 01 Nov 2022 20:22:02 GMT
RUN apt-get update         && apt-get install -y --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:22:04 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:ebbe46658ae1eddd748e3222cbc9dd7109f9fd7f279a4b2f9d6a32d0a58b4c16`  
		Last Modified: Tue, 25 Oct 2022 01:50:50 GMT  
		Size: 51.3 MB (51261759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8780930e7e7b18116589a863916682a85c45bec3c738dab17f8740830988b5`  
		Last Modified: Tue, 01 Nov 2022 20:22:25 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f11b798771daf119baa7f2f3d5b9c4363b0aec5d12e488fbb2e07a0cf0be79`  
		Last Modified: Tue, 01 Nov 2022 20:22:28 GMT  
		Size: 31.3 MB (31262096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced6bc7d0fb644dbcbeecc374d4904ae5df8f303707c30aa60514e3d929fd644`  
		Last Modified: Tue, 01 Nov 2022 20:22:25 GMT  
		Size: 865.8 KB (865843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e2154a522a29fd10fe63922ee826f4d42e1e474ad08bc2f8c71e811e7f0127`  
		Last Modified: Tue, 01 Nov 2022 20:22:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a417257f633cd58de6c3b59ec8c55c5bb04296fa387da3daa9cc1cba037116`  
		Last Modified: Tue, 01 Nov 2022 20:22:56 GMT  
		Size: 263.7 MB (263723342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:ead7b4acbb8685d4789069f581408e9337c7bcc8ee1ec3517919c86a455984aa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.4 MB (331395384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd52b42186041b763a1616edda8c1c3c255c3acb6d7244858e445e6512810c9`
-	Default Command: `["R"]`

```dockerfile
# Tue, 25 Oct 2022 05:46:50 GMT
ADD file:761291aa5b3b59b4df3bb18f24e5a1a8a2257099c9cded3a59ede9fd6ff51b48 in / 
# Tue, 25 Oct 2022 05:46:51 GMT
CMD ["bash"]
# Tue, 25 Oct 2022 20:45:56 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 01 Nov 2022 20:49:49 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& adduser docker staff
# Tue, 01 Nov 2022 20:50:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:50:05 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:50:05 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 01 Nov 2022 20:50:06 GMT
ENV LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:50:06 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends
# Tue, 01 Nov 2022 20:50:06 GMT
ENV R_BASE_VERSION=4.2.2
# Tue, 01 Nov 2022 20:51:49 GMT
RUN apt-get update         && apt-get install -y --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:51:54 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:caf25a90eeefd5503ca47ddee8701edea5a0eb070f53070fb99e367af85db78e`  
		Last Modified: Tue, 25 Oct 2022 05:51:38 GMT  
		Size: 51.3 MB (51262993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f025b2064c45ecc0d758595679b6f987a5cb9bc5bf46d2eaa30cc78d28190d`  
		Last Modified: Tue, 01 Nov 2022 20:52:02 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7d5c605342a88a5901098d6d9e30a884f2bb8b750d0b3fd08e9cf896dd4b4`  
		Last Modified: Tue, 01 Nov 2022 20:52:05 GMT  
		Size: 31.0 MB (30994034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc72e07888fd425ef2256921272c9d77c127042f90fcb90ccc5ae4c26612383c`  
		Last Modified: Tue, 01 Nov 2022 20:52:03 GMT  
		Size: 865.8 KB (865839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74de9bff273715c7f23843422b4f5299778cbb85cc73063d9e3c9722546360fb`  
		Last Modified: Tue, 01 Nov 2022 20:52:02 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482dff1a5f148f46d9ba8cd61977f18f456866fef0c2bebf783c32b3050d0fa`  
		Last Modified: Tue, 01 Nov 2022 20:52:25 GMT  
		Size: 248.3 MB (248270859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:00c5f4bd44a731ea9e54c15551de11320873ea0514c92075ec51dee2e69d229d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.3 MB (349276445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f65a8f46aff0802e727d707c91f6c8cf3ca514e45ec7964683c029cabe817b9`
-	Default Command: `["R"]`

```dockerfile
# Tue, 25 Oct 2022 03:15:17 GMT
ADD file:eb3294b440b1de7e5e420328a146136657392ed0568fcc54a574e171e31558a1 in / 
# Tue, 25 Oct 2022 03:15:20 GMT
CMD ["bash"]
# Tue, 25 Oct 2022 08:22:11 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 01 Nov 2022 20:16:58 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& adduser docker staff
# Tue, 01 Nov 2022 20:17:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:17:31 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:17:31 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 01 Nov 2022 20:17:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:17:33 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends
# Tue, 01 Nov 2022 20:17:33 GMT
ENV R_BASE_VERSION=4.2.2
# Tue, 01 Nov 2022 20:19:49 GMT
RUN apt-get update         && apt-get install -y --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:19:56 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:e78937113e3c6d6902831ab5c7cb1ac7b54dd956b0a882adb2b81160f0cd0833`  
		Last Modified: Tue, 25 Oct 2022 03:21:41 GMT  
		Size: 55.3 MB (55338729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5679eb3d089f0e8d73f918282d14a084a9a9cbbca09b815338bc0f6dd45f5af`  
		Last Modified: Tue, 01 Nov 2022 20:20:14 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bd54906b11b2c0da1d2a093a48fb9c4d28579887eb80c9d8efcae81c0b4400`  
		Last Modified: Tue, 01 Nov 2022 20:20:21 GMT  
		Size: 32.5 MB (32513844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ad140f98059823bf264e52df961c09c3eaf48d985d6c30021cb745a6f44858`  
		Last Modified: Tue, 01 Nov 2022 20:20:15 GMT  
		Size: 865.8 KB (865845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f557e8c51657e421ddb6d1b40d1bffa7fb99c5a637e7ac73226e92cd3c6b0e77`  
		Last Modified: Tue, 01 Nov 2022 20:20:14 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c1a2e0d7266eb6822feaefc1a3583b2950dcbe8d440e4c87b77961d816e795`  
		Last Modified: Tue, 01 Nov 2022 20:21:09 GMT  
		Size: 260.6 MB (260556361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:6247d2370c4dde947aaeb9aecaf6f1cf2e9c9aa1fe5bfee2d7902b87b1896994
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305852537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0616c5ee808690414bd8d24e7a3b97924434358e4565c7fd797742db83a8557c`
-	Default Command: `["R"]`

```dockerfile
# Tue, 25 Oct 2022 01:15:47 GMT
ADD file:9093ef5b03ab758cca4be205f4332f6e9ef617d8bed9b952af0073c9eff5ff4f in / 
# Tue, 25 Oct 2022 01:15:50 GMT
CMD ["bash"]
# Tue, 25 Oct 2022 06:47:33 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 01 Nov 2022 20:47:45 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& adduser docker staff
# Tue, 01 Nov 2022 20:48:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:48:18 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:48:18 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 01 Nov 2022 20:48:18 GMT
ENV LANG=en_US.UTF-8
# Tue, 01 Nov 2022 20:48:20 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends
# Tue, 01 Nov 2022 20:48:20 GMT
ENV R_BASE_VERSION=4.2.2
# Tue, 01 Nov 2022 20:50:11 GMT
RUN apt-get update         && apt-get install -y --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2022 20:50:33 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:61dde8995e51d73ce3f12dd6592eb9f349f7c17628780fae6f2693134ed30c40`  
		Last Modified: Tue, 25 Oct 2022 01:20:12 GMT  
		Size: 49.6 MB (49578473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a12a93b5a2fc4604f2c7535212b865ebe249f73b6fb88934de8a70536d37f64`  
		Last Modified: Tue, 01 Nov 2022 20:50:58 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6dda255d3ea9e12a315deb3c86ea3adccfb1f012a8c7d022a537cefeeb03f8`  
		Last Modified: Tue, 01 Nov 2022 20:51:02 GMT  
		Size: 30.0 MB (29965405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93233b9bd5377bd5e524beb0f20e9c3b38f4dc837750cbc7dd7d95b1e6e05a1`  
		Last Modified: Tue, 01 Nov 2022 20:50:58 GMT  
		Size: 921.0 KB (921002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb073d1f6d88c94dc11247282b8e6827520b19aac09c020bb40bce8915d57c1`  
		Last Modified: Tue, 01 Nov 2022 20:50:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28544729ae1268648fa99b242bccfccb178a080c67bb6904e727500e3aa3b60d`  
		Last Modified: Tue, 01 Nov 2022 20:51:25 GMT  
		Size: 225.4 MB (225385994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
