## `r-base:latest`

```console
$ docker pull r-base@sha256:bf52c87f47ab45bd5f6b46b5a7cd8b381e240fd496e3b0523d0068a822de4eaf
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
$ docker pull r-base@sha256:41cedd0ea1a4a002e15416608250c904bca128af35effbae8252871eae1f4fc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.6 MB (382630197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566b6b761b2feb3ad26e29a54dda1762869677c2283a23df9e38a9377a700e33`
-	Default Command: `["R"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:31:36 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 28 Oct 2026 01:31:36 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 28 Oct 2026 01:31:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:44 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 28 Oct 2026 01:31:44 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 28 Oct 2026 01:31:44 GMT
ENV LANG=en_US.UTF-8
# Wed, 28 Oct 2026 01:31:44 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 28 Oct 2026 01:31:44 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 28 Oct 2026 01:32:25 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:32:25 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:58063fae4e1786d1ee979d5bc34777709764b8252d7519da75b1a2b2ba5d2904`  
		Last Modified: Wed, 28 Oct 2026 00:10:49 GMT  
		Size: 49.8 MB (49814410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16c15f8f2bdff9239005e7416eea9f6a472d62de46910d8956bdd77aee69672`  
		Last Modified: Wed, 28 Oct 2026 01:33:07 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54ff8500493f7f7aa40857fd2a09404712d11a3749a2c5843b08960e1c49bf5`  
		Last Modified: Wed, 28 Oct 2026 01:33:07 GMT  
		Size: 27.2 MB (27227103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85965c609f4fbfc9f0a26c5c97c83d181c7862e37545e3700992355f48e32033`  
		Last Modified: Wed, 28 Oct 2026 01:33:07 GMT  
		Size: 868.7 KB (868665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef76b25f052cdf40683a99e8faa7e4997915b67275ef49d6e55dcb69af5d327`  
		Last Modified: Wed, 28 Oct 2026 01:33:07 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d17f9054e8d2d18c37209a848e1b60bc5a23fad714bcd3c47bc512cc2393e4`  
		Last Modified: Wed, 28 Oct 2026 01:33:15 GMT  
		Size: 304.7 MB (304716279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:1d967e979959fc4a0fe40d75dff7ed5c67d2db166a68a136897a6ed0cafc3db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13025406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ff056a014897612419b4d038058bf2ca55fc4f71a311e8f14ef484833f2c9b`

```dockerfile
```

-	Layers:
	-	`sha256:d33042be8feb9b4a93264d4fe5a26245baca12e072652fc148da488320daae89`  
		Last Modified: Wed, 28 Oct 2026 01:33:07 GMT  
		Size: 13.0 MB (13006246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f7c01778b5de62c9760f5f08038ba3fdee17de80c65f1213cd7d61f4ecf72ee`  
		Last Modified: Wed, 28 Oct 2026 01:33:06 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:c0899404cb03ce1d42402ed7c3b66ac037b829fd506294685da6f871beb04e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364194723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b392291b38c2c899ee72c63e88125f346881063ac82aa7ae6d863813e4e53ff6`
-	Default Command: `["R"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:34:44 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 28 Oct 2026 01:34:44 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 28 Oct 2026 01:34:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:34:52 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 28 Oct 2026 01:34:52 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 28 Oct 2026 01:34:52 GMT
ENV LANG=en_US.UTF-8
# Wed, 28 Oct 2026 01:34:53 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 28 Oct 2026 01:34:53 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 28 Oct 2026 01:35:37 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:35:37 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:b55728f698ab3ec70f1f61c9ee564f6901244cffc7227e3c2638a7598a5dfeaa`  
		Last Modified: Wed, 28 Oct 2026 00:11:17 GMT  
		Size: 49.1 MB (49143252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf10ed567ba35c37afba478857c48f6bf4686e20e1511e12bec50db3610565f`  
		Last Modified: Wed, 28 Oct 2026 01:36:14 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79a07e270a1f15960881ec1fac62d7896c4b5b7e3b84c4b764af40a1c126bc3`  
		Last Modified: Wed, 28 Oct 2026 01:36:15 GMT  
		Size: 27.0 MB (27049930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a61c4595561cd7e39e2f6ff3f8ca5013943bf374aedb0fb54ecff29db09580`  
		Last Modified: Wed, 28 Oct 2026 01:36:14 GMT  
		Size: 868.7 KB (868670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752ae65ad8ee4948b8c5eb4731486ad42cd6f9d960ae54ec4ad41c596f716ad5`  
		Last Modified: Wed, 28 Oct 2026 01:36:14 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062ab10c0b3c17d6607572d2a632cf6657a8cc13098f59432aca67a15c599697`  
		Last Modified: Wed, 28 Oct 2026 01:36:20 GMT  
		Size: 287.1 MB (287129136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:1f4198df3fd1cf4a215f04a3c2da65d9cfeef0b88a685d4fcd43694de83af033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13146219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f98c096467048e9c85ca49492397224891ceb103f2a385c0c64f2319e5e0eff`

```dockerfile
```

-	Layers:
	-	`sha256:ef211876246504a8919572a535e8b23cf8e7137396c1102085c0dacbe4f91a50`  
		Last Modified: Wed, 28 Oct 2026 01:36:15 GMT  
		Size: 13.1 MB (13126919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18c4a94a0ff93322abcc5f9d1b5d856f925fe52705a7396627f4538bf357b075`  
		Last Modified: Wed, 28 Oct 2026 01:36:14 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:988edc8d313b5f79b033c9a60b9afdbcd6c2defb1e5adb0da39db1698d7cb6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.9 MB (375936181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c31f31b3092a131a9ecff2eb9959a633021f113310840655e628056b626422d`
-	Default Command: `["R"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 14:51:26 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 28 Oct 2026 14:51:26 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 28 Oct 2026 14:52:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 14:52:05 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 28 Oct 2026 14:52:05 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 28 Oct 2026 14:52:05 GMT
ENV LANG=en_US.UTF-8
# Wed, 28 Oct 2026 14:52:06 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 28 Oct 2026 14:52:06 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 28 Oct 2026 14:54:25 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 14:54:25 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:199117caef26fc4087e10c2146867264058bf6f419c2bbe7c5e8c2941fdb7ed2`  
		Last Modified: Wed, 28 Oct 2026 00:23:43 GMT  
		Size: 54.5 MB (54501690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cdef7e7c9aa9e92cde5fb26887be6ca9a2d5fd3518a2f7f8c325e9c081934c`  
		Last Modified: Wed, 28 Oct 2026 14:55:52 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349eca460fa10a9bbfd0b33bcc80af0f2014e2ca7cec12d3db002d3d0119eb58`  
		Last Modified: Wed, 28 Oct 2026 14:55:53 GMT  
		Size: 27.5 MB (27523543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd281428bc7a0d5ac92bf6b25ad0fe842ab283681f428fbcd9cb322e0b4526c4`  
		Last Modified: Wed, 28 Oct 2026 14:55:52 GMT  
		Size: 868.7 KB (868675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e395be9d687038c49d1b18330cfec40505f3c9dcec30b520a2c1d2b1886a14f`  
		Last Modified: Wed, 28 Oct 2026 14:55:52 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44980fac101da4863f91072f1b317a37628515f4e24f1391df7724d113c81768`  
		Last Modified: Wed, 28 Oct 2026 14:55:59 GMT  
		Size: 293.0 MB (293038539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:13c35c0461e4e716518f2e1774976e4a531b1ded315f7d5f5a5dc6d8de2b3985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13038458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a637e2d4f6181b32a8644f658672e0534bf17eef41e41e18410405ac5439e7`

```dockerfile
```

-	Layers:
	-	`sha256:3074c81d639792e1fcacc3704bcfe08fca2e46973d178f17e3fd5ae7415dca87`  
		Last Modified: Wed, 28 Oct 2026 14:55:52 GMT  
		Size: 13.0 MB (13019258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aa87660b7ad140e960d9188c4e1acd47fd303cd44d4b8ba6e2692cfbf138bea`  
		Last Modified: Wed, 28 Oct 2026 14:55:52 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:7ffb2b57507e5f9f25c58e5673c5395d30c2bd31d89679dd5f28cbd25cbc4242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347563068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de00e481a06e5cc0407a82bdd050fe9697693c4c9923b3ab17ebe22bc043f3d`
-	Default Command: `["R"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 16:43:34 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Wed, 28 Oct 2026 16:43:34 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Wed, 28 Oct 2026 16:44:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 16:44:28 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Wed, 28 Oct 2026 16:44:28 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 28 Oct 2026 16:44:28 GMT
ENV LANG=en_US.UTF-8
# Wed, 28 Oct 2026 16:44:30 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Wed, 28 Oct 2026 16:44:30 GMT
ENV R_BASE_VERSION=4.6.1
# Wed, 28 Oct 2026 16:51:18 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 16:51:18 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:1e3294c4b72b6d8b3f2137f0bcb926ff83246e8a97336b917c095084ae197052`  
		Last Modified: Wed, 28 Oct 2026 00:10:10 GMT  
		Size: 48.9 MB (48910385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9131cf8cc20e779f771f68b12ad0aa734a1abc62103584d520475497a006da`  
		Last Modified: Wed, 28 Oct 2026 16:52:39 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782516111522d898c383d40699d3018a250ddeb408032fa2f603b746948a3a4d`  
		Last Modified: Wed, 28 Oct 2026 16:52:41 GMT  
		Size: 27.1 MB (27146867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d991909f7f1eca65bf5f3c700f0ccd9b44bbe95611bba7d8d652f3ab2c1c500c`  
		Last Modified: Wed, 28 Oct 2026 16:52:39 GMT  
		Size: 924.7 KB (924711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e476491aa43036348cf5d77e53a3a26d73047e0f0c89701e0515258edb1f08`  
		Last Modified: Wed, 28 Oct 2026 16:52:39 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe9ee77eddc97fa4d0145e0bc71c95320d5312964b6ee746d2b7da4524e9dcd`  
		Last Modified: Wed, 28 Oct 2026 16:52:47 GMT  
		Size: 270.6 MB (270577365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:de16ffbc7c19e088c88de8afb6ff631d0d79cbb60d0019161094b84c267405c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12857324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a55207c392a6c150e62216e298cf4a72b59c3453475d8ae48efaadedf21a5`

```dockerfile
```

-	Layers:
	-	`sha256:af37e83da9b0603883a4ab56a0ef1d4b2cd11bcfd0ce59e3b179041a087a414b`  
		Last Modified: Wed, 28 Oct 2026 16:52:41 GMT  
		Size: 12.8 MB (12838164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c00679434d0746cd55153e41a687a055f9e813edc6f692a72ca7a1944ceef5de`  
		Last Modified: Wed, 28 Oct 2026 16:52:39 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json
