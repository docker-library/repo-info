## `sapmachine:17-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:eaa5450ade59ba4d421ce7350cbf7d651240254a7e97a8be5b79f097a5a42bea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:939d03247f8bbd019764547f3f0bb96ca2bd2e2488157dad6e355c2c67667e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234956187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a62a9f7f78daadc70f40caeb19b51d398716532d67e0f09efe3135dc71947b`
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
# Sat, 17 Oct 2026 00:41:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:41:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:41:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a7251b2740e6799a3df4f1b4801d2bdc6cecfe06fdf287c7c829c21cf5185`  
		Last Modified: Sat, 17 Oct 2026 00:41:22 GMT  
		Size: 205.2 MB (205190429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:104529770e14895b3a656274d89951d74f97caa561107ed7d1d1d7e4a2e2c8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e725419b92442d6ef8f8b918a5d030f3ecd92311b5826e231b1ca6be57e90a`

```dockerfile
```

-	Layers:
	-	`sha256:68cc5e026c99129f58a599b30b3f6fff8ebe890e1dbf368ac8dab77d9e236039`  
		Last Modified: Sat, 17 Oct 2026 00:41:18 GMT  
		Size: 2.6 MB (2606284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f93ea79f417da6722ce051a264f7dc119cc65d84711c7d0f8525179851cd38c`  
		Last Modified: Sat, 17 Oct 2026 00:41:18 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b28c40fc86438a46228aa8ee1e1bcc220abd68a6bdb1f27cf944eed6523c638f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232907297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3ff8428bd9363406bc9945ac507e18f56e75fc34a879d619a1c49154ea0dd60`
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
# Sat, 17 Oct 2026 00:40:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:40:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b02e3dec82fde2ab26ed6a8dc9af8c0974344690f3dff4d98e23c66a0373ba6`  
		Last Modified: Sat, 17 Oct 2026 00:40:46 GMT  
		Size: 204.0 MB (203967536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6e650939f6b1423e6ce2df6beb92af38655a85165bd210bd0743fe2c6f59c0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972b8fe1adc0c4b57fceda550e3821acf5385e1d960bee2c4d3d894edac02d9a`

```dockerfile
```

-	Layers:
	-	`sha256:e18baceb18facf4d4dc9ec1c421ce848540c5edde133e52601333395c744fce8`  
		Last Modified: Sat, 17 Oct 2026 00:40:41 GMT  
		Size: 2.6 MB (2606896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dab250ad7bd7670915275c8c309d3e51babca370343017041a9a6ff570a08f1`  
		Last Modified: Sat, 17 Oct 2026 00:40:41 GMT  
		Size: 13.6 KB (13626 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f2a6c7875ab650c80094a99e4167be32907f2e901345ac065bbe7bfaa1d9db2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238691999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104dee97a52fcbcfeac103aaa4624943571e52858427e29a632bcfe3d6777cba`
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
# Sat, 17 Oct 2026 02:52:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:52:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 02:52:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b76916260347d1cc495ecece1b8900e254bca38205b920751af36a5573a2a2c`  
		Last Modified: Sat, 17 Oct 2026 02:53:14 GMT  
		Size: 204.3 MB (204314009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0d504877d03346f677af73925bd1edb645ea7e0375016bff3cdf75f4bfb27ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a68657536c8567f0a56386d518912811735e6ab77f7a5db4dbffaa722536c`

```dockerfile
```

-	Layers:
	-	`sha256:a990e414c609b45c8c6a6030a36973ab93b887e6bbdfd21160e08ee1a2d40b9a`  
		Last Modified: Sat, 17 Oct 2026 02:53:09 GMT  
		Size: 2.6 MB (2603884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:269ae9fee3a95bd7349439b5f38513251d5ecd5a49d4f073716bf489abebd0cb`  
		Last Modified: Sat, 17 Oct 2026 02:53:09 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
