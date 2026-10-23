## `sapmachine:21-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:778732e29143af5c6f113d68a7a9667fea8f297a52a8d12f3fecd67979ef4737
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:f6e783945d3563e0ea766a7c7922dd567319a0ff617c081a06f022ad74560367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92173696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca01aa987a6c0e1a1e4f56178214b26915202b8dc025451e1e8b1694045b4ab`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:56:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:56:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:56:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81aca7e1173bdc127f4a376dfd30d996dd59bb7e3f6acc9f49b2722e80f22401`  
		Last Modified: Fri, 23 Oct 2026 16:57:02 GMT  
		Size: 62.4 MB (62407938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:80d8307d04e74f366d83e6f7fa6e317bbc934c493c48ebdbf6a7bd7c2cd828b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d2077e51859ef4ea04e77a26e7b22e55a72dce560a0634b13d60256fe1be1c`

```dockerfile
```

-	Layers:
	-	`sha256:07506af362f8d35757dd1d8f42d5f04dc3269b2ff151ed613cdb74a8e095645b`  
		Last Modified: Fri, 23 Oct 2026 16:57:00 GMT  
		Size: 2.3 MB (2275388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07932aa93262865d14c1a48621c1673a369f6667c2a3fe81c868ee3a2d0a58c3`  
		Last Modified: Fri, 23 Oct 2026 16:57:00 GMT  
		Size: 11.0 KB (11007 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:fdbf45676c4be2290ce77c16adda1997d43e1bb478a052a95b6e1d2dcbfe2100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90524582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b3403156c40f41e09d5899a4be9baf42eefae792c598255b4586c47efbfd41`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:55:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:55:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86ef68bdf1775480e867a5f8f62e03ae4fc94b2b591be8c71413c9449f17efe`  
		Last Modified: Fri, 23 Oct 2026 16:55:47 GMT  
		Size: 61.6 MB (61584821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:556f62d9c658eb5cac45a4ef2798a6cbbfc304ac2216fc601f537554504afcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14a8bd57245af263ac4ce853629f0d0ade26d4a6d1fac434f0c93714a739f28`

```dockerfile
```

-	Layers:
	-	`sha256:4111f27bbb807a403e292b0cc6c2f0227ea1703c0627daae9d7afbc0f2938486`  
		Last Modified: Fri, 23 Oct 2026 16:55:45 GMT  
		Size: 2.3 MB (2275895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8f8f5a55d622a173c325f5245740bbd21466f8370ae953e22a6a10e1c6e6968`  
		Last Modified: Fri, 23 Oct 2026 16:55:45 GMT  
		Size: 11.2 KB (11159 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f8f892e1cc93df1e8996ab5b439bbb1d67b30ff7740ce8698a64328856679651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96347627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3646dc03cabe70c13f4d1a68227f492ee79c2f59af644710257d9086e566a37b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 19:05:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:05:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:05:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d48cede27a01fb42f4b9299655afad0bf29e6350c9038c2ea3d1ec06c59b53f`  
		Last Modified: Fri, 23 Oct 2026 19:06:28 GMT  
		Size: 62.0 MB (61969637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1779d199ff6a93df39b56f6a171a843d62e62dfef51d5fbb6cd0889c52beb8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cba4e5f679258ff23110d4d09b81bb118bc33576f267d2ff8573e1770d6882b`

```dockerfile
```

-	Layers:
	-	`sha256:1d6da37f459a63596cd15180a26002161054b338cfdd3a915c74a8688da2a1ce`  
		Last Modified: Fri, 23 Oct 2026 19:06:26 GMT  
		Size: 2.3 MB (2274805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baef8384598ef19c6699af24bd3cf5198627c09e4c85aff6e62b5687738f5f94`  
		Last Modified: Fri, 23 Oct 2026 19:06:25 GMT  
		Size: 11.1 KB (11075 bytes)  
		MIME: application/vnd.in-toto+json
