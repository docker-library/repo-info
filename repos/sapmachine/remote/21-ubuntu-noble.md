## `sapmachine:21-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:917cec1dabe17ef5afde5fa6fb770cce8dc4003320851ec2bda5343d67b993ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:52a295b2ecc0546a83dd87287cb5f95e30059e1e9d495c58c8098795db3eff81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249787677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3448782725addb004792a65a940bda0f62d69a2607dd714b861c39e304f506e`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910cf9f393479ed11fdb53b9660eeeaa76e5a8126dd11e8e18ed92c60abaaf89`  
		Last Modified: Wed, 16 Sep 2026 03:32:12 GMT  
		Size: 220.0 MB (220023561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5734b42041bb9486ec5ca91f716d81fe6fac8b2eab0a343ba89e2c7dd16d394e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c4e643f66ee64d6a52430f47aaf213c25f18be6b3fad22c2b53a2f43199a89f`

```dockerfile
```

-	Layers:
	-	`sha256:de759f07070e669c50a8be21278cfb29d0b8d1420f23001263e958ba60fab482`  
		Last Modified: Wed, 16 Sep 2026 03:32:07 GMT  
		Size: 2.6 MB (2607879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6b0f3fca3a3f6abe9ed94b96f1e9e1ebd3da4dd869d99ab1ecf3cf018a0defc`  
		Last Modified: Wed, 16 Sep 2026 03:32:07 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:038f49946b93766f373c987f79d546fce78c8799fa7b35c3cdca1c15a9bbb90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247172712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3b3c51739ad058938ef5bf7f5ecd81ab82c0e56e89f00146f1014a1cfcef79`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a2785742f6dcd4f6e5a5ffbf207ba42265c55df807b8cf0e61e7589244ac24`  
		Last Modified: Wed, 16 Sep 2026 03:32:09 GMT  
		Size: 218.2 MB (218231132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:90657d9688ab1ce9ce99981d17fd43aada5b590eea9c00267763ad4cf1041aa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40add04c0abd208f54d015accb3f519ae00c3fcc249207b021d2e707533cc4a0`

```dockerfile
```

-	Layers:
	-	`sha256:5c3b3ee7d0e494e1acc7242c69aeab44b8df5b59ab87ce4311d630eb3e464f8d`  
		Last Modified: Wed, 16 Sep 2026 03:32:05 GMT  
		Size: 2.6 MB (2608491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1a1723b1ec1ac969d2356bdadace57619832ead46362e622a3f10281fb50b57`  
		Last Modified: Wed, 16 Sep 2026 03:32:05 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1f049b3c76631d0dc79464686e766681a7d4f55c541fccf2d227ad549aa64856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254385131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9647158a5591d356a746b3d3b70f33aee6fabc0356bf4f92343d4c1453cf3a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:29:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:29:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:29:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730b8162737763e16c85a89604badc0bec8b8bddf7bc3462260d4e5cd4daa758`  
		Last Modified: Wed, 09 Sep 2026 04:31:05 GMT  
		Size: 220.0 MB (220008252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5c35310140f96e491d4bca44028e19c2bd4fa0ef0188d3c8774b6f439aeda8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2fb82c28fa64c1b39a17e84406bb2552b3c69b7b98b764f78b3af52f26a85de`

```dockerfile
```

-	Layers:
	-	`sha256:94cdbef04ea386bd4d0fccf100b1adaa7969fc7f0697042bdcfe733a05cc9b5a`  
		Last Modified: Wed, 09 Sep 2026 04:31:00 GMT  
		Size: 2.6 MB (2605479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9af04cc21ca587190bc9c9b9545e98ef621b8adfe8b5ce6c33dc5b191c893b5c`  
		Last Modified: Wed, 09 Sep 2026 04:31:00 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
