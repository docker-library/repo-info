## `sapmachine:21-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:0c50afaa04f896503cfca916c77bc5a71c3939780e8fc4bb04c4cd594a104b58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:e313ba69314503acc161c23ba51e4c9523683dde0d1c2c5f753b0f4bbd461c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247808045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87487f863eff1e9c36a9d9fce600cc97ee5f0a47debad014b5d30b86c3d022f5`
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
# Wed, 21 Oct 2026 22:14:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf4f19eab8adf34207b98ea0bb83918d7a044c67f09b091b43720384fd6b3e5`  
		Last Modified: Wed, 21 Oct 2026 22:15:01 GMT  
		Size: 218.1 MB (218055569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:60732cac172007fc8e551cbed3e38b392478269c72173a7f28c1cd7891292f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a34df408b169e2cdf325de588d15b126d45be024641c694f190cbfdc0be0fe`

```dockerfile
```

-	Layers:
	-	`sha256:576aa6783b3aacd5f53bc7e35ccc0d613e7edec8abc4b5e0d801c8b67a84c1e0`  
		Last Modified: Wed, 21 Oct 2026 22:14:56 GMT  
		Size: 2.4 MB (2380138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c2675de5c9b7fd1f58cfba0ef6293eb5cbcd3b34b81c042cc078d0c38639998`  
		Last Modified: Wed, 21 Oct 2026 22:14:56 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7c930f788f66cddb9dd00722d050fa74b7c60ffefcefc3c0a58838cdbaf4a4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243545232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cb2ab4278867167ad3028692bc95327d76baca495e3d06ea27e42a9897d9a5`
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
# Sat, 17 Oct 2026 00:40:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:40:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444234e5c9d56ea2201b1e135b146864f748c9905be4c16378e2f2689bda2f2d`  
		Last Modified: Sat, 17 Oct 2026 00:40:41 GMT  
		Size: 215.9 MB (215860509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:544ba203520d6be36b98d6ac4f8582ad648c1e313f4bcddf0ff9afed980ca235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620d0888b6315b5b1a493534d71f3ecfa9292ef6710be717083911799d949754`

```dockerfile
```

-	Layers:
	-	`sha256:d2b2b62a1f7d5678de58d93045bb199c67202c2f694efc6921816446a109be87`  
		Last Modified: Sat, 17 Oct 2026 00:40:37 GMT  
		Size: 2.4 MB (2379168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:546a6945b505ed7a175133f8ac34d90e697889fc78956c38e68136b486a8b93a`  
		Last Modified: Sat, 17 Oct 2026 00:40:37 GMT  
		Size: 9.7 KB (9742 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c2f3e30663af919a78f6832784da3c46f304da6ba29df6ce09c947735e7ae4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252000318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e6bb936bbf254a36550ae0889323d7ba10c224c5f3f25832a6853ac8687fd9`
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
# Sat, 17 Oct 2026 02:47:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:47:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:47:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3615a2ae1f5c7b875b7e21941a1a0b1cee3a2638297c0dad002c718afd99e05a`  
		Last Modified: Sat, 17 Oct 2026 02:48:39 GMT  
		Size: 217.3 MB (217296681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:43ef0310c71a5f89908ac66ef4c76c9a1202ec54d77c11214d4fd574e55f67a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e37a7d9569a273f22dfdb25d0ac740f23cc55308db5117f20513748db959545`

```dockerfile
```

-	Layers:
	-	`sha256:059578c2bf2d50b485a1ba73c8cc3548d1ebcd55cace5b0e46156aa2c922c91a`  
		Last Modified: Sat, 17 Oct 2026 02:48:34 GMT  
		Size: 2.4 MB (2376992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7937530559a59b0cc5f78f48995622d91e300f5387266fba9e94b09522e8cac0`  
		Last Modified: Sat, 17 Oct 2026 02:48:34 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json
