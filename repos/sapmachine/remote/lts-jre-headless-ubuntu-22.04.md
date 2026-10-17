## `sapmachine:lts-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:2fc65bdb3dd9a58e408c56417cbf063cde5d9b85d30e9f4d209e0319e30bcc5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:fdb5a33f5b29937022528e619c8ef9f97cea5a5ddb7af032ce49764f416addb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88686626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267499f104e80e2d557740fd7981316edf164030f771d4708b1dc8a3bc242160`
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
# Sat, 17 Oct 2026 00:39:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53e72c4de09e6265a4fe689e090587f043cf699a1a9c6933e6cc00de200cae9`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 58.9 MB (58934150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:37337fc61fb02ad38530fd584d858cd0de3d6c5b185c023098e052c727821119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691ef7554d57834fe67843d8dc674cdf0357dca872fc4404eaf1c65a89014a5f`

```dockerfile
```

-	Layers:
	-	`sha256:871445ed89c373a13273c3fbf623be4fdc434ad068dee4cccdbe437aac334e11`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 2.3 MB (2301825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf29cd19129f3db9d70dec0f4c4bee1017f5c44e59285c0b6a2926fec5208fdc`  
		Last Modified: Sat, 17 Oct 2026 00:39:28 GMT  
		Size: 10.3 KB (10332 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:deeb9f0945559ef43203027a59485222f7763a3a49a258b77852798908de5462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85533579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a747c1df42100d48f6dc2bb7392b46a90c7d50634e9a680199c0bcee3ffd5d`
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
# Sat, 17 Oct 2026 00:39:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dff60162b24b144a11bae2ac702a98abbd5f9bdace3510af27bdd1683aff8a4`  
		Last Modified: Sat, 17 Oct 2026 00:39:20 GMT  
		Size: 57.8 MB (57848856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fb81811e19e71179a7328b56f7454b9e1e9cc3b6fbba7218a1ac6191b7b96869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db19db75f23c1306f4e7ce620b7073a0cdf1f50f344180f0beb5cc752e572c98`

```dockerfile
```

-	Layers:
	-	`sha256:fd6cd0c337147a25b10fba8c3afadcfd6eb1bc953b1c4f9ba889db8181907961`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 2.3 MB (2301518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ba815ae7d1f2e0efbe822620e44e2a5f53d81cbb7c2d565e29fc972182759f7`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 10.5 KB (10460 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; ppc64le

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

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

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
