## `sapmachine:21-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:055a911d9db383b3bcc423d1fc43f25f2812290fc9075ad4e514e6d48608c4c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu-jammy` - linux; amd64

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

### `sapmachine:21-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:21-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:791113a776e7671cefb515942abb47f86777462037822383181340c376059d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245496524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048e20d6e32280b560b011c5d3974afd50869eb9a978b5e0187673fea42617c3`
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
# Sat, 17 Oct 2026 00:40:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:40:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5d74507a05c737dedee427ba7998bbfd862080f46a85109a540d75c6875e89`  
		Last Modified: Sat, 17 Oct 2026 00:40:40 GMT  
		Size: 217.8 MB (217811801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e8991437e91786c514403e8c9584c3ff171ded6ff2daef45975d4b73c2b0e9f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2643596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f09740f6b2e1f425024a1d3a58c42ac112379da57759402f8faa4ac27841de`

```dockerfile
```

-	Layers:
	-	`sha256:85728e21be981199219cc63e08890cdeef59e3f4442d5f28465db5e5717681fd`  
		Last Modified: Sat, 17 Oct 2026 00:40:36 GMT  
		Size: 2.6 MB (2632594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a3ca9553f13d52dbecf1de3482ac37cc0ef99eb1dd7ac814fc4a230d60fc71a`  
		Last Modified: Sat, 17 Oct 2026 00:40:35 GMT  
		Size: 11.0 KB (11002 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6d283eb69cb6bc223f6073d53b90737cfaece634ef79792a27445ec4010ff7fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254251066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4973fc1f763f8ae6f81e41ee7b470ae6e4343236e91ff7d7a5107ab23e07034`
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
# Sat, 17 Oct 2026 02:47:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:47:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:47:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026a22878d57e02538555d921e32c47d695adef21ce4c4f81dc1e2370ce38483`  
		Last Modified: Sat, 17 Oct 2026 02:48:40 GMT  
		Size: 219.5 MB (219547429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f0ec3d703b6e204a461bde447dffcfdf4491df9cc8ca347b356246d2990779c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d046f8456498416f27b1b7547d89cf616ff773c2a4aa184eb399433a3f4dae`

```dockerfile
```

-	Layers:
	-	`sha256:5ccd5a4dd1490c8eb55263698b8ffedc7dde083c81ace72f0e44a30044cd566f`  
		Last Modified: Sat, 17 Oct 2026 02:48:34 GMT  
		Size: 2.6 MB (2630474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54665d2325032d2c0af1c159320632a217a77639af560ad4ee429acc0e93c52f`  
		Last Modified: Sat, 17 Oct 2026 02:48:34 GMT  
		Size: 10.9 KB (10919 bytes)  
		MIME: application/vnd.in-toto+json
