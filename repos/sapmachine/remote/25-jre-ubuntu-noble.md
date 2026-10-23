## `sapmachine:25-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:7d63851f52d2cfa8f61bb7254a79b188cb6a7b8a90fd6896bd4816123ed75907
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:1a49ef69b40fbf63bf21c8d8a61689fc489290a11c768ee3a6e18b47b8d6ee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90747220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd1825640ca28df2a9ac369730f0cb2a77443a9cfdb9890dd77147a3ef6b992`
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
# Fri, 23 Oct 2026 16:55:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d59b91962009168345f4418786e9a91546a79b47f16e17854dcf79dc80cc9a2`  
		Last Modified: Fri, 23 Oct 2026 16:55:38 GMT  
		Size: 61.0 MB (60981462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:506820e1d9ecb9748952ee50dbe46a0d2058e727c937cb28d5115e0cb654a0dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46b987231086fd123287dd4cf99a9da2f4efe85166858425ce948193d25e1d4`

```dockerfile
```

-	Layers:
	-	`sha256:95d794d7dc8211b6fe9895a90557ab46dd79740b875d7b56bee4b893130cf031`  
		Last Modified: Fri, 23 Oct 2026 16:55:36 GMT  
		Size: 2.5 MB (2527960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9f91ad1989a904685c4a6c7bb0e2834c824060f02241f1d848daeb7653c4855`  
		Last Modified: Fri, 23 Oct 2026 16:55:36 GMT  
		Size: 11.8 KB (11801 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f915e0bf77a734449883a2f1f3f2705c0f28e276941d128fe0a8e173b27c94f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88878496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f3950786ade5c6dd6684169edbd172c0f581012fa69e9152e0d21c50e7e79a`
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
# Fri, 23 Oct 2026 16:54:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:54:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7757eeda5157019b42e6988fd67433629d050e133acb71ae214bea5465408fa6`  
		Last Modified: Fri, 23 Oct 2026 16:55:06 GMT  
		Size: 59.9 MB (59938735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6203fc0857a90e80c9ea615bbcaaa331c11521ec0117436c7b478796a6bc9ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d758a0984320029ebdc78ca471a64a1c7fe56e1390bc557b99e2602bbbb9da9`

```dockerfile
```

-	Layers:
	-	`sha256:6be4917da41d32ad579f045520474dc823b2db1e1b4734c195f2104668d40bcf`  
		Last Modified: Fri, 23 Oct 2026 16:55:04 GMT  
		Size: 2.5 MB (2528509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f460ce23ba8f83e8ae2e70dbe181e8e85b6db00f89033c100328633e9dc75c10`  
		Last Modified: Fri, 23 Oct 2026 16:55:04 GMT  
		Size: 12.0 KB (11989 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0bbea8190f3077a3afc5416aef8f0de3faca166067ebf175867ead303b79c3d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93729699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcf1b881670d069bd8ba947281f6b48695a830aad9445b7e377f6a5a0fca5d3`
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
# Fri, 23 Oct 2026 18:57:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:57:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 18:57:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1b96d337f9761fcb321cb32f206cdb09c6ff07eb867540f7e2acb1fedfedde`  
		Last Modified: Fri, 23 Oct 2026 18:58:32 GMT  
		Size: 59.4 MB (59351709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4dcc263f0f13e186779c8edd1c1174c8cadd8ebba202dce1064b32fb8707dee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2bc3da58c48f0573bbe18af620e6b92639b3223d5bbe2051f383564f3fd2ce`

```dockerfile
```

-	Layers:
	-	`sha256:2886511e153fe032acd789d3dd47ce102921f50b0775ca32aef6bfcacd71266d`  
		Last Modified: Fri, 23 Oct 2026 18:58:30 GMT  
		Size: 2.5 MB (2526846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc26ca7e55ba4d2d30c2a8a7fad1a3f692a5f5d684e36c502a80d61eefdc6a5f`  
		Last Modified: Fri, 23 Oct 2026 18:58:30 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.in-toto+json
