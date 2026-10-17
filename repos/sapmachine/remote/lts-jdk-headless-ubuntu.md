## `sapmachine:lts-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:0ff559bfa9fcf9f0aced4cb8b6e8d156da46adaa2343c2e1c05ed7ddb1f1a5c9
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
$ docker pull sapmachine@sha256:11f654b6355be4fb4de4862d48ca75a99fe2850705e36a24fdb02888bd5ce56c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252962944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2a401dcb9c929305f873349752f352e33fa9ca423aa9f2693bac0d03b722fa`
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
# Sat, 17 Oct 2026 00:39:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e8f8fea8d235388b7d87095e038adfcd7966ebdab4797db7cd7c57e4059959`  
		Last Modified: Sat, 17 Oct 2026 00:39:26 GMT  
		Size: 223.2 MB (223197186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:92b57939fac530aa88a8673ec18d5f0cb2ef0498a066bc0b3d84cc8868e7b0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b581eb6274ba2958d6a307b88620b29101056b047ad524ab0b5d3097e47d4deb`

```dockerfile
```

-	Layers:
	-	`sha256:73684bbb9a55307d71f67d1cfb1e6f73408358932768c95330b1c12467195147`  
		Last Modified: Sat, 17 Oct 2026 00:39:20 GMT  
		Size: 2.3 MB (2348731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ce315a80909961a802d857c64a9dfc7fb9ed5407e4a560a22ce360d95d51771`  
		Last Modified: Sat, 17 Oct 2026 00:39:20 GMT  
		Size: 12.0 KB (12021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8e2a53118c452ee150f24b59699d1bdc1837030347d492fd072ab77e8de0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249891025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871bccacbd0f21a10ebc058873d817dd1d7129903eda92f60e319ffe5949faed`
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
# Sat, 17 Oct 2026 00:39:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecd4e9eccecf00e8fce542d7c7f10c02dc26e5755920e2fa1f85a363e89bdd9`  
		Last Modified: Sat, 17 Oct 2026 00:39:35 GMT  
		Size: 221.0 MB (220951264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:621560f260cdebc65a9b38c119b6a92ba2f9878010a0b4063ba25729b3586e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe60745f9e1ef024afaae12a64c3fc2ef5065c14b1db4d276b2c3404b4e8b2f`

```dockerfile
```

-	Layers:
	-	`sha256:e19b2e381b12a166632b251d0b5ea3e541b2d1574535f641e397243a23d461bf`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 2.3 MB (2349271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c6525a4ed3795d5831d5949b6a75780eea4af2836011839ee7ca4b3b13c577`  
		Last Modified: Sat, 17 Oct 2026 00:39:30 GMT  
		Size: 12.2 KB (12208 bytes)  
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
