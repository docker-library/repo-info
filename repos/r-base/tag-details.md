<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:4.6.1`](#r-base461)
-	[`r-base:latest`](#r-baselatest)

## `r-base:4.6.1`

```console
$ docker pull r-base@sha256:58f23a08fb53b98ceff57cca122922305cf5b0ca94c21d3441e5cc94301cfe31
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
$ docker pull r-base@sha256:4e6fb1eebb29725c9c524851fb9a4bd2bd152254bcc3778cb44fd1c3d7fe9d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.7 MB (755739165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e2c82e81282f446e596750b516dd83450895efb1fb81636048d6c5ca8c0a04`
-	Default Command: `["R"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:37:08 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Sat, 19 Sep 2026 00:37:08 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Sat, 19 Sep 2026 00:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:17 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Sat, 19 Sep 2026 00:37:17 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 19 Sep 2026 00:37:17 GMT
ENV LANG=en_US.UTF-8
# Sat, 19 Sep 2026 00:37:17 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Sat, 19 Sep 2026 00:37:17 GMT
ENV R_BASE_VERSION=4.6.1
# Sat, 19 Sep 2026 00:38:09 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:09 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:d8c22133c9f304464b99471e4b4d4968d87d56e8544b7855059f2c0a39fa5b22`  
		Last Modified: Sat, 19 Sep 2026 00:05:24 GMT  
		Size: 50.1 MB (50075077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf4a5f53315ea9044b0ba2c50cb38c0d328fad48790c6f84206ae66797ac9c4`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c303ac6fb7eb8b66c742f2be7477c80152aa6625a29193f0e3f5f7e75919379`  
		Last Modified: Sat, 19 Sep 2026 00:39:23 GMT  
		Size: 27.2 MB (27226497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a9945d7e21893747b3e55ae55c2250db51cd1ce6f662c4f4470f1b19661998`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 868.6 KB (868641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604b92f847573d25da5e1341fb6893f243fa82e3765c676798e12471b973047`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75a6b2979cd7240c7041bcd90224e64a85b8c203ffc7a505691c49a93b70d90`  
		Last Modified: Sat, 19 Sep 2026 00:39:36 GMT  
		Size: 677.6 MB (677565217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:c731b94eae4a7d1e82eb66bcf11b563c5b7d950dbe6c1695019d552647741c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13036833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b005c16cb74c165f6c9c3c2f1d01f6d78d7b824f7994e454dd271976614416`

```dockerfile
```

-	Layers:
	-	`sha256:3d3a42a0bd878d85d81a38a2797e9ff3353296aa7ce8c9a9330212ab47f2a994`  
		Last Modified: Sat, 19 Sep 2026 00:39:23 GMT  
		Size: 13.0 MB (13017673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f665113e8503cf90688b23af7f1fb4639510dc1a346ca9b32a5e0cebec10c6a`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:490948a4ccb786c2dfdac60af746638152545f4e9db63bd0bbcce8ad1163b731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.7 MB (749727544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5638594b6210c4b3baef141682bc9f5118d70e4bf33ccdab00f6b55668d1f5`
-	Default Command: `["R"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:40:13 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Sat, 19 Sep 2026 00:40:13 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Sat, 19 Sep 2026 00:40:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 19 Sep 2026 00:40:21 GMT
ENV LANG=en_US.UTF-8
# Sat, 19 Sep 2026 00:40:21 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
ENV R_BASE_VERSION=4.6.1
# Sat, 19 Sep 2026 00:41:17 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:17 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:afa59e8e36339ab83cfad4ae751210d30aa42bc784cbfd0588224e9897b3a3ae`  
		Last Modified: Sat, 19 Sep 2026 00:05:15 GMT  
		Size: 49.6 MB (49556484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e224627a4d6af8335009c1fae45bb43a41fe9c9591a8b8c4f471725d18001786`  
		Last Modified: Sat, 19 Sep 2026 00:42:31 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e5ccdd20e8017b1bab50a271335c625138fe643ac9e80a5bbc390af0368b5a`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 27.0 MB (27040922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7228cdcb4a97849dc59231921e837f465f993d6f9ee427fff3cd7a30ca48df`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 868.7 KB (868663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f160c673fcf49201b7d17b36059e55ba0825602a36e6076ca762fe0e81353abd`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae609e62bc69daa3af0374e1d3d35140e2481c57b226d405375d45341a136aad`  
		Last Modified: Sat, 19 Sep 2026 00:42:44 GMT  
		Size: 672.3 MB (672257746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:43551608a71a459e356e439519157acc20ed827c775015c870a0c32043bbc4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13158924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4447009d3cbbeebfa1131e1fe44a56de9e18e7879524860e6298b758e33dea94`

```dockerfile
```

-	Layers:
	-	`sha256:66a04ae643284541ce64bb2547dadd1aa73d710f93a0cdf68fcf050748c3cc2e`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 13.1 MB (13139624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f65d6fa26cc1b78f25e7dfd71be0c046a0d3adbae61199f7008c51fd3dbe1de9`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; ppc64le

```console
$ docker pull r-base@sha256:71354b059bac4508826c3786cd8f7a097942acb1df7cb3f702d0d497e8482115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **738.6 MB (738643569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bf99e972d475d07b8423c497aaedd34a2f878dc1e0f03386c072658a7edc85`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 03:22:46 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 25 Aug 2026 03:22:46 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 25 Aug 2026 03:23:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:23:14 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 25 Aug 2026 03:23:14 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 03:23:14 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Aug 2026 03:23:14 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 25 Aug 2026 03:23:14 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 25 Aug 2026 03:26:30 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:26:30 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:7dc0c941bc2aeb13781c09374f8c85940361e9bbeb050f739c6c9a336b07edf8`  
		Last Modified: Mon, 24 Aug 2026 23:21:48 GMT  
		Size: 54.8 MB (54795071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e640a38151ffe586de4724aa3b767365e375ee0add090def8d60c11a3061358`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5273c784f6fd7840ab6ddfb39542de5cdf76a57dbe597cdf065fff61d776dcde`  
		Last Modified: Tue, 25 Aug 2026 03:28:46 GMT  
		Size: 27.5 MB (27497493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58291f7d5bc853e7ba2b7f3d9cec624e524eff1583a128ecb0e9eeb8eb73595a`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 868.7 KB (868673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7e619707f216be509caa9c13a476d416f584269e211580ec865f8374d20b82`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d16212de8eca4a88c940be437c1c64e08df002bf1420847c8d06823201fb65`  
		Last Modified: Tue, 25 Aug 2026 03:28:59 GMT  
		Size: 655.5 MB (655478596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:19206a4c95b64734ae02ffb5f1d64ff25d979e835d745ddd696282c9490f2442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13112052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f863924feea1eb753540d77859412ed08e48d418ea1d17fdd352cf6099b2701`

```dockerfile
```

-	Layers:
	-	`sha256:e07c1ac14c8231591da0e8e475ef9a2dbaa3e21de7d87392d14c75de2075160c`  
		Last Modified: Tue, 25 Aug 2026 03:28:46 GMT  
		Size: 13.1 MB (13092852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cf6942bce7b63fba5414fb4d6e93cffee3b57c8a8a2a19209e0de5949cfa7ba`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:4.6.1` - linux; s390x

```console
$ docker pull r-base@sha256:1c0e07d39fe46e7b92bcde4d75a4963fdb067e9e84753a1eee95f2b34f0548fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.9 MB (693861236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b833b96b06e9e3e3ee9454ac445764068411704ae76174ecac9007e1ccf00c`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 01:17:54 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 25 Aug 2026 01:17:54 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 25 Aug 2026 01:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:18:04 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 25 Aug 2026 01:18:04 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 01:18:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Aug 2026 01:18:04 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 25 Aug 2026 01:18:04 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 25 Aug 2026 01:19:10 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:19:10 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:35a77f309c3eaae2a44e7e3f47abaf35fa05ead1a3b5a12ad1b9e0dc1f49fcef`  
		Last Modified: Mon, 24 Aug 2026 23:19:57 GMT  
		Size: 49.2 MB (49244057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b50eedcea0af1923c4beb97ee1f05c6698988f9858666a60f1e3fe7333dbe7`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 3.3 KB (3317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407ceda949a62f7f8c1d4a35601d9ec1b4c32dcde075095c22b596c78f908238`  
		Last Modified: Tue, 25 Aug 2026 01:20:49 GMT  
		Size: 27.1 MB (27125540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4e3b40bdfe4651a1a1181cbf4bd3cd2a2b5e58d6464dc4cd0106d60e1bac49`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 924.7 KB (924703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a3454e0e7ec714115f173232f619572af2e007fb03d71642f314000f8a8fca`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871cbe47c4b4202348deee23423b8f769e5c73a88a379c99ac7d901c5e156164`  
		Last Modified: Tue, 25 Aug 2026 01:20:59 GMT  
		Size: 616.6 MB (616563198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:4.6.1` - unknown; unknown

```console
$ docker pull r-base@sha256:3ca0eb9cb2ac42f1b9cb3aee0a5dc9766ce759e49f1702281d302e71a78b8f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12927993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25053086838b94c353af939c840dd1fcf13cdd6557fe9c5ff543bac486195d5f`

```dockerfile
```

-	Layers:
	-	`sha256:e8f54f0429e09a4ec7e24120ed0ac12640e462da043f7c87458342da814d6715`  
		Last Modified: Tue, 25 Aug 2026 01:20:49 GMT  
		Size: 12.9 MB (12908835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0c869cc92a380d46801555cd1e258e7362a19e6a2830024c0a02c27252ce0ce`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 19.2 KB (19158 bytes)  
		MIME: application/vnd.in-toto+json

## `r-base:latest`

```console
$ docker pull r-base@sha256:58f23a08fb53b98ceff57cca122922305cf5b0ca94c21d3441e5cc94301cfe31
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
$ docker pull r-base@sha256:4e6fb1eebb29725c9c524851fb9a4bd2bd152254bcc3778cb44fd1c3d7fe9d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.7 MB (755739165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e2c82e81282f446e596750b516dd83450895efb1fb81636048d6c5ca8c0a04`
-	Default Command: `["R"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:37:08 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Sat, 19 Sep 2026 00:37:08 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Sat, 19 Sep 2026 00:37:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:17 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Sat, 19 Sep 2026 00:37:17 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 19 Sep 2026 00:37:17 GMT
ENV LANG=en_US.UTF-8
# Sat, 19 Sep 2026 00:37:17 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Sat, 19 Sep 2026 00:37:17 GMT
ENV R_BASE_VERSION=4.6.1
# Sat, 19 Sep 2026 00:38:09 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:09 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:d8c22133c9f304464b99471e4b4d4968d87d56e8544b7855059f2c0a39fa5b22`  
		Last Modified: Sat, 19 Sep 2026 00:05:24 GMT  
		Size: 50.1 MB (50075077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf4a5f53315ea9044b0ba2c50cb38c0d328fad48790c6f84206ae66797ac9c4`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c303ac6fb7eb8b66c742f2be7477c80152aa6625a29193f0e3f5f7e75919379`  
		Last Modified: Sat, 19 Sep 2026 00:39:23 GMT  
		Size: 27.2 MB (27226497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a9945d7e21893747b3e55ae55c2250db51cd1ce6f662c4f4470f1b19661998`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 868.6 KB (868641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604b92f847573d25da5e1341fb6893f243fa82e3765c676798e12471b973047`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75a6b2979cd7240c7041bcd90224e64a85b8c203ffc7a505691c49a93b70d90`  
		Last Modified: Sat, 19 Sep 2026 00:39:36 GMT  
		Size: 677.6 MB (677565217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:c731b94eae4a7d1e82eb66bcf11b563c5b7d950dbe6c1695019d552647741c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13036833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b005c16cb74c165f6c9c3c2f1d01f6d78d7b824f7994e454dd271976614416`

```dockerfile
```

-	Layers:
	-	`sha256:3d3a42a0bd878d85d81a38a2797e9ff3353296aa7ce8c9a9330212ab47f2a994`  
		Last Modified: Sat, 19 Sep 2026 00:39:23 GMT  
		Size: 13.0 MB (13017673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f665113e8503cf90688b23af7f1fb4639510dc1a346ca9b32a5e0cebec10c6a`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 19.2 KB (19160 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; arm64 variant v8

```console
$ docker pull r-base@sha256:490948a4ccb786c2dfdac60af746638152545f4e9db63bd0bbcce8ad1163b731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.7 MB (749727544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5638594b6210c4b3baef141682bc9f5118d70e4bf33ccdab00f6b55668d1f5`
-	Default Command: `["R"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1789689600'
# Sat, 19 Sep 2026 00:40:13 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Sat, 19 Sep 2026 00:40:13 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Sat, 19 Sep 2026 00:40:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 19 Sep 2026 00:40:21 GMT
ENV LANG=en_US.UTF-8
# Sat, 19 Sep 2026 00:40:21 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
ENV R_BASE_VERSION=4.6.1
# Sat, 19 Sep 2026 00:41:17 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:17 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:afa59e8e36339ab83cfad4ae751210d30aa42bc784cbfd0588224e9897b3a3ae`  
		Last Modified: Sat, 19 Sep 2026 00:05:15 GMT  
		Size: 49.6 MB (49556484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e224627a4d6af8335009c1fae45bb43a41fe9c9591a8b8c4f471725d18001786`  
		Last Modified: Sat, 19 Sep 2026 00:42:31 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e5ccdd20e8017b1bab50a271335c625138fe643ac9e80a5bbc390af0368b5a`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 27.0 MB (27040922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7228cdcb4a97849dc59231921e837f465f993d6f9ee427fff3cd7a30ca48df`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 868.7 KB (868663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f160c673fcf49201b7d17b36059e55ba0825602a36e6076ca762fe0e81353abd`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae609e62bc69daa3af0374e1d3d35140e2481c57b226d405375d45341a136aad`  
		Last Modified: Sat, 19 Sep 2026 00:42:44 GMT  
		Size: 672.3 MB (672257746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:43551608a71a459e356e439519157acc20ed827c775015c870a0c32043bbc4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13158924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4447009d3cbbeebfa1131e1fe44a56de9e18e7879524860e6298b758e33dea94`

```dockerfile
```

-	Layers:
	-	`sha256:66a04ae643284541ce64bb2547dadd1aa73d710f93a0cdf68fcf050748c3cc2e`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 13.1 MB (13139624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f65d6fa26cc1b78f25e7dfd71be0c046a0d3adbae61199f7008c51fd3dbe1de9`  
		Last Modified: Sat, 19 Sep 2026 00:42:32 GMT  
		Size: 19.3 KB (19300 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; ppc64le

```console
$ docker pull r-base@sha256:71354b059bac4508826c3786cd8f7a097942acb1df7cb3f702d0d497e8482115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **738.6 MB (738643569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bf99e972d475d07b8423c497aaedd34a2f878dc1e0f03386c072658a7edc85`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 03:22:46 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 25 Aug 2026 03:22:46 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 25 Aug 2026 03:23:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:23:14 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 25 Aug 2026 03:23:14 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 03:23:14 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Aug 2026 03:23:14 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 25 Aug 2026 03:23:14 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 25 Aug 2026 03:26:30 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:26:30 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:7dc0c941bc2aeb13781c09374f8c85940361e9bbeb050f739c6c9a336b07edf8`  
		Last Modified: Mon, 24 Aug 2026 23:21:48 GMT  
		Size: 54.8 MB (54795071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e640a38151ffe586de4724aa3b767365e375ee0add090def8d60c11a3061358`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5273c784f6fd7840ab6ddfb39542de5cdf76a57dbe597cdf065fff61d776dcde`  
		Last Modified: Tue, 25 Aug 2026 03:28:46 GMT  
		Size: 27.5 MB (27497493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58291f7d5bc853e7ba2b7f3d9cec624e524eff1583a128ecb0e9eeb8eb73595a`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 868.7 KB (868673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7e619707f216be509caa9c13a476d416f584269e211580ec865f8374d20b82`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d16212de8eca4a88c940be437c1c64e08df002bf1420847c8d06823201fb65`  
		Last Modified: Tue, 25 Aug 2026 03:28:59 GMT  
		Size: 655.5 MB (655478596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:19206a4c95b64734ae02ffb5f1d64ff25d979e835d745ddd696282c9490f2442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13112052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f863924feea1eb753540d77859412ed08e48d418ea1d17fdd352cf6099b2701`

```dockerfile
```

-	Layers:
	-	`sha256:e07c1ac14c8231591da0e8e475ef9a2dbaa3e21de7d87392d14c75de2075160c`  
		Last Modified: Tue, 25 Aug 2026 03:28:46 GMT  
		Size: 13.1 MB (13092852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cf6942bce7b63fba5414fb4d6e93cffee3b57c8a8a2a19209e0de5949cfa7ba`  
		Last Modified: Tue, 25 Aug 2026 03:28:45 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.in-toto+json

### `r-base:latest` - linux; s390x

```console
$ docker pull r-base@sha256:1c0e07d39fe46e7b92bcde4d75a4963fdb067e9e84753a1eee95f2b34f0548fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.9 MB (693861236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b833b96b06e9e3e3ee9454ac445764068411704ae76174ecac9007e1ccf00c`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 01:17:54 GMT
LABEL org.opencontainers.image.licenses=GPL-2.0-or-later org.opencontainers.image.source=https://github.com/rocker-org/rocker org.opencontainers.image.vendor=Rocker Project org.opencontainers.image.authors=Dirk Eddelbuettel <edd@debian.org>
# Tue, 25 Aug 2026 01:17:54 GMT
RUN useradd -s /bin/bash -m docker 	&& usermod -a -G staff docker # buildkit
# Tue, 25 Aug 2026 01:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:18:04 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8 # buildkit
# Tue, 25 Aug 2026 01:18:04 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 01:18:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Aug 2026 01:18:04 GMT
RUN echo "Types: deb" > /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "URIs: http://deb.debian.org/debian/" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Suites: sid" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Components: main" >> /etc/apt/sources.list.d/debian-unstable.sources 	&& echo "Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg" >> /etc/apt/sources.list.d/debian-unstable.sources         && echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default         && echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/90local-no-recommends # buildkit
# Tue, 25 Aug 2026 01:18:04 GMT
ENV R_BASE_VERSION=4.6.1
# Tue, 25 Aug 2026 01:19:10 GMT
RUN apt-get update         && apt-get install -y -t unstable --no-install-recommends                 libopenblas0-pthread 		littler                 r-cran-docopt                 r-cran-littler 		r-base=${R_BASE_VERSION}-* 		r-base-dev=${R_BASE_VERSION}-*                 r-base-core=${R_BASE_VERSION}-* 		r-recommended=${R_BASE_VERSION}-* 	&& chown root:staff "/usr/local/lib/R/site-library" 	&& chmod g+ws "/usr/local/lib/R/site-library" 	&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installBioc.r /usr/local/bin/installBioc.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installDeps.r /usr/local/bin/installDeps.r 	&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:19:10 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:35a77f309c3eaae2a44e7e3f47abaf35fa05ead1a3b5a12ad1b9e0dc1f49fcef`  
		Last Modified: Mon, 24 Aug 2026 23:19:57 GMT  
		Size: 49.2 MB (49244057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b50eedcea0af1923c4beb97ee1f05c6698988f9858666a60f1e3fe7333dbe7`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 3.3 KB (3317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407ceda949a62f7f8c1d4a35601d9ec1b4c32dcde075095c22b596c78f908238`  
		Last Modified: Tue, 25 Aug 2026 01:20:49 GMT  
		Size: 27.1 MB (27125540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4e3b40bdfe4651a1a1181cbf4bd3cd2a2b5e58d6464dc4cd0106d60e1bac49`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 924.7 KB (924703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a3454e0e7ec714115f173232f619572af2e007fb03d71642f314000f8a8fca`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871cbe47c4b4202348deee23423b8f769e5c73a88a379c99ac7d901c5e156164`  
		Last Modified: Tue, 25 Aug 2026 01:20:59 GMT  
		Size: 616.6 MB (616563198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `r-base:latest` - unknown; unknown

```console
$ docker pull r-base@sha256:3ca0eb9cb2ac42f1b9cb3aee0a5dc9766ce759e49f1702281d302e71a78b8f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12927993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25053086838b94c353af939c840dd1fcf13cdd6557fe9c5ff543bac486195d5f`

```dockerfile
```

-	Layers:
	-	`sha256:e8f54f0429e09a4ec7e24120ed0ac12640e462da043f7c87458342da814d6715`  
		Last Modified: Tue, 25 Aug 2026 01:20:49 GMT  
		Size: 12.9 MB (12908835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0c869cc92a380d46801555cd1e258e7362a19e6a2830024c0a02c27252ce0ce`  
		Last Modified: Tue, 25 Aug 2026 01:20:48 GMT  
		Size: 19.2 KB (19158 bytes)  
		MIME: application/vnd.in-toto+json
