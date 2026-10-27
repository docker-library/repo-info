## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:c63a0492588027f9afcda6700a4ff8d175fdba6501976819128cddca2a56e292
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:9535c3ed17a8a101130c6e7d9f4c8aee25d8950a836542ac093137ec7df70160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51a5dbc48afcb0d181befce0add0b4c3f6f7dbef10d4fd80c996db72ff06d62`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84a7a7bbf06678c5e01f90c8bbb308629360950b0259cc7cb844dc9c294a73e`  
		Last Modified: Mon, 26 Oct 2026 23:38:28 GMT  
		Size: 59.0 MB (58969787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3035aae5e64cc5a93d04026411c651354a5f17cf60491231420ced1ea9c60bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae1e0580fff76f462a8e5d25ca8823fec4942c7a0157f95775aaaa3cd67d4ac`

```dockerfile
```

-	Layers:
	-	`sha256:bf459e0ed1c370310ea694e13218d115ea24a147f20daea4d1623af9d335ab95`  
		Last Modified: Mon, 26 Oct 2026 23:38:26 GMT  
		Size: 2.3 MB (2299946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2feb458a25b0e272a8d487c02349e283fafa1c99ae86e8192d8375e1c4aab48`  
		Last Modified: Mon, 26 Oct 2026 23:38:26 GMT  
		Size: 10.3 KB (10326 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:23628db133cd42f97a2caf540ee2b40e216f84b93ca9639baed0da0dd0c7a6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85658068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e164688f2f84a90cf418d3cca00571c0c09631919cd186b2d4b396bae187830`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:43:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd56567244c445baf1f970639273fa7f23b1850c24dd351c8e26f2c827b822dc`  
		Last Modified: Mon, 26 Oct 2026 23:43:30 GMT  
		Size: 58.0 MB (57973461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d15e4cc16f14d11b05ba62dde03a2595fbf7100a3aece61f95f7edc8391a774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5aba0f68f657d6b25647782d3ab51dd5907de760ee21c07f730ca77e587a2b0`

```dockerfile
```

-	Layers:
	-	`sha256:ff8f087a1f37bfe27f50cbb7d889fe5ce291f0d30a9f45057f1c86aa4574939f`  
		Last Modified: Mon, 26 Oct 2026 23:43:28 GMT  
		Size: 2.3 MB (2299639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b18a480432523005ba0a70d75a0545949ad37abfa5cd45f2fdd358150311689`  
		Last Modified: Mon, 26 Oct 2026 23:43:28 GMT  
		Size: 10.5 KB (10454 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c8b1e29f27e8c7a33d070c119e71c61522bb3f2f96b50173bbbfa6723e64ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92722048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b878cc6cf5099334dba3a7c9c1049530118f90df6ff8422a7c66dbd75f4fca`
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
# Fri, 23 Oct 2026 18:51:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:51:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:51:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ca76cc05b59e404b62a3ef79fa7ed29f924d915bbec4ae5a55a706e79ca338`  
		Last Modified: Fri, 23 Oct 2026 18:52:20 GMT  
		Size: 58.0 MB (58018411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1060512df9445905607a377a6735157a78e516ec06ac5d488dc924c832ed369d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b1c7eb9ed1b0035e8c288bcb22a261a5c153c34053d7b51b898e2ddb929246`

```dockerfile
```

-	Layers:
	-	`sha256:b2ea84656d4a13c4749052b58c9d8566b6e5509b59eb32a762bf0162e317b0e2`  
		Last Modified: Fri, 23 Oct 2026 18:52:19 GMT  
		Size: 2.3 MB (2298758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5ae0451481411f7718b56fcd827ab304e896f0695414cfe3f2ea44d372636aa`  
		Last Modified: Fri, 23 Oct 2026 18:52:18 GMT  
		Size: 10.4 KB (10382 bytes)  
		MIME: application/vnd.in-toto+json
