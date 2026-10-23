## `sapmachine:25-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:232079e9efa8a59709c80282a3e18146180d194d9e877e57668421debfda17c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:aee11bf2f07c3a47a4bae9f0edf610f417514075cb54a491991df285c7a89d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252592718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46113940bf36f5d75775b41022b46ba4860cadb2464e6d0c04a24076fe8eb6df`
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
# Fri, 23 Oct 2026 16:55:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0d40ec00f90a48556cc705f723c440945e8aadab98d06cbd811ffa468724d8`  
		Last Modified: Fri, 23 Oct 2026 16:56:06 GMT  
		Size: 222.8 MB (222840242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:741fd7089946191fdfa3e26eaae0502f4bd422c0f3d9bf057a4cea830d4fae09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d3f1addaa7713eb14f7c0654c9f6b7b472597f371d0e0248e369731086c34e`

```dockerfile
```

-	Layers:
	-	`sha256:d17f54ea64a8c5f58a2782b9523ca3d4dd34b7094f82e50277907105cf7d48ab`  
		Last Modified: Fri, 23 Oct 2026 16:56:02 GMT  
		Size: 2.4 MB (2369056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:453a40f3712dd4354f54a951c8b5a120d8a98209e26b0b0c8c4b21ff179f0f43`  
		Last Modified: Fri, 23 Oct 2026 16:56:01 GMT  
		Size: 10.3 KB (10347 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1568783bec762d7d8451a0e13934c073778bf3068667ba012ed903c01110278a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248248234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb258db1e888fa3d2d5a79315c3e989ae6a8a56793892e5115f684c3b66a4be`
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
# Fri, 23 Oct 2026 16:55:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cebea808558434f3039bc6a4cc3e0d5d331841ec3ddc0a3b9aaf4a888b67ed`  
		Last Modified: Fri, 23 Oct 2026 16:55:53 GMT  
		Size: 220.6 MB (220563511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e1e529318be4ab94b2ffbc5cd3f4a35655ae7b4c3c208e6354e68813e19f1a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b503eb1fc33eefa249e473e5eca345b0972202ceaf720b2ec19608fab35bbb`

```dockerfile
```

-	Layers:
	-	`sha256:145a637f8ebd484b230595b7f366f389227c5117ac440eb7170aae58e8bf3bfb`  
		Last Modified: Fri, 23 Oct 2026 16:55:47 GMT  
		Size: 2.4 MB (2368749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4fbf95cda1bdde32567a8fd7938f6c6e3527af62d67557c1274b7adcc6b7c03`  
		Last Modified: Fri, 23 Oct 2026 16:55:47 GMT  
		Size: 10.5 KB (10474 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:57ebabd75a412779375eb569f5f413b9f12c463e7f01a7067529adceecf765b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169150909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb87ab068204d16bf2d6e75ca79c26a37ae5303e6241f8b71701293bd66541bd`
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
# Thu, 22 Oct 2026 10:01:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:01:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 22 Oct 2026 10:01:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea72e2583cf7eecb7b8fbf53bc5a19db2fb957a8287fa03e371a19d3afae46c1`  
		Last Modified: Thu, 22 Oct 2026 10:02:31 GMT  
		Size: 134.4 MB (134447272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f972efafe51c22523a8c507b0c34982f361126f1979671b8540352b9bc972cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2333664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bbda1dd52020580622f657baaf06c63d26099778c66479f9ac1956b8c5be9c`

```dockerfile
```

-	Layers:
	-	`sha256:1e34ae596671d89e36476da385190669ce98850755ffa6725055053e75a79d4a`  
		Last Modified: Thu, 22 Oct 2026 10:02:28 GMT  
		Size: 2.3 MB (2323285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b493e024c2ba0bb6e2e388cf4a140d42388368f5f6f1d9a0b640b79b4d7333d5`  
		Last Modified: Thu, 22 Oct 2026 10:02:28 GMT  
		Size: 10.4 KB (10379 bytes)  
		MIME: application/vnd.in-toto+json
