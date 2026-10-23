## `sapmachine:jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:5a0887eb3d51192bb2b5e8c1b80dc67f868e9ac2c49d2382868c6c009e2b3fec
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
$ docker pull sapmachine@sha256:72b9f12e14a4b6e7efd8c6580f1a03a5784bdb27b64bbb63e465d9e344dd8663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90245170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746a0856236ce3dc634685329b5909634afc911626314a655494806c049faf1c`
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
# Fri, 23 Oct 2026 16:54:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6347116022d1367c1b9bb6035fefaedf7b56809277fa9bcf2f82e2d7889acda5`  
		Last Modified: Fri, 23 Oct 2026 16:54:48 GMT  
		Size: 60.5 MB (60492694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:772d30d952e52e67f5a7466e0843af4f92f522632b230378e8bc6e02b5cf3880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bcbbbed0e8590a65f510f7f0eb5198c0317c4bc3663532c1ed11ad5ee1ca27`

```dockerfile
```

-	Layers:
	-	`sha256:d69ece2e2e37bb442a2edb061aed22ea5c80952e3fdcfa6ea41134ac1422a966`  
		Last Modified: Fri, 23 Oct 2026 16:54:46 GMT  
		Size: 2.6 MB (2551960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ac1be0a43c51b4651d2143d1a0f029a45352eebcf937c1dfec58daec9fb8ac7`  
		Last Modified: Fri, 23 Oct 2026 16:54:46 GMT  
		Size: 10.2 KB (10179 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:17ce6b3771e841203f863e00b50e4907f665a43a9535fa34d245dd4cfebfbd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87184757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f8b34370fde4ef4561ac60f54603a1fb6f19093107c536a1bc4f7b73b9fcbb`
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
# Fri, 23 Oct 2026 16:54:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f987ef5471a8410b1fc3bc5c84f6f7fa868b52342dc6de335489c920f9d4469`  
		Last Modified: Fri, 23 Oct 2026 16:54:47 GMT  
		Size: 59.5 MB (59500034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ddb133ef3f4ed9edd4cd4c56c0318d2eebfcfe7a1c3c1aae15c6cecd1ade9ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8fb7f69b1ea51dc49f332a4542093b744c8ad28a91c89518a89d5bdde94f70`

```dockerfile
```

-	Layers:
	-	`sha256:acf119ba94014792cb7016a69d971833271e1284bf8b10109c6cdb19ce300590`  
		Last Modified: Fri, 23 Oct 2026 16:54:46 GMT  
		Size: 2.6 MB (2551663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:128053ef5db5339acacb72ab3674c670d7b58e35fb824f781702b5f063774a63`  
		Last Modified: Fri, 23 Oct 2026 16:54:46 GMT  
		Size: 10.3 KB (10306 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9e8d5eea6d297dec371e61ddfd3038eee990a1c10d7712cf7014d10eece7e9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94462185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588f40a9f1079f9dff58cc54a1f7bc5c3b332fff75196cd9f1e2995542169a52`
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
# Thu, 22 Oct 2026 09:54:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:54:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217aecd7523b3d2bace3a0aefd124191f1b3ace3d6174d61685381979b10217`  
		Last Modified: Thu, 22 Oct 2026 09:55:07 GMT  
		Size: 59.8 MB (59758548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:adf273a8e52d9666118cce405723fc6e0998a3ff136d5e091a943789fc4fe6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ffb5978ba4d439f48019845c0581403e5f6ef522e54daf8d38bb6cbeb229fe`

```dockerfile
```

-	Layers:
	-	`sha256:8400d83e6da58a5ea1016432b1294ab34953ec478ebc5dacbfff465a1329e1d2`  
		Last Modified: Thu, 22 Oct 2026 09:55:05 GMT  
		Size: 2.6 MB (2550842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84dd3b4dd8c191dab488e0546cfeb7e407f51bd09623356915d593c917081c92`  
		Last Modified: Thu, 22 Oct 2026 09:55:05 GMT  
		Size: 10.2 KB (10210 bytes)  
		MIME: application/vnd.in-toto+json
