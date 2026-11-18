## `sapmachine:27-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:708d09c399f4fb2f6b9af14e5d061d93b8a939856c74466745be7e7632f4d046
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:e71e4d5a8e756daccf9b5065aeae4d4363bf7b00ce08a53581bc6172ef411ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (89042050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6a04c5665ad95adc96cfe71f9e0008d5ca8d35d53c5a84774e5e60ea70660d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:38:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:38:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ec78b9b59dc19c2e8df1fa8862aa33f5ae4c185ee9e3ca71e001f60bd5ad88`  
		Last Modified: Wed, 18 Nov 2026 16:39:10 GMT  
		Size: 59.0 MB (58972517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:da27e1ecfb4ed34b204b8f7bde0fdcb81453ce0ab557cb4904f802af3f534a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0694aaec98eac0f1cb5f0781b3aa0f9616ab936e0a4d04a36832a2587aff8f1`

```dockerfile
```

-	Layers:
	-	`sha256:ae1801d7776baaba88097d9d58c8a7b977c457463f6a167265d77150a4e88c7e`  
		Last Modified: Wed, 18 Nov 2026 16:39:08 GMT  
		Size: 2.3 MB (2300538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b68ee4475361715c652e5c5ac26ad86457af5e326a3d4c963f4fdf78d9062803`  
		Last Modified: Wed, 18 Nov 2026 16:39:08 GMT  
		Size: 10.3 KB (10315 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:474d0b5390da7b9f8d4d31430c48f5352000eb3a78ad89cacd6bb352b1379dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (85981484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187fcb3252ec702c968b0ecc7ff6ef9f91f8c5461c121b085888d641e5ba644c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:38:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:38:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:38:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46aa1f5a536ba7013d84b9ce29621cd6663ef36af1ece68ea91febed76c4700a`  
		Last Modified: Wed, 18 Nov 2026 16:38:27 GMT  
		Size: 58.0 MB (57980072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cfd7efbdc7d020f87cdaeff3683825fb3356851f82ac36d83f09d62ea2ce0842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fd950b0bc2fdbd3fa886470d8f8ebae962d42e7602477892d4c3cdf7ceb943`

```dockerfile
```

-	Layers:
	-	`sha256:f5f77661625698641f26d93548b60ba596fcc9e27ca0bfc576e91ce121d955b0`  
		Last Modified: Wed, 18 Nov 2026 16:38:25 GMT  
		Size: 2.3 MB (2300231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916b28cf58589ce489826af38b9bc42ea2b17a7099d06362980636c12814f896`  
		Last Modified: Wed, 18 Nov 2026 16:38:25 GMT  
		Size: 10.4 KB (10444 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5329b9a947865e347e678abcfd5b81c675e8fd2e22b8c8693236ec834cd425a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93037146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f0b257479d5c858f61c5f708dce4a4d73976c67172ea843512c1fff6851cf9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:56:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:56:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:56:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725fc91f268d24e60e7dd2d740c080d0a3c2b50d1e901b54b132e8d10913a2ff`  
		Last Modified: Wed, 18 Nov 2026 16:56:38 GMT  
		Size: 58.0 MB (58019046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc4585a8e88d0c3510e19dde04e7dc25c9c649ba27e97ada4b7ce796a3ae0e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b01e4fc2325fdaedd0bac18da218234285767dda04fb7feccc48724af8bccd1`

```dockerfile
```

-	Layers:
	-	`sha256:23f8a88ba23b5addd0a8255bfb096f34d53d246d25c3bc87fce82257e426c155`  
		Last Modified: Wed, 18 Nov 2026 16:56:36 GMT  
		Size: 2.3 MB (2299362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9771561a469166c4c5e89fec6f0e3c933ab096894f55b8b2a5566a33890641b8`  
		Last Modified: Wed, 18 Nov 2026 16:56:36 GMT  
		Size: 10.4 KB (10372 bytes)  
		MIME: application/vnd.in-toto+json
