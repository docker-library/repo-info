## `sapmachine:21-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:248cb99f513d55e694cfb006680be3188e2e1533bee26e8427d0c5b00606be97
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:d32157a9d9afc9e9ec63fe7124eabf27f046ebdf5de72715e40b7180080561c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249776941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1288abdc35759864577eb7f2eb09a16ad82b193d983eb4be1b63362107f1b17a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:14:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52b0b2acd3d8117632f3430b12527d3fca95a82b782578c0548a8035e4a23f7`  
		Last Modified: Wed, 21 Oct 2026 22:15:06 GMT  
		Size: 220.0 MB (220024465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:07abcedda45d2ce2bbe6eec1b2f2016ecc0515bee2b2c18d9366bc8ce4e51971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ff403e3575d5ba153d6f0c1aa484d923265ae3a50dc536ad6b6c3502850382`

```dockerfile
```

-	Layers:
	-	`sha256:63e33eecc7268eeda0d575b6ddd2a345cae2cd821e199a21dc5624be7a329085`  
		Last Modified: Wed, 21 Oct 2026 22:15:02 GMT  
		Size: 2.6 MB (2633516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1db1a896bf4f146e807df34287e13b19aeb7116b77a1b57736c6ce7f8f3721f`  
		Last Modified: Wed, 21 Oct 2026 22:15:01 GMT  
		Size: 10.8 KB (10829 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:41ed911c7fdb3ea47d11e0eb95fa9bf7965ae4202ecbe10d182172bff5bc2dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245869588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9249d0982d447805355928302346acec514b78f165acede17c0a379047b815e9`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:47:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:47:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:47:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07c6fbdb6fb48c40d3e0ab6d8ef12390f8b257208c0e449d6e162d05c723623`  
		Last Modified: Wed, 21 Oct 2026 22:47:26 GMT  
		Size: 218.2 MB (218184865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ede515826565c231c98cd6eecbed0793f381dd20cffc460389cb2cc0bafd95b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aecf67a404c9bb2a697197e721f16bc2fad102996ec2be5f7143af7c48aee0c`

```dockerfile
```

-	Layers:
	-	`sha256:8901a4c2bb0c1050cd20f85c0ec720fe01aef327b74b07d8bce84d5b07ffdea2`  
		Last Modified: Wed, 21 Oct 2026 22:47:22 GMT  
		Size: 2.6 MB (2633246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c691620a20860c548e55270d5d6e63b1023917d01bdf54d8ef50db6ab9977e89`  
		Last Modified: Wed, 21 Oct 2026 22:47:22 GMT  
		Size: 11.0 KB (10981 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3d891a53e5d5aed26400b394bb145cd141cbe71401a3a164637cbdd777c81264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254582219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587e9a4c103b14359234a54eb1d844254c610ba3db6b9e759724e1bdf1a3183e`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 10:11:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:11:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:11:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd662e93c53a9153afe3eec8ce2b16e6b2c09ab8b0fa2380ee515d745ab83e7`  
		Last Modified: Thu, 22 Oct 2026 10:12:32 GMT  
		Size: 219.9 MB (219878582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:39c3052e9c9b48fdef008848eb970090f78924687ce51c12869421da9b851f4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db21657beb9d239cfa3c7919fc36bf245a952bdfb8052bbbb07f006ed4d18baf`

```dockerfile
```

-	Layers:
	-	`sha256:a20ec35a43ecb858eefbaee91427361d91071ff1cf100c898f0b46189f2d6df5`  
		Last Modified: Thu, 22 Oct 2026 10:12:28 GMT  
		Size: 2.6 MB (2631126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5dd74456f575fb99d5ba50d0e9dc0e55ba56a73f7540dc0dbf5faab535d2cd6`  
		Last Modified: Thu, 22 Oct 2026 10:12:28 GMT  
		Size: 10.9 KB (10897 bytes)  
		MIME: application/vnd.in-toto+json
