## `sapmachine:27-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:cc97c4be0d9d26aa5d5c3c1afdac622c85eee0897fadd99e10f35346a1fe7f6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f2fc77c3efbfeca15d6a912e05bb3296beae0a7c9ae43d50539f7bda1a9d48ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90221763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9c969d60670de11af17bc326208ced2b22d4a3fa45dff297d60486008fa03e`
-	Default Command: `["bash"]`

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
# Wed, 21 Oct 2026 22:11:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20619582dff23c9dde25b43bf11d260e765f92362a3fd82c6bd12597b24da3c6`  
		Last Modified: Wed, 21 Oct 2026 22:12:12 GMT  
		Size: 60.5 MB (60469287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7738e5fce4d2fd893dcdac568711ce9d911c7e6c561c6befa1796ba8405466df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4403686b09cf6c658f9c7a41a277df0d5be8724ff8eea03774ab5991857109c0`

```dockerfile
```

-	Layers:
	-	`sha256:892bb6475fc83ae524e101e8e56774c86c5d40dbfed46fb52d15f18b751fce21`  
		Last Modified: Wed, 21 Oct 2026 22:12:10 GMT  
		Size: 2.6 MB (2551928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c9ce001a16d67f6165c7eed165430e14a501c39a315f9f031711887c8df61d9`  
		Last Modified: Wed, 21 Oct 2026 22:12:10 GMT  
		Size: 10.2 KB (10155 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4af024ccf4b7d3f36cde09eb18ce7388aff5d6c9203014c0ded867fc46d53b92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87143497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30294ae216407bc01d2660fbd34e6646ea58166c391d3aa3c6bc41adf8d15c7`
-	Default Command: `["bash"]`

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
# Wed, 21 Oct 2026 22:45:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:45:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903f815cddcfdac9b288293bde9dd3b3c714e6f62af313d69a18556fd8357456`  
		Last Modified: Wed, 21 Oct 2026 22:45:20 GMT  
		Size: 59.5 MB (59458774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4bc745bfe6d6219865d4ace6f8e77c98fee4b37f44a56c9b36cf757ee38e9c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071a8aba082d2e96047fd0dc3254a947fd45b539ce8e820f98bbf8a2769226b8`

```dockerfile
```

-	Layers:
	-	`sha256:f547151dcc537900c0b89a8adc252800a1385b8fd2ad1770c7d36c487a8d199f`  
		Last Modified: Wed, 21 Oct 2026 22:45:19 GMT  
		Size: 2.6 MB (2551631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fee918e5b0c3558cc38d948095503bb4cd3919fe849a5278a0762c8fbbe9449`  
		Last Modified: Wed, 21 Oct 2026 22:45:18 GMT  
		Size: 10.3 KB (10282 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9e8d5eea6d297dec371e61ddfd3038eee990a1c10d7712cf7014d10eece7e9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94462185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588f40a9f1079f9dff58cc54a1f7bc5c3b332fff75196cd9f1e2995542169a52`
-	Default Command: `["bash"]`

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
# Thu, 22 Oct 2026 09:54:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:54:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217aecd7523b3d2bace3a0aefd124191f1b3ace3d6174d61685381979b10217`  
		Last Modified: Thu, 22 Oct 2026 09:55:07 GMT  
		Size: 59.8 MB (59758548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:adf273a8e52d9666118cce405723fc6e0998a3ff136d5e091a943789fc4fe6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ffb5978ba4d439f48019845c0581403e5f6ef522e54daf8d38bb6cbeb229fe`

```dockerfile
```

-	Layers:
	-	`sha256:8400d83e6da58a5ea1016432b1294ab34953ec478ebc5dacbfff465a1329e1d2`  
		Last Modified: Thu, 22 Oct 2026 09:55:05 GMT  
		Size: 2.6 MB (2550842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84dd3b4dd8c191dab488e0546cfeb7e407f51bd09623356915d593c917081c92`  
		Last Modified: Thu, 22 Oct 2026 09:55:05 GMT  
		Size: 10.2 KB (10210 bytes)  
		MIME: application/vnd.in-toto+json
