## `sapmachine:jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:4b513e81c7a30420586e3fdeaebe637f3cfcde6fb5df737e75cb4b8459f56288
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:666797b081a27058e5cdabd0ab0d0b1d5a815dd183e1dbd0b3087ef987f36fb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90243098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f11f798ae27e15ee234a393d37f828f6946552632d01216002a220f2a5e0b3d`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab9ca9c1fd72044b965a58ea943216734350a897d90975f7d99b829d6cc409a`  
		Last Modified: Mon, 26 Oct 2026 23:38:48 GMT  
		Size: 60.5 MB (60490610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2d52aeca935a125da9c7825484f961aa60d02fff1b6599121adba829ba620242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba4e93e87c1df715a302385c903b6f2c9e012de3d5b004a291f1f4dcfa280c3`

```dockerfile
```

-	Layers:
	-	`sha256:86896330b4f325ad56459d4c28885b0fca1a7ce15f7d0b59adbe4f0aba095ea2`  
		Last Modified: Mon, 26 Oct 2026 23:38:46 GMT  
		Size: 2.6 MB (2551972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18cc920a1273c7d949e35b492429ff23936bcb07dca9ace8ba62714df99f7cb`  
		Last Modified: Mon, 26 Oct 2026 23:38:46 GMT  
		Size: 10.2 KB (10178 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8de4a4d0f1882df7d59a5ae6f928354a3dfd5291f21a164e09622631731637b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87182346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec28d55c53a25672bccf8e3eca58d7a7841e49db56cd535864f9d4966131f5de`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:43:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1aae0b01448424f3f0291e63838ae1231fd967ee55c1580c4ea66a74b04cad`  
		Last Modified: Mon, 26 Oct 2026 23:43:45 GMT  
		Size: 59.5 MB (59497739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f30ce0b4b735b55ce7c4364a2bffb0bebe54b9e6663739ac8eca50e26f987d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6b4db394df4f0b9bd5d76fcf71a727130715cd1d24526ab8be18311e1cdb9d`

```dockerfile
```

-	Layers:
	-	`sha256:ce3ee11dcfa81fb60e29cba4a3a5ff517e9de7b88d1c26bbb9addeb8b3c8d66a`  
		Last Modified: Mon, 26 Oct 2026 23:43:43 GMT  
		Size: 2.6 MB (2551675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c626f5f00d9fad37ec15ac26e1f4505f4f9ec328786874ef49b3ac1f6508d815`  
		Last Modified: Mon, 26 Oct 2026 23:43:43 GMT  
		Size: 10.3 KB (10307 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3a9e38a52a601fb66f630a3cc73ad1dc48a1e4491d38a0f119e0a06413db0e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94470956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da27c74fe85ec89073fd8d2f106e8e017d41656b8c85c0909948347e12017d8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:53:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:53:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:53:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba55803ebc38d3815f47918a718da9a5fe9fe0f2c763f547cbe35813e109090`  
		Last Modified: Fri, 23 Oct 2026 18:53:43 GMT  
		Size: 59.8 MB (59767319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9d7a36c87c990b2b2ef7fec0cf95e95f9e5f77778ef6da060b5e2ea5b7d023c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0952d34941f9ccc62eb6429af807bd9d5266adfe0bf75f32a1c5f9ddd076b7fe`

```dockerfile
```

-	Layers:
	-	`sha256:be3298bb9126ca2c3460e5d868cbcc73171df305c9b89300c13a4cdb5c1d2a96`  
		Last Modified: Fri, 23 Oct 2026 18:53:41 GMT  
		Size: 2.6 MB (2550874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3794dbbe9c7dd4b3d43746ffa5489077bb6cc40ba0cccd2b1bd23b5023ec64f0`  
		Last Modified: Fri, 23 Oct 2026 18:53:41 GMT  
		Size: 10.2 KB (10235 bytes)  
		MIME: application/vnd.in-toto+json
