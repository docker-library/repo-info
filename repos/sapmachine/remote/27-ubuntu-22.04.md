## `sapmachine:27-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:9a05ba3c21fd4d9938fd9cd639c145054ba9894ef9ca1aa5a35a18b76bf6efd9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:53cc77de1e080be581bad10d2d8f64e0671a707c91bfd2fdf76d54dbb4e5499b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169036805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce38e8bea957a380d8232ef5c0aa0aac51ee8538d62f0042a751b620b0ca5f1b`
-	Default Command: `["jshell"]`

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
# Fri, 23 Oct 2026 16:54:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2366644420a9d34f37de781bee5654dd12e9a6c65409eeeb53b4dfa0946e65a`  
		Last Modified: Fri, 23 Oct 2026 16:54:58 GMT  
		Size: 139.3 MB (139284329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:29e115f061f64a2c8a46827499746049a19b8d1b1b32f40156546aa4786eff1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070f1916a93fcce65cd84a94d7f51fa7d167cfce83c89073a72a095505cb208d`

```dockerfile
```

-	Layers:
	-	`sha256:632bd513bd3ccf720ce31ad4b1ed36046f6baeb0cd82fbe977de6ce3e4c4c11b`  
		Last Modified: Fri, 23 Oct 2026 16:54:55 GMT  
		Size: 2.6 MB (2575920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f10faa5ffe01430637fbc444a4b71a531469e332d33eeb631f4fe0c385ce204f`  
		Last Modified: Fri, 23 Oct 2026 16:54:55 GMT  
		Size: 12.1 KB (12148 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2729bee049b3288b7df92cea424c358784a95765534a7afcc6b7366374d17b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166020710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a5fe6b53f08ea88f2c9c1484f9d1fad22571e10ac67ce8a8c05bb155e8d9f9`
-	Default Command: `["jshell"]`

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
# Fri, 23 Oct 2026 16:54:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246cfc9b6442ae0c5c5b508a21e5652c3b05efb72742fd1c0588f283c6eafdd`  
		Last Modified: Fri, 23 Oct 2026 16:54:57 GMT  
		Size: 138.3 MB (138335987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5a7f01f93ab1d4e3f3032dc132f6f8036926c0f595f8111374ccf77933faa272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3a0146135f13e7251e3a017557d99bb9dfb56d324da018e43e46381e5a9857`

```dockerfile
```

-	Layers:
	-	`sha256:5e732884c340d7e6cb498528ebcdaccaeb8d8003d09377455bc9c9ca7a554505`  
		Last Modified: Fri, 23 Oct 2026 16:54:54 GMT  
		Size: 2.6 MB (2575695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69adb776ff30725b253189f3e9b1ff3ab37115bae8ce3fb8bdb0bfbdb22a7d9d`  
		Last Modified: Fri, 23 Oct 2026 16:54:54 GMT  
		Size: 12.3 KB (12347 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ad5dffb9dd7170bc82214036200c85dbdf76ae13eb898114dd082bae1bef878f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173189341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e97d7cc5967d0a2dfd57e5ade8ceaef9ca85fb583e9197ff772108c5413867`
-	Default Command: `["jshell"]`

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
# Fri, 23 Oct 2026 18:55:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:55:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:55:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292517018940a62539afdb8ac4829b5ed282af2ae0a864b9f1c157f75d58f882`  
		Last Modified: Fri, 23 Oct 2026 18:56:17 GMT  
		Size: 138.5 MB (138485704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc1eebe0b1165b3e9887be1f98df02f94bdf8a5d77319b8bd4eb6f302a489674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b555b6b44740e351ae941328dc0ba4d4132d2eac0184f89f33a2b7d0f2a94cf`

```dockerfile
```

-	Layers:
	-	`sha256:027239e3df9022425965888e6fecc9296b0f80aa2e2ed1172fc6977f4303d64c`  
		Last Modified: Fri, 23 Oct 2026 18:56:13 GMT  
		Size: 2.6 MB (2574870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9eb634f0f70419b4b7380d99b4bc585cf2d3f2158c70b8ea5dc916c2c94798`  
		Last Modified: Fri, 23 Oct 2026 18:56:13 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.in-toto+json
