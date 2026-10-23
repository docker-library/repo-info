## `sapmachine:21-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:3903703b4e73e02b3b8a674853a7bde4811273ef5182b1766d254197ea2b9151
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-24.04` - linux; amd64

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

### `sapmachine:21-jre-headless-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:21-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

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

### `sapmachine:21-jre-headless-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:21-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e9826ae05e4a4000de8bc68a3be23466176a78ed4ccca7da56cb14159eeec1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d5ae7eb346f4b142ca9ba4c0c2b15b97064d60ccfcbbe4107118cb90004b0b`
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
# Thu, 22 Oct 2026 10:03:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:03:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:03:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1994bb1765d326a8661ca69e935873598dcdea96bef44a6911d2af7b10c40c`  
		Last Modified: Thu, 22 Oct 2026 10:04:17 GMT  
		Size: 62.0 MB (61964949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f17082ccf95cf75f4a24534f2141f594f53cd5bb252a83a6ee7f35d39d6a30e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d679e033c314201c33ba46c3df050dca7807bb2b00231f508d3415dcffc3e9d8`

```dockerfile
```

-	Layers:
	-	`sha256:a06b1138f4448d66bcf302d1f6f902350360945e54ce16343c6d9f4b8a89dcde`  
		Last Modified: Thu, 22 Oct 2026 10:04:15 GMT  
		Size: 2.3 MB (2274757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e33cfd9a710bafcf0ec4c53af762a3de65edf6cc4930162ed64dad2b3f8b64`  
		Last Modified: Thu, 22 Oct 2026 10:04:14 GMT  
		Size: 11.0 KB (11031 bytes)  
		MIME: application/vnd.in-toto+json
