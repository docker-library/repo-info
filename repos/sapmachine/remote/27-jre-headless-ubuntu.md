## `sapmachine:27-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:2af1d8dc4a64dc8ca3565a77dadd2868e76157ab66e13328c9dccaac23aff132
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu` - linux; amd64

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

### `sapmachine:27-jre-headless-ubuntu` - unknown; unknown

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

### `sapmachine:27-jre-headless-ubuntu` - linux; arm64 variant v8

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

### `sapmachine:27-jre-headless-ubuntu` - unknown; unknown

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

### `sapmachine:27-jre-headless-ubuntu` - linux; ppc64le

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

### `sapmachine:27-jre-headless-ubuntu` - unknown; unknown

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
