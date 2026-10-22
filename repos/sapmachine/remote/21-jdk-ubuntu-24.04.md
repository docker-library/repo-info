## `sapmachine:21-jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:95e05c3f83b96b4daaf368902568a49471606c5453275a0991669d0283d309d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:700604b02188aaf5c4c081c9700f0a26cf50a2aacbb39e9acebe833d2e30e9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250183943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3564bbbfebd4cca00c70c660d03e128f7f7467e115cefc78bcf9b7e77fa1cd2e`
-	Default Command: `["jshell"]`

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
# Wed, 21 Oct 2026 22:14:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e022eb2b2cacf5eb82e2727091add37295f21daa9b33aea0099656e807c928`  
		Last Modified: Wed, 21 Oct 2026 22:14:49 GMT  
		Size: 220.4 MB (220418185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1ac1a78e7aab8d614181e51c09e193063b98c494196690a706787e6fe084a56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd983a0211f8a3b75e6080e12ba7f51ad90bd8c717044086538edd10e89bb6`

```dockerfile
```

-	Layers:
	-	`sha256:706989a6f697b9fe7accf72ecf58a285aa52438714d638280d5d6eaf317d119b`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 2.6 MB (2608515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a62fd23ee8574b433e0645605f078231fe959dcff93eed17d3db67a14cbddc`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:30253e8cecde5e4b43a7e2c7c731471a633e9bf30725e7b3327f9f95ad1d3638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247566533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a998347e24197a47498280d9e143eb9e3159b9e14bea3e1b7cceedeedf457279`
-	Default Command: `["jshell"]`

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
# Wed, 21 Oct 2026 22:46:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:46:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:46:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738175439a0e646d917d0bc2f6ebc3876d0366f103d7644dd13511bb012102a3`  
		Last Modified: Wed, 21 Oct 2026 22:47:23 GMT  
		Size: 218.6 MB (218626772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc71bbf4904cfa9f9c87aa022a0670501d27e46495606ab195ca049f2a5cd1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd52a06e100e81e9163f38cf7df611e7b701357ad02697477048c02678a4ca49`

```dockerfile
```

-	Layers:
	-	`sha256:855eb9bbfae96f542b29ef3dd423b7b91911e4cace71898632056782112fc904`  
		Last Modified: Wed, 21 Oct 2026 22:47:19 GMT  
		Size: 2.6 MB (2609127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d1f0cea20608a08bbc465c441ea8ee386938c9c15d957186fea2ab23b3ce1e`  
		Last Modified: Wed, 21 Oct 2026 22:47:19 GMT  
		Size: 13.6 KB (13589 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b1cccd635469eaaebb0b1bb15b79bdbb809dd5331a1d8c3bb556b2f2cf35578a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254392389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6de64c9d1ec556b0a0af6b2367f9addbeb757c653dae30cebfeffdc99c1f240`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 02:42:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:42:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:42:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41a31602b13122ce2a9dc78b9bb7580d0c359e771ac64c2daafc7848d454560`  
		Last Modified: Sat, 17 Oct 2026 02:43:35 GMT  
		Size: 220.0 MB (220014399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2ce23a4500b15043a2d6bd0238fc4632787c65f4e065156585411383fbcaa815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04a8ab6943dcf94185a23da3bf3a0a4f6809cea580797894c9b31c0eb7329bf`

```dockerfile
```

-	Layers:
	-	`sha256:714eed5a432553c37bebe56fc2640f169d2539a7efd2f52c6e58e6ea294b1dd8`  
		Last Modified: Sat, 17 Oct 2026 02:43:31 GMT  
		Size: 2.6 MB (2605503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a4280ead3ba6fb336582c89442e422ded87068ee5c293c656c0662cc182de9`  
		Last Modified: Sat, 17 Oct 2026 02:43:31 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
