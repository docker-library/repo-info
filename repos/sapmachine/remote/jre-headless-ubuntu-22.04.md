## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:513211645662b64ac96bb251af15e734c0fba86c73de51c8497e8cd7f06ab685
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4d235310ea1e8e4e73c82977c97895944286ff381434a08e1ddb5905a4ba86d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88721712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6d363968865b01b99f1a2db707d215cec5a946179d477fe7d39844519afe65`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:54:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9119c45d9633ecc0dcd6e88278343788b3e3617cb51ba2ac5bc0ae2b061c7b`  
		Last Modified: Fri, 23 Oct 2026 16:54:46 GMT  
		Size: 59.0 MB (58969236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9f5043c950233b2bdb4be47f62b7e208220f5790e21947a2af2954bac9561b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b298a8006a10fcc3cc9e6276cc6bfce1a060a74f9e991ea6997ff4fd8dcebc25`

```dockerfile
```

-	Layers:
	-	`sha256:9cd384430e3527a66aefd481bb2b3052b3f18d91451a208a31c2addf1a5f271f`  
		Last Modified: Fri, 23 Oct 2026 16:54:44 GMT  
		Size: 2.3 MB (2299934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0b3e2bb4d2d104c3aa3bf00233a955140df3f16e20d27de1902d81eee40c631`  
		Last Modified: Fri, 23 Oct 2026 16:54:44 GMT  
		Size: 10.3 KB (10326 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c9a252c8acd3b15d6c3bf4d7a8f103e0e7e82b2c32aeaf4e0840721099ea385c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85660999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2558f79655ed68036d4e829d603893119fff35c5d497d955ad90569915b0ee0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:54:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd72d11dc488be216528336064ea503b99744a83602050c3ca6ec4035686a2a9`  
		Last Modified: Fri, 23 Oct 2026 16:54:26 GMT  
		Size: 58.0 MB (57976276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dccf08d3dbd8c0b9a1deb066d437ec8b5c81d3bdecb3ade9c824f229f8850af8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de31c5bf7b08a73afc2ee4d7bf4c1ed96401739d112648520aab533c542b2caa`

```dockerfile
```

-	Layers:
	-	`sha256:e2a563aa58325b3e7e1d475297e72a0a5aa6810784109e3eca83b8a23c58b906`  
		Last Modified: Fri, 23 Oct 2026 16:54:24 GMT  
		Size: 2.3 MB (2299627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b7dd1b4c805e21c9f444d5460e5f6ba2a686f13b8d1e60a95f25284fe202294`  
		Last Modified: Fri, 23 Oct 2026 16:54:24 GMT  
		Size: 10.5 KB (10454 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c8b1e29f27e8c7a33d070c119e71c61522bb3f2f96b50173bbbfa6723e64ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92722048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b878cc6cf5099334dba3a7c9c1049530118f90df6ff8422a7c66dbd75f4fca`
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
# Fri, 23 Oct 2026 18:51:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:51:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:51:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ca76cc05b59e404b62a3ef79fa7ed29f924d915bbec4ae5a55a706e79ca338`  
		Last Modified: Fri, 23 Oct 2026 18:52:20 GMT  
		Size: 58.0 MB (58018411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1060512df9445905607a377a6735157a78e516ec06ac5d488dc924c832ed369d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b1c7eb9ed1b0035e8c288bcb22a261a5c153c34053d7b51b898e2ddb929246`

```dockerfile
```

-	Layers:
	-	`sha256:b2ea84656d4a13c4749052b58c9d8566b6e5509b59eb32a762bf0162e317b0e2`  
		Last Modified: Fri, 23 Oct 2026 18:52:19 GMT  
		Size: 2.3 MB (2298758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5ae0451481411f7718b56fcd827ab304e896f0695414cfe3f2ea44d372636aa`  
		Last Modified: Fri, 23 Oct 2026 18:52:18 GMT  
		Size: 10.4 KB (10382 bytes)  
		MIME: application/vnd.in-toto+json
