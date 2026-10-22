## `sapmachine:27-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:e18b2abf66528ff35340cc42823ab210beb19b8d8eda6b6152e80e941e579ef0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:7295f386abd9b69b380ed6ff0e283d98bf9812b865a6e034a3139d3d46c6f306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89130497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a5b3e9ee6dfa8b1afdf2f70e5d5d20388e9d20d224b7cc5691653b3bb43817`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:11:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab8a5aaa4003fd4a460fc8c855153aded1a3e29fdc120c2ab564343aba46165`  
		Last Modified: Wed, 21 Oct 2026 22:12:04 GMT  
		Size: 59.4 MB (59364739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:afa1d62f9799feebbe69a4066fdf99f2b0f5ee0143758b9288870eeb673b656a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc4269c609f744422dd8fe2c72dfbb20bc8e84a7ee116ea5162d9a02c1218c2`

```dockerfile
```

-	Layers:
	-	`sha256:5ae0f01837b7e3990b1cf7f9e59dfca9ea6df80c04e5a359cff84246d4e1d9b4`  
		Last Modified: Wed, 21 Oct 2026 22:12:02 GMT  
		Size: 2.3 MB (2279271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd02cd2dad55c04515a8889a3ad8456a982da2c09604d49cb482327a31ee00b3`  
		Last Modified: Wed, 21 Oct 2026 22:12:01 GMT  
		Size: 12.3 KB (12291 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7f2b0cf39dfc2a30588bfc738e986f3cacc55a30a68937a99b6beaa3cffe9b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87336684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d0764672b67a9bcdc5d68c818ef8b4988e7d9d9faddec4914815d4aeee07ae`
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
# Wed, 21 Oct 2026 22:44:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:44:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:44:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be39b6c3abf68aa242ae7eb490ecd2d48618916b3136d182e93c39434cbee195`  
		Last Modified: Wed, 21 Oct 2026 22:44:39 GMT  
		Size: 58.4 MB (58396923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:95d8b1bf75218d2d9ab96f1bba4ba103b334554f9c89ea0ff7cf4be5ebe5f4c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a031f8cfad01700a697dd696431cd22b12b3fea4b9f65bce91ef2d47822b80a`

```dockerfile
```

-	Layers:
	-	`sha256:4eae5e2539e567f8720da66fbb276be25f24fb9249a78173d3cb2024e6279804`  
		Last Modified: Wed, 21 Oct 2026 22:44:37 GMT  
		Size: 2.3 MB (2279823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72b3430f3ba54b70bcddedeb487f97309f6c4a6438c9ef6c98b6d39e25ec1cc4`  
		Last Modified: Wed, 21 Oct 2026 22:44:37 GMT  
		Size: 12.5 KB (12492 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4a05aff8a029b72723b8b49d211dd51e3ad249fc5eebff6c4da209099873d4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92886745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634ce679b8d7e0e16d21de6ce9d2fdfec6de1d890cac66258b16faea8d3d2d0a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 09:49:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:49:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f4d5953212665ae8ca4846cf7a34efa36f136a1dea18c7185349e0ce4338d4`  
		Last Modified: Thu, 22 Oct 2026 09:49:45 GMT  
		Size: 58.5 MB (58508755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e87e0f6aecbc3ab00623844f71a22f3b6365500731b1c7e6552bbb0bfee59756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01eb3b1ea530138c30467272f0dc772a29621275c17c1fa317acc145f8fcf7c0`

```dockerfile
```

-	Layers:
	-	`sha256:8a1bee6f1055d9006039400cdd1ae4edcdfdb464ab24bcbdeb9055d161dce314`  
		Last Modified: Thu, 22 Oct 2026 09:49:43 GMT  
		Size: 2.3 MB (2278082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e9ee47a972d60e0a51aa024085ce97eabb1a6b509b303eeb9c67ab64cf75f7`  
		Last Modified: Thu, 22 Oct 2026 09:49:43 GMT  
		Size: 12.4 KB (12384 bytes)  
		MIME: application/vnd.in-toto+json
