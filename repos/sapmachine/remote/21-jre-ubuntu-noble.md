## `sapmachine:21-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:ba55d7ffe61f721fbf0145c0435e7e0ac2481e73c07c8a8f4c1ecc053e096f4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:80b68db9fbd8ab1721c361d1bf9eff818fd94115210195d1741b22fcb61f748d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93741865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2badf7754111d436d42bf0e160d27b9d28d1a8e34487b367ae51346bc19238`
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
# Fri, 23 Oct 2026 16:56:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:56:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:56:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ff8a6618df2772ea32273c406b45203ecb1562abd14d0d8c5ba8e0611531e3`  
		Last Modified: Fri, 23 Oct 2026 16:57:08 GMT  
		Size: 64.0 MB (63976107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0d3d07a27b7878996a9e5a970f621c632fc17a004a466f06ab75742635dc0791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe0666c5aafac9cb48c7f16af8a71eb2e32d9323eeb2240a37d39931df554e9`

```dockerfile
```

-	Layers:
	-	`sha256:780c59f7adf166e66a22e03c64a4a19e6e1ac2b2730afdb47a64d860b2fcb552`  
		Last Modified: Fri, 23 Oct 2026 16:57:05 GMT  
		Size: 2.5 MB (2522486 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a2ccadf0a3ccd8c681d4c95f84f4b9a5924dbb9b4c507db0d7e75629332665`  
		Last Modified: Fri, 23 Oct 2026 16:57:05 GMT  
		Size: 10.8 KB (10824 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ae17749e4784cc79b5d345daa86ed0f0e0e48fe3c6a95eae773ca6d8f571fc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92100534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945cd7923c91aa7bda87456d3f6323bfde7e53b75da4e0f8014c5c6c38b143fb`
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
# Fri, 23 Oct 2026 16:55:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:55:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b9472405f6543304257ade46869c7b6bce7c04e869604546c3228b37f8d4ac`  
		Last Modified: Fri, 23 Oct 2026 16:55:49 GMT  
		Size: 63.2 MB (63160773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f91c1bec38132a80c58768503db7940a913265cf27ee7cfdb5b8f15c92267ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2333753ac24ab01a490a1b2ed29e4203efdbb608eb36d2276567070e161cf84`

```dockerfile
```

-	Layers:
	-	`sha256:39869e26823d36aad70ba6d256edbbd4ca8ecdbf727250b465060826d9448665`  
		Last Modified: Fri, 23 Oct 2026 16:55:48 GMT  
		Size: 2.5 MB (2523002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38a87bdd6589856b777690ee1d02f4845dd08610a5a83c6a24b44232bec0c096`  
		Last Modified: Fri, 23 Oct 2026 16:55:48 GMT  
		Size: 11.0 KB (10975 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:04106377fdbe1227512f348e66e366c017a89a595269937d12679745a604c88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98160936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2a60d0dc59cd0cc1934e9904fefba7cb42394fe36b7998c21ebe5d41808998`
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
# Fri, 23 Oct 2026 19:08:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:08:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:08:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597f28b36e1e6a88621cac3d9ed54e72ae38646001921fddaeb08ee695f9d20e`  
		Last Modified: Fri, 23 Oct 2026 19:08:50 GMT  
		Size: 63.8 MB (63782946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:13cf39cf1718763302da63db08b892ccf20bafdd02c71504f293f7afa6b661d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35a8263b4a83f0a73aef6d9acb0e76975eb723850e6c6a46aacc2d2fa9a7733`

```dockerfile
```

-	Layers:
	-	`sha256:9191368e92b1daf8ace56300c91eb1d791bf1cc36ae0b13d4d298f1e349e1c1a`  
		Last Modified: Fri, 23 Oct 2026 19:08:48 GMT  
		Size: 2.5 MB (2521984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bda3a8cf2b044473ddf30a064de2c6e9239ce779215efb3429984a6c9cc59f4`  
		Last Modified: Fri, 23 Oct 2026 19:08:48 GMT  
		Size: 10.9 KB (10892 bytes)  
		MIME: application/vnd.in-toto+json
