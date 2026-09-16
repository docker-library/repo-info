## `sapmachine:17-jdk-headless`

```console
$ docker pull sapmachine@sha256:ebc8c5a207b418f9adf4479026352a7dbd4d45244e907c2609c992d41539d774
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:9bea08c4f9dd8de2ebaf5d83949be3179691772fb5aceed7441d3d7c8434b205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232918127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e85910d13dea7ce772fb3fcd5dd8b8abe810eac10420503588a5762202ef00`
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
# Wed, 16 Sep 2026 03:31:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197f18fb3099f8f3d2155ee8527a2c9ffeacac27207e8707fd22560bb34d9b20`  
		Last Modified: Wed, 16 Sep 2026 03:32:09 GMT  
		Size: 203.2 MB (203154011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b22741b3b0e245d37cb773dc41a7e4e962535dc6e1fcfd94f5201fcd1f43cc65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac094cbf31c565c1d0d325d1b9319f97e63ab68c4b5cf8c42cb413a876bd26c9`

```dockerfile
```

-	Layers:
	-	`sha256:4f3e124047a181f9e6346a715b6e3bd83497e591c3bf0373d0105ebe5c58bed8`  
		Last Modified: Wed, 16 Sep 2026 03:32:05 GMT  
		Size: 2.4 MB (2356602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47b6a511aced7a4d87c4315ed3d264953b0faa62a72e4b8ee03409f99da7fc05`  
		Last Modified: Wed, 16 Sep 2026 03:32:05 GMT  
		Size: 11.0 KB (10990 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5567abfe39c19f45d70ec9636758f23e98922c342dfcc10151b35dd5ad1e1efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230880133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0be49d0ef5d79b6d210bc6218fa91bc511febc2abba132b5d714e1f7dd02a7b`
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
# Wed, 16 Sep 2026 03:31:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88f67caa264bc2a492209e378e3246d6fd8fa7a6b21eb1bf405b2d30b9065d8`  
		Last Modified: Wed, 16 Sep 2026 03:32:16 GMT  
		Size: 201.9 MB (201938553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc9cea02f6cf32ddad8d2c8851eb9f8aa5560bbeccfe04de92512edb4ef176d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5cdbfab6c9114ce837e7f5dfa5e7c0c594ed6237cf845341946651a1a65f2c`

```dockerfile
```

-	Layers:
	-	`sha256:f551f980662913a8a0c32070eea6ddff76c66a96b29e45d910964cabdc525e4b`  
		Last Modified: Wed, 16 Sep 2026 03:32:12 GMT  
		Size: 2.4 MB (2357109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eee58a84299384a4f139da13529f2aeae0907537ccc5cc9bd2a8c187c73094c`  
		Last Modified: Wed, 16 Sep 2026 03:32:12 GMT  
		Size: 11.1 KB (11142 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c322107918b764376b9e2bbefeefedf5a8b5525701cda1fff8cba16cbd09595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236329508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e8798430834d6915b437daaa195a439f494e9dc35247387c31794cd2f23da9`
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
# Wed, 09 Sep 2026 04:41:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:41:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 04:41:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715e543470d2807cb1d60dcafcf5326415f10fe36daeb2e143a796a135ee765`  
		Last Modified: Wed, 09 Sep 2026 04:42:23 GMT  
		Size: 202.0 MB (201952629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:39d0d7bd3e5a30c88cd467d8a6747a77a1e40eae2159ea93d3d97584294ea354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2365131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5b51740b9058c13cf38e6cd4aeb2b04f33142e865857a3d7c99968bc9d4bd3`

```dockerfile
```

-	Layers:
	-	`sha256:031106fdeb43498617e24163c8090504827e3d893700be6ab1f97e54dd375168`  
		Last Modified: Wed, 09 Sep 2026 04:42:19 GMT  
		Size: 2.4 MB (2354073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2f8c30da040c1c72e98951dd81b27b84b02d6e9f1de408a986fe785e3b55e2a`  
		Last Modified: Wed, 09 Sep 2026 04:42:19 GMT  
		Size: 11.1 KB (11058 bytes)  
		MIME: application/vnd.in-toto+json
