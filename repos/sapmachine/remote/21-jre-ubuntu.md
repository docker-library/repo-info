## `sapmachine:21-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:001f832c90ede4e918343622e05612f7c756b58f5e75c1080740713fcf91a7a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu` - linux; amd64

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

### `sapmachine:21-jre-ubuntu` - unknown; unknown

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

### `sapmachine:21-jre-ubuntu` - linux; arm64 variant v8

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

### `sapmachine:21-jre-ubuntu` - unknown; unknown

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

### `sapmachine:21-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5ea47daa34a205e9d73950f6ed69aeab91653674e9b13cb1a5ed9310985c2b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98141507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fb7899517bbcb22b1aa83f5cc12a1d19bf6b4f813d221066ba06294daec741`
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
# Thu, 22 Oct 2026 10:04:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:04:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:04:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d6d2c2000cfbd23fe1d48eaca4cd5026c097f60fe1313f7620bf5ed356d5ff`  
		Last Modified: Thu, 22 Oct 2026 10:05:28 GMT  
		Size: 63.8 MB (63763517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f940cae3ecece8bf173e495760bd9380b82915bafc19bfb22ef90c6c001bafbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7ef7872d221c3f80a83e53aefed42dea4b277a54a1dda10e9067e6c74a1f8a`

```dockerfile
```

-	Layers:
	-	`sha256:8446fad7516cdb2da60c30f743dc6e8fa6e9b7356575fffb371e7011b40720e1`  
		Last Modified: Thu, 22 Oct 2026 10:05:26 GMT  
		Size: 2.5 MB (2521936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb45dd53422ef6d4b3597014dd0061175b52971fef47a861fb2d88362d12d0ba`  
		Last Modified: Thu, 22 Oct 2026 10:05:26 GMT  
		Size: 10.8 KB (10848 bytes)  
		MIME: application/vnd.in-toto+json
