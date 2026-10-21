## `sapmachine:21-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:30fccef1fc9e29b7a28b19d7dea33e07ccdf0617ddaf6fdca0940ca9e494fecf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:07b77b577b4cfc87d53cf7787b249ec967facd898399b3ee6f0c91c5bef1aa75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93295613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d282784c3ed8f84a5c1afc5e0f85ee1c01e75277624c268f21a1bf73bd1dcfde`
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
# Wed, 21 Oct 2026 22:14:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3099d9cfe6b7b3270fb1f46088e839d25ce95a1c4ef3cbb5a21d0eedc2cf91`  
		Last Modified: Wed, 21 Oct 2026 22:14:50 GMT  
		Size: 63.5 MB (63543137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:84df074b34d734326680638ae147a77dee9339cbbf902767a68d8ee723e80e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba224f385575e0e2bad60eee9290ce6c95b14466757c08a3419a0d757b218a4`

```dockerfile
```

-	Layers:
	-	`sha256:e93469c23fa1c6d47dbc7e684a856f8de5054df53d7bca95079d4d54a4f8302a`  
		Last Modified: Wed, 21 Oct 2026 22:14:49 GMT  
		Size: 2.5 MB (2548679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f90cc2fc435f6e87f428cf4af460bc7642e2f6952bf009d2c40ad83a861330b8`  
		Last Modified: Wed, 21 Oct 2026 22:14:48 GMT  
		Size: 9.5 KB (9507 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:63cc4427c675069a647ce7a02872af078249ff27fd330b6a0995af3411ad9c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90259290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d7608482d5867ad18202030f30c2093a1d1bb149f6862207af1cf936888be8`
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
# Sat, 17 Oct 2026 00:40:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:40:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f7244b43ff9821577bfa5e0d0b1f737d4f13e223a55facec6eae02ff05fa84`  
		Last Modified: Sat, 17 Oct 2026 00:40:19 GMT  
		Size: 62.6 MB (62574567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1f00cffc4a52e02b0935ee2fc3b7ed66cbf3375cbb1e4745997cf38446dae6d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4235cfd5a5b076cb8a76fc348bcda2577b849cfc95d33d9741c73c58e2deb4`

```dockerfile
```

-	Layers:
	-	`sha256:3741921f1737fa3fc3267bf37911bf531c59af57c6ba8a1f2cce1044e631fbe0`  
		Last Modified: Sat, 17 Oct 2026 00:40:17 GMT  
		Size: 2.5 MB (2547701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b1b2959d960705cd6e70f60c31c6d4a28bcab16f7ef717ce98eefba23c4340`  
		Last Modified: Sat, 17 Oct 2026 00:40:17 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b46a3894db4934a5092092da47546c6a8f3e725ed9858aba7d844370369c251d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97901762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d438b253130d44ca956d93944dc079caeb85d6f3b0278df0a3bf02b57a3181ea`
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
# Sat, 17 Oct 2026 02:45:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:45:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:45:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76b3309bd6b6e7949244460e45eb6e368b6c611220b290ec3eccc73b5ea53ca`  
		Last Modified: Sat, 17 Oct 2026 02:46:01 GMT  
		Size: 63.2 MB (63198125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:646cc917498061bc0741870ab4e7c2dc2bbad831fcc4edca07bffeac90f7bc3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbb0c3da7795c88138003b5451d3da061210f3df8a9c460aac19b3d52aa3002`

```dockerfile
```

-	Layers:
	-	`sha256:5859dd3da447809db27d3dca2356e33894b4c76248e8e2238402f82a4b08f4fb`  
		Last Modified: Sat, 17 Oct 2026 02:45:59 GMT  
		Size: 2.5 MB (2547551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe97cdd6c1286d2c294f7dd9769c68938af443dff96ea5b11c73bbada750ac6`  
		Last Modified: Sat, 17 Oct 2026 02:45:59 GMT  
		Size: 9.6 KB (9566 bytes)  
		MIME: application/vnd.in-toto+json
