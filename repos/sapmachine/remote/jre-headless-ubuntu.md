## `sapmachine:jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:c87006436a9afca4c2ee81fdefc16a8cd2d164bd48e8d084adc44a46d0210ab1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:ba8a2a1f57c426889d2669122af09508cf87fee21890806aa89315793ece2438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89119432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97808ae13e1fb01f8533175e982378ac68f18275b30ecc83e58b480964b01cc9`
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
# Sat, 17 Oct 2026 00:37:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:37:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a59b4899b82fe7a085131ea8b0969d01e9a7e3f4957242b59b6e205cd4678c`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 59.4 MB (59353674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0397ef09502d05bff1b07ba968fc4ac46c6ac34e08745aea6fde18e08ddccfda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2288751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c63ec7482c32b90c7a646a76c1b66784d2c401975382e6f806ef951dfcd0bf`

```dockerfile
```

-	Layers:
	-	`sha256:47315545f590f37eae28541d78cde0af17e3402d6224ffeab6dc5ac8a35afe49`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 2.3 MB (2277861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cb7251f8e204cfa906de6c9e39b49cfdccf255bcd37b938edf01df7fc9c9f10`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 10.9 KB (10890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu` - linux; arm64 variant v8

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

### `sapmachine:jre-headless-ubuntu` - unknown; unknown

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

### `sapmachine:jre-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:11308b3562199a8517871f12406462adfd2bad016830abd6fe66f2b5894411a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92870634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfce4d0620edf3eb0f75e45eea7a6ee56d863a53a408f807211c01260ec126f0`
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
# Sat, 17 Oct 2026 02:20:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:20:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:20:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0683ad00bdb29483e69c161821dce6c7c8f77f64af0697414760498e11b7ca39`  
		Last Modified: Sat, 17 Oct 2026 02:20:44 GMT  
		Size: 58.5 MB (58492644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:505dff3267ad8d6df63ff6d91db80239a6b57efaa9970dd36d127fd3e04cf06e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d9b8c0a47066bd2192415753dca791099dfe2c2dccf45c92374b36166efe26`

```dockerfile
```

-	Layers:
	-	`sha256:b883f084955cf9d96cc06f94c6c9bf20ffa1c6141b50c99a8192c0705c7a906a`  
		Last Modified: Sat, 17 Oct 2026 02:20:42 GMT  
		Size: 2.3 MB (2276648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c67bd3c62a776808f424d7d601889e4897572daa2343f5884c283a2bbd1fddfa`  
		Last Modified: Sat, 17 Oct 2026 02:20:42 GMT  
		Size: 11.0 KB (10958 bytes)  
		MIME: application/vnd.in-toto+json
