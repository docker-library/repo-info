## `sapmachine:lts-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:56342740485a82a9cf446e0d7af5267152f30444d78950d3c3506516835efe0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:3d9f8076263dc3caf141711aee44306f47bf4aa28a491257fb170be137431441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (166985458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841d24469348ce0f439f2fc23d7b65b0655dbd5744ed0c65f147f530b0da16e1`
-	Default Command: `["jshell"]`

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
# Wed, 21 Oct 2026 22:13:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43602238d9a471a09eab36088485acf304d3072a124301eb3f0d97a32eb3247a`  
		Last Modified: Wed, 21 Oct 2026 22:13:33 GMT  
		Size: 137.2 MB (137219700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b13ee452d1a4e3b5faba3ba29f9068b33d3da3b89e75f866a101b1baf58ff9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ee293b9cd59978c9e3458f642fa7123ab08ad689e00f32988e30661dc2414a`

```dockerfile
```

-	Layers:
	-	`sha256:2248b6f1f9a69ff322fed870eabf2b74cc89aa6116360ae84b8c013b705e6d6d`  
		Last Modified: Wed, 21 Oct 2026 22:13:31 GMT  
		Size: 2.3 MB (2303520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43669c6f3878fe80c5f32fa9a698ef80742fea9b62913c87d340447397872b6`  
		Last Modified: Wed, 21 Oct 2026 22:13:30 GMT  
		Size: 12.0 KB (12003 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c733866976593f1e4bb581906fe08be9d52c8c15defd54ef644fe1514fa2eb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165139457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ebf063780ca62cada96cac37d21856546a5ecfc272bb61e1c76b905b820d6e`
-	Default Command: `["jshell"]`

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
# Wed, 21 Oct 2026 22:45:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e789696318ae5c16def7f3275ee69c1bb25a3dedba937cd3a9abb012ce7194a`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 136.2 MB (136199696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9fd4cff74f1f7560b46c8e97edb88adcdadb9ad419bbfc7dc0b5e52039e07842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2316251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70094c986cb826789164542486034becdd22a35a0db9d25edd163cfdc98dca08`

```dockerfile
```

-	Layers:
	-	`sha256:f5f7ec148b696481bd56b03e1f284e3ccbcb59a48c63b9e85230f917b09bc621`  
		Last Modified: Wed, 21 Oct 2026 22:45:46 GMT  
		Size: 2.3 MB (2304060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82891ef5c3cfb0659739f3c3bb915287dbff9f58155c4f1ecd85383207dd74b9`  
		Last Modified: Wed, 21 Oct 2026 22:45:45 GMT  
		Size: 12.2 KB (12191 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5fb64bde6e93520a2a02a5afd093c07343ea31ec8aef40fa9ed09750e78acd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255601939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ac691b4baa7485f666a704798372fd10217e55b1d59a64bef025a59164fe29`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 02:32:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:32:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:32:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551ed794d6c5febd24bd7a3bc8eab2b3ee9a9d545ebd93374a7af04d4c7d4c5b`  
		Last Modified: Sat, 17 Oct 2026 02:33:25 GMT  
		Size: 221.2 MB (221223949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d0932c2a79daea1d04e6f6203315db610c5ff666ddee4c24ee1b650ba1463251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc108b9855b79e0b1318542bdd44c9ead84f709e47a5aef9b07cd63d896f9f8`

```dockerfile
```

-	Layers:
	-	`sha256:32cb98ddd27873e30ffef16f075a3072690b18cfc65af2f39a510dc07480d0c4`  
		Last Modified: Sat, 17 Oct 2026 02:33:20 GMT  
		Size: 2.3 MB (2345602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bb6d0b77b2cdf1bb00e3fc67e618a8552dc6b4b4279444b54013bebf987e1eb`  
		Last Modified: Sat, 17 Oct 2026 02:33:20 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
