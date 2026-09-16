## `sapmachine:lts-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:5d54a2169f44bb4f415d109483d4386e321059f38f3546eedf7b1f556bc1ccd3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:42f4f85bb858f3eca566d7bb71e7208a46f22c43854cc729e6f235c1a43a351f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90669241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464c4d784bf8035d8072cb5280bba8bd38e57393fcf2f86e61a63ed000b8fcda`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:31:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a5c957da6f4585301dd959ee9f194dae5a8c4a0c38ef2f037b7afef05e395a`  
		Last Modified: Wed, 16 Sep 2026 03:31:21 GMT  
		Size: 60.9 MB (60905125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:332871811803793a91103a86db160b6388b9b063a2c4e6d5fda7003c1d12df27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a8d60de3137b491c7f2e855a010ec434cbbacf2d5db9a555d5a109eb318fcc`

```dockerfile
```

-	Layers:
	-	`sha256:5d3e0fa1e6ed1ba2bb5061afa2251bf20f9668f28368e413bf0b5f4e117fefd3`  
		Last Modified: Wed, 16 Sep 2026 03:31:20 GMT  
		Size: 2.5 MB (2527900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44f5e857bf18db1adb55c117db68d917698fb3c2ec87347f74d83bea2a233ec3`  
		Last Modified: Wed, 16 Sep 2026 03:31:20 GMT  
		Size: 11.8 KB (11782 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f94d8d64c352428a08c6a888df3f23201705d82d3c2407d7f8a788a8e0cb86d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88792209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e9d87f4e1828cbe800d90e90813a073194a6ee53faf5f7ec30743b7b8309f0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:31:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3efa96cbfc995f8aa5438ef112001c5490ba6ce3eb28811e07a47a0e996fcf9`  
		Last Modified: Wed, 16 Sep 2026 03:31:14 GMT  
		Size: 59.9 MB (59850629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:05780e9cf87c10ca5e1774025777d87548bd804d26a126c32e8610badcc23e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e6a59b8ce8dba64e7aea997b1b2ba0814b470ae110a2e36b456ecbd6dd4a7e`

```dockerfile
```

-	Layers:
	-	`sha256:985fbdb4568a666c8544b66011bb3d35d3197503b8ef92a26cfeca8e9465fb84`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 2.5 MB (2528449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1896370025e15c19830f84080b3210e252fb53a311f7d56681b658f750eb453f`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 12.0 KB (11971 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6e2414128f60ce5cf229a3e32df0ae8e47905ca721ae450220daa96851e27ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94477298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d97c836ee8eb033d9061fe28aa227f7ba4a5d0d619319e537ca83deda49cd9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:57:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:57:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 03:57:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904e9fd8efee66b8eb2f1a6f04943c46e83cd72668db231f640d9dea31cf7f3b`  
		Last Modified: Wed, 09 Sep 2026 03:58:27 GMT  
		Size: 60.1 MB (60100419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bfb657f22e11b5bbd7d81e99bea2b01db10feb41819d24a14e5545093fe5e9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2bf68e51d9e24c96ba1324b9d4965c46fe80fc9cc34380326e3f32cbc8a51ad`

```dockerfile
```

-	Layers:
	-	`sha256:4fd761a03e45254dc55b78bb0d313d99ba410c5bce7f7888a280095413aeb6f0`  
		Last Modified: Wed, 09 Sep 2026 03:58:26 GMT  
		Size: 2.5 MB (2526786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f052915e4bd91532e0a3ca2be426e99d1a62459dd8f42bb095d7a084458bdda6`  
		Last Modified: Wed, 09 Sep 2026 03:58:26 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
