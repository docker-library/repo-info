## `sapmachine:17-jre`

```console
$ docker pull sapmachine@sha256:7e9b458a6ad7d6aa32e0ffb11f7194a01084c4b17759c49a48a54cdf43f586fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:8648c7549ec197c3b19fa530da295018f73b68c64ef390e32cd900b140db571f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90151898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa38f3378004c1e29f913f247d374b1833f1487ac3e7f62007cae3658d95ac63`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d888ed461b298abc35d8f99a39692b323e87de6af72d0a1ab3c6dd52df483aa`  
		Last Modified: Tue, 04 Aug 2026 01:50:44 GMT  
		Size: 60.4 MB (60400789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4aa2e061d91bfa074e7ca914e41f00a94b60167e7dccb89cf5b8d8fd872a31c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0c23455efb324e0a3e73b81df6210b4b671c6b86e9d479b02efce6dc76d4b0`

```dockerfile
```

-	Layers:
	-	`sha256:3edb0d634ad0939e56c089c766748fd164fe5128bb68f1b03370b92863dd6661`  
		Last Modified: Tue, 04 Aug 2026 01:50:42 GMT  
		Size: 2.5 MB (2520742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:616d112462d92826da73696e7446568842cac09895ec8955179bd454308b9d45`  
		Last Modified: Tue, 04 Aug 2026 01:50:42 GMT  
		Size: 10.0 KB (10044 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:40597f364aa9222a41e901547172ef25222cdd422b8b2fc8cc698debc7a1a1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86356808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9344a95bf28be823ddd8d6cfbafdc11d1df4d783398cf82b14e07c85bb760b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb74768b228c53717b60d7e0cc14412885acb9b36ed40df3160f4dec81b384da`  
		Last Modified: Tue, 04 Aug 2026 01:50:47 GMT  
		Size: 57.5 MB (57469990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:31475f956b181ef0b016992dc6a7366f89b167b4708b50a5219715dc9abc07e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5616a4ae5a7a6bdd3e66831691a61ad33285f55bbd3f8dc2b30571e7b2575971`

```dockerfile
```

-	Layers:
	-	`sha256:28e8f9b9dfec510c671b047842cfeb14bac414124c4112ee9fdb56e8bf7fa03f`  
		Last Modified: Tue, 04 Aug 2026 01:50:45 GMT  
		Size: 2.5 MB (2521258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6561d1ee67b73455808e29535aa3cbef54e171f2fb59314b5c60fd5b0729f398`  
		Last Modified: Tue, 04 Aug 2026 01:50:45 GMT  
		Size: 10.2 KB (10198 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4bd2c4e95065afa4b02904758c4a4d156ca9b63c7ccc776e332b14fcc537fea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94468752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78aaa07abe6851c642af7f4a9ea64c4be05a6cdfb2c7531b8aedcc2c5e2306a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 03:01:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:01:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 03:01:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b6f8d7f55c8d73acfac3f4caa3c0009462f61f5fa8c96cde7748a1237e8324`  
		Last Modified: Tue, 04 Aug 2026 03:02:11 GMT  
		Size: 60.2 MB (60158079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:276a48370c348dcf26db79959f08ff17d9db8a6de83254baeaefd8a341197137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a366ac1b2c982c3d576944371777481fcb34f32836de85de6232f12bb9f5a43`

```dockerfile
```

-	Layers:
	-	`sha256:5ab9f20ce8d0e9a51428ba61e23c3dae0632edb28cf818f30e1288cc040bdfdf`  
		Last Modified: Tue, 04 Aug 2026 03:02:10 GMT  
		Size: 2.5 MB (2520240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf2b8435d31e95fe37c9f31e942c6f0fcc5b4abc0f2f11cbc05023fe2694b3d8`  
		Last Modified: Tue, 04 Aug 2026 03:02:10 GMT  
		Size: 10.1 KB (10114 bytes)  
		MIME: application/vnd.in-toto+json
