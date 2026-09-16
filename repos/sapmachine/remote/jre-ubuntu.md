## `sapmachine:jre-ubuntu`

```console
$ docker pull sapmachine@sha256:12f746e9797ab5de157d1cf918d87270c2e15a80f2f79dd0e46907a838552464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:2d002ec2845d2f9dcb3034a73a03d2e49d59d9eeab5cef249d0df9ef8b65430b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91607873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ea29bc274c9e9d608efe80148140cdd13ffc90e067085dc2376672bd89898`
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
# Wed, 16 Sep 2026 03:30:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7a2cacc073136db8a68bdb6d4a615ff220ca3199f52c268e84e9aaa738cdf6`  
		Last Modified: Wed, 16 Sep 2026 03:30:16 GMT  
		Size: 61.8 MB (61843757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7c9274a32ce9e6e884983e70ed1679133bab50dacfa66d6d105d1222090a12b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee21488e31879018805d98d7d8192d1e299c55f820043341af5dbb3fc7e62c5`

```dockerfile
```

-	Layers:
	-	`sha256:c56a5fe3d6d5f1e0d21569d678ee435ddebb49e53125b384a0c6d1fb66c4f82c`  
		Last Modified: Wed, 16 Sep 2026 03:30:15 GMT  
		Size: 2.5 MB (2526278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c69be605e804c3506ee24cc0bc579a3997177bc6c4831424913b024d0bb8ec8`  
		Last Modified: Wed, 16 Sep 2026 03:30:15 GMT  
		Size: 12.1 KB (12059 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1f800ca43e47d60dd2014e773a0aae8b03ee791eafa18b0cad2e154a3b4bd994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89793794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c20e694343396bc546cd4dd78452f0b9787c5f6cee3b36713c37deb893c5f255`
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
# Wed, 16 Sep 2026 03:29:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:29:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:29:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b9c4a5b4ef619275dbb5074d5470343d24355835c202168101542090602c1`  
		Last Modified: Wed, 16 Sep 2026 03:29:58 GMT  
		Size: 60.9 MB (60852214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2b025bc2ff5b23c823a9ca3a08fd2333002dd6bfdeca3cbdfaca09094b5372d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2eed1abfd755ea535e4381f5b7a19f2b2fe276e17ef614701a80e9768db880`

```dockerfile
```

-	Layers:
	-	`sha256:c271eaecdf843e73cbd6cc59a510e630585595352e290a1a85afba3f76781eec`  
		Last Modified: Wed, 16 Sep 2026 03:29:57 GMT  
		Size: 2.5 MB (2526839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8d90cbaf1174464f0a5c1a7067a7dbcb4929ee53323fdb30649e10b396e1a0`  
		Last Modified: Wed, 16 Sep 2026 03:29:56 GMT  
		Size: 12.3 KB (12258 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:98b4e91a118c17cc922ba55429cdf2cdc6d54f9b10856c7899c546df1a308f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95788896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ca151808c5c7b41b079bff7da50d69609ea32dba5bc056f942476a50111411`
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
# Wed, 09 Sep 2026 03:41:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:41:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:41:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0989ec616f5b2e4a6b395c36912eda12381b7068b031208dd2a7bf3c8ae94a`  
		Last Modified: Wed, 09 Sep 2026 03:42:24 GMT  
		Size: 61.4 MB (61412017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c3efac42260a3a7d138cc1585b18e4cb9215080c8b9c6994bcedc9da886b2d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c687c4abf0dc0c21bcb5755fac364bdb8eac258c8ad8b6edc0f6bf6ca836f432`

```dockerfile
```

-	Layers:
	-	`sha256:a0dea2ccea9a6c0f08798111d4f77eca1622545f5135d7bd3ec4728079ce11dc`  
		Last Modified: Wed, 09 Sep 2026 03:42:23 GMT  
		Size: 2.5 MB (2525170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4a4ecaa02b1f1c0f760aa7659b2c7b752e079cd1467a4371cb7fadc2dc1d6fe`  
		Last Modified: Wed, 09 Sep 2026 03:42:22 GMT  
		Size: 12.2 KB (12151 bytes)  
		MIME: application/vnd.in-toto+json
