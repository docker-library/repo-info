## `sapmachine:21-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5b8253f470cfe39847a7731c479255d4619c0b08307d94744583599d5bfee0fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:a714b3de17c8909bf6ec08014e3a8475c2f85382657d8057ea8ec12f3dd4385d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247429327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7802525adb25212c6294f110a4d376fb06ecdb4603899a1efdc18499f1a8a0dc`
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
# Sat, 17 Oct 2026 00:40:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:40:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f81190437eef17a0c608e1eb5bc1c9f7d19febbad11270646b461bd1256d2d8`  
		Last Modified: Sat, 17 Oct 2026 00:41:02 GMT  
		Size: 217.7 MB (217676851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:30550374e1972191b8dd6dc6e4edd194a199150f03887623f8a53ed1f65fb502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e253b733af86a634e6c70b0b70205975c0319c5d600d1e3ac3661809bfd6d0c`

```dockerfile
```

-	Layers:
	-	`sha256:9a79db5e1793b327686946885f4f076a51ba372689dd3a49b37a8a77bdcfd801`  
		Last Modified: Sat, 17 Oct 2026 00:40:55 GMT  
		Size: 2.4 MB (2379496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b8301e9c942df403271fa8fb3ac8ae8681783427b3b8930f6eafc6ed6f45a44`  
		Last Modified: Sat, 17 Oct 2026 00:40:55 GMT  
		Size: 9.6 KB (9637 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

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

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; ppc64le

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

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

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
