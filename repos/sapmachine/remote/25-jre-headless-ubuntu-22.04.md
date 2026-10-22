## `sapmachine:25-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:af8569927cfe1a98e49dc1c6e13828db49932a434120745893d439150138c02d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:3f2396ff26af6bda482f8c8e2b4098774d690967bd37b8f2d94eb15f433261c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88721440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebfbeecd4d78f583f3c1490ae75995b960dc2ce0d27cf1a478ccb34a924c76f`
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
# Wed, 21 Oct 2026 22:13:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d9306e9b894e90595e0c11bfc2eb3f1007659fcdfdeab5c17f181c697f506c`  
		Last Modified: Wed, 21 Oct 2026 22:13:29 GMT  
		Size: 59.0 MB (58968964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5138fdb9a35e854e605ec65f020b6fe13edd4aa82d9c7bcf6720d91a5aaf0b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436737923fba0e745b0afb75eae177ff6ba774430641b47ab3cb097356407dee`

```dockerfile
```

-	Layers:
	-	`sha256:291184074f8237958384bfd8cde1baf406ecf1696dbd9484f9362ffe1bc0396f`  
		Last Modified: Wed, 21 Oct 2026 22:13:28 GMT  
		Size: 2.3 MB (2301809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcce921de34cc3f65fc9b90204aa0b6c5ce821a4d8cf294983c8aed224fb6829`  
		Last Modified: Wed, 21 Oct 2026 22:13:27 GMT  
		Size: 10.3 KB (10318 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b26a0040a51b981348ab5683d8a7e55feef55d4197411e961e6be4b0f256df5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85555716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5c679c612e3c59e905bd7add541a4bcff20bb386944e43a58f22aef5a7d6a7`
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
# Wed, 21 Oct 2026 22:45:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf3ce76b27a545bb454e5572474bb9ddfadb130322c7d26b4c8cdc552994530`  
		Last Modified: Wed, 21 Oct 2026 22:46:03 GMT  
		Size: 57.9 MB (57870993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6bce0dfd28c244e2005ef8fa405844ed564817ef0e2d709606d4a366663ec05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5e0e784233e07fb9b89d79f1997e554822a01764fbc48d19cd68f8d660bea5`

```dockerfile
```

-	Layers:
	-	`sha256:92ab4d94a1b4bdb817bbdc3556c4ca68a0befe50b8f6ab59821a597025374277`  
		Last Modified: Wed, 21 Oct 2026 22:46:02 GMT  
		Size: 2.3 MB (2301502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ca29e6f1f688c171475c2690bf1153cfdeff74e44a7d6de265fbd36fa2175d1`  
		Last Modified: Wed, 21 Oct 2026 22:46:02 GMT  
		Size: 10.4 KB (10446 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:684574fafc93cabb8881c77d54b88d3e4bc892952575d5202f40693c836aa00d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92580532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1f498d9442a4dc7301420fcd03c46b6fb16cd4972073e7414fb6c663353263`
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
# Sat, 17 Oct 2026 02:35:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:35:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:35:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe69b3c1d31e24f5e94861b496187985f4316af9af86080026577f16f6c01c0`  
		Last Modified: Sat, 17 Oct 2026 02:35:47 GMT  
		Size: 57.9 MB (57876895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d43d60a7d67a145208b1f7633e51caf788fee0bc4838f5421972c7acbdd411c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e305c53751b2d07ee1c0124161f0e23d6a66537748d424f077847ce595b03a`

```dockerfile
```

-	Layers:
	-	`sha256:42c72cdf2738c3402531c41e374937c469437b3f1c6b8d8e86fc26b1175adb5e`  
		Last Modified: Sat, 17 Oct 2026 02:35:46 GMT  
		Size: 2.3 MB (2300649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03d214a787770b86827fb76e8da521cbe237978b7831573c536e3fd9dd0bd9a9`  
		Last Modified: Sat, 17 Oct 2026 02:35:46 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json
