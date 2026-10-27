## `sapmachine:jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:f13980cf1e6d52bab9f059b42348b1ef96ea0f02ef59102f7ed239756a8e13d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-22.04` - linux; amd64

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

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:jre-ubuntu-22.04` - linux; arm64 variant v8

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

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bc34fd0a7af8160608f3c2d00910df3bc19abe08e86d9dfc0cdf8d6f62edba66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94467383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba36c6ecbffaff9119fbc808bcf4556429823092cbf00d7017ef125a6dc74edb`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:27:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:27:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:27:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea90a444d5f78b4b9df5b671b27fda833e565ec0b51b30ab0470ba068e59a8c`  
		Last Modified: Tue, 27 Oct 2026 07:28:19 GMT  
		Size: 59.8 MB (59763450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9ebf12af09c5c6cce3f8efd9570a948d4c9cfe9f78f7e1425c2b505bbc4d881f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09116d9b1225e5b12783322fb951e80a4af541fe93936020ec6e6d41ce438dd`

```dockerfile
```

-	Layers:
	-	`sha256:7c1e5a6832c0bb443a8b511af69c13014ecb9a688b68ffd582691988fff5bdcf`  
		Last Modified: Tue, 27 Oct 2026 07:28:18 GMT  
		Size: 2.6 MB (2550886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c98495021d6889e04713d8d8167aa8e27e0823ce92f15f7686566034f5907d`  
		Last Modified: Tue, 27 Oct 2026 07:28:18 GMT  
		Size: 10.2 KB (10235 bytes)  
		MIME: application/vnd.in-toto+json
