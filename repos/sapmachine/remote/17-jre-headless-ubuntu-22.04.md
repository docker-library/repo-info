## `sapmachine:17-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:5497288e874439cab52ddab085d8efbc49d04d8a0a1263f8469d06d67726e7f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:bd23c0cfb9266a6d9932a02a6e5683f31dca1cea018b9136b96305773b58b0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85758183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760c589c38ece3ed41aed8cf4471969fb1415f63a093bb8a973b0dee7eda45da`
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
# Sat, 17 Oct 2026 00:41:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:41:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9a770db0ed1be0813b0897f998ce2eaaab5934a80ced3a60ef73785d140806`  
		Last Modified: Sat, 17 Oct 2026 00:41:18 GMT  
		Size: 56.0 MB (56005707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:022bf2d228e77ae2888a5efd58adcc9f3a44213dd2fcb5d0663a33eaa576c1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce32adb6df8a172fca6f77d89addf654eeb31948be4bddf2f228cbc2931c000`

```dockerfile
```

-	Layers:
	-	`sha256:0d33b3a1da6bac05492aa6043ceaf58cfcabdd1a61def481ae204170e5bbf389`  
		Last Modified: Sat, 17 Oct 2026 00:41:16 GMT  
		Size: 2.3 MB (2294969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f49edae648f92c1cb9a23d1cc8fd15b7c48295d121821e51b2c35e5445cc16b`  
		Last Modified: Sat, 17 Oct 2026 00:41:16 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3bbbce91b65da2c22cc0b43a60984cd1bf45f6b282c65ef52682fb21ebbc5c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83131705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbcbbb89ecffe608e6b6e7e95197b08742c5fb11fd59fbe00f3d06464bcd048`
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
# Sat, 17 Oct 2026 00:40:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:40:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab402977855e92e1a36ef199126d271e1a0c4c4562e65c3736783222cf160b3`  
		Last Modified: Sat, 17 Oct 2026 00:40:48 GMT  
		Size: 55.4 MB (55446982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:44a6ea3a0176c29480a71085be60b0cc2acbf37133d122d82ae347121bc0be00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10b1f9090d1503aa11cef7df2f0dc8026fe4185574c744ebd6e165be934f442`

```dockerfile
```

-	Layers:
	-	`sha256:c6e29dd7924d90036e07e604c413009d0141141f157756e660164edaa7e93eed`  
		Last Modified: Sat, 17 Oct 2026 00:40:47 GMT  
		Size: 2.3 MB (2294641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05cf4eb79cf2bea3bf738803d3283e4e8f17e9d9769878913febb131cb4da7b2`  
		Last Modified: Sat, 17 Oct 2026 00:40:46 GMT  
		Size: 9.7 KB (9737 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6e5f080ba1010f698c01701dd4da8dcbf159974c444b3e93055313a9b832e412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89878062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2025715fb8defef76f9740d70cc174bb0127677fcd5b38dab479eaaa0ea72c2f`
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
# Sat, 17 Oct 2026 02:54:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:54:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 02:54:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e019bfaac337830cef6829f55e4379e9b8e738904e76539fb31a731abd2509e0`  
		Last Modified: Sat, 17 Oct 2026 02:54:44 GMT  
		Size: 55.2 MB (55174425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:81345c1d737b3462d8ae298c78f3526da3b056a40a46c106e55b02878e840d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6467959c9fd28c3f07f0895511f73d34c68599469a8f7547a3bfe591059694`

```dockerfile
```

-	Layers:
	-	`sha256:9e199fab784e456f1a8b0b7d9661c731f01972b3d567f27506147530178f7d01`  
		Last Modified: Sat, 17 Oct 2026 02:54:42 GMT  
		Size: 2.3 MB (2294411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c5c1c0ed2085dfabbdd733037295b696fd4ae4288127d2a502981d9fc0e45d`  
		Last Modified: Sat, 17 Oct 2026 02:54:42 GMT  
		Size: 9.7 KB (9677 bytes)  
		MIME: application/vnd.in-toto+json
