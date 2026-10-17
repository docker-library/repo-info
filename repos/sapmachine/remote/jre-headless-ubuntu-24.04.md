## `sapmachine:jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:35a40ac33dea118e4764dbe69458e5b15940f87c64cfeb5fc21e71c7f68e05d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f9b025f3e7ab6e4ad2487367f7e0b39d14900348cf61de147b982298f6f48a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91527451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a79f93426702c394aa63139d41067b08f54cb4000265dcb3852875378ad966`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fa9f90e40b9ec272077c7b421e6a62a35b5384e58fe07e9ab36d05a82e13c3`  
		Last Modified: Fri, 02 Oct 2026 01:37:20 GMT  
		Size: 61.8 MB (61763029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9b1bf4715e9545749996f0b0f0db12ace4f6cf85d9a4ab8a22608b27f7f9accc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2288744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b4f2f5e7bd1d9007177f482f9ac0cbef7aca2b06d330cc55e993ba7cedf601`

```dockerfile
```

-	Layers:
	-	`sha256:7cd4d3384b2b8325441839defe141b4f40d47eef05cfd0f15218f5fbe945b878`  
		Last Modified: Fri, 02 Oct 2026 01:37:19 GMT  
		Size: 2.3 MB (2277855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfa30f5a52e9529e7db7a7389d1b36fb8d5011350070cecba6a59aecc9cc63e0`  
		Last Modified: Fri, 02 Oct 2026 01:37:19 GMT  
		Size: 10.9 KB (10889 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ebcc007f524fdbe833d4c6937ff2775d23e7187f52d2f08354acec3ebabe6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87319658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc45c33c7a75257fe049b25f2c669991d22398eaec8bd606243f263c618a52b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:37:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:37:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d2b00d28be5a3830dfc0c60824e76843cdc908f6130ba4acf6badb00eaa84c`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 58.4 MB (58379897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e3d339bc865fe905550b82b2d865a0c9ad2960215908d014565d30992a115b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b858789d98ae31fd1ba8b397ee32cfc44bac39219ba8fcbb34edb1aef10cde`

```dockerfile
```

-	Layers:
	-	`sha256:4230e15d227f7f638377c5f8b4c2dbd5d392ae382a18f3d0478eb410e75c5012`  
		Last Modified: Sat, 17 Oct 2026 00:37:55 GMT  
		Size: 2.3 MB (2278365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6aaa053914cff57fb470c5273a7ecd89a005b0d40b8123571e25f1566333632`  
		Last Modified: Sat, 17 Oct 2026 00:37:55 GMT  
		Size: 11.0 KB (11042 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:63095d1affdda40af3132c069c4a2fc52c6fbd28c064ab1ac2188b90a33c7894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95556207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a306e9301dbc8e7771e26790170d790db416b44c143dde9c4a20b226c430b02`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:27:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:27:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:27:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca00c27eed46d7b8adca9af13fb8f1fbbbaa25f78d8a6131fb97b269551b9a91`  
		Last Modified: Fri, 02 Oct 2026 05:27:51 GMT  
		Size: 61.2 MB (61179698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f0149fa95cc0e1369fccf63d34cab67cd76496c9c0352de78f91240e464235c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8eada5e561102af586106d5c7ab3cfc14c12b589d06b3cd4088d4c22aec826`

```dockerfile
```

-	Layers:
	-	`sha256:b460c6a63578b4adef1d9f82d94b31795475b40c225c81e38d943d34a81ab5c9`  
		Last Modified: Fri, 02 Oct 2026 05:27:49 GMT  
		Size: 2.3 MB (2276642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5a1f767b30bd0f507f988bf04fb6cfd50af88974234b6ca87b9d883b8b5efb3`  
		Last Modified: Fri, 02 Oct 2026 05:27:49 GMT  
		Size: 11.0 KB (10958 bytes)  
		MIME: application/vnd.in-toto+json
