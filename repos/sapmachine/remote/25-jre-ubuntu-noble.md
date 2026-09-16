## `sapmachine:25-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:f4f2070df1b3a7bb68a36801bd1a5c974f999924a3a23369c83894c5e38f5d52
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-noble` - linux; amd64

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

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-noble` - linux; arm64 variant v8

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

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5bd0343ff530750478f5a74ce6b0db2dd14185a072c51cf736761be35d110b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94477042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015a7af261c707b3a9b5007087e4d164852425f3bb262254ed1cb95a7adb4d13`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:05:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:05:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 08:05:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335e46a1ae8beaf51b3ecc80e2787b7bdf92eb53114a14ffdfd2c58d41f8ff2d`  
		Last Modified: Wed, 16 Sep 2026 08:05:27 GMT  
		Size: 60.1 MB (60100084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:35b31b09ee76bce685eb275b07b895fea23d3122073c09c83c259c73f9ef9088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4477899c187669fea0e17e4662abd34f0be2ea56cb91fc67ccfcda16e46cf4c`

```dockerfile
```

-	Layers:
	-	`sha256:1832be81734a4bba5a13af2ba5570c67af0c48506131f80069a6fd71f82a4d9f`  
		Last Modified: Wed, 16 Sep 2026 08:05:25 GMT  
		Size: 2.5 MB (2526786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d19b8f49f992c789a7a3db8f8e74b32368c99223d7169454d3639c66d8aca30b`  
		Last Modified: Wed, 16 Sep 2026 08:05:24 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
