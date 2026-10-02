## `sapmachine:latest`

```console
$ docker pull sapmachine@sha256:94bd3cd8c8ae8bddb73b34282895c89649598f6aa98db48466ebe1f033f6daf4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:latest` - linux; amd64

```console
$ docker pull sapmachine@sha256:614a06b38dc164a10885898fdbdd0110fd73f60b35036afdb087e4beea1e3799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171781135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e6953c1443b57cd589d5491a5207624f76009e27b55bf657ad8b169fac89ef`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2217ecf3af7033f1970afb35656af45b31f20fccc7b60e797141affd02a99ce4`  
		Last Modified: Fri, 02 Oct 2026 01:37:44 GMT  
		Size: 142.0 MB (142016713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:latest` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dd970a8aed6ffda2319922673c3d1835bddf5333a21a5d296d8186ad0ad4032c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b922c768fe108cb0b7d715256283a9d69948fd6eeb750aba089e846f472099`

```dockerfile
```

-	Layers:
	-	`sha256:9786dcd5452533351713f5617e7afca276cdf61cfdd35317e11d0145d6ec2c5c`  
		Last Modified: Fri, 02 Oct 2026 01:37:40 GMT  
		Size: 2.5 MB (2549425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e42380761ffd1bad1f4a206cc36358bbc279086fe578e7d1ac59e6b5860f8a`  
		Last Modified: Fri, 02 Oct 2026 01:37:40 GMT  
		Size: 13.2 KB (13213 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:latest` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c00cce2078b0b4e0067fe1f5184a7d287f15188dcb10537530600fd13342eb24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169902534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c525d4fc263ca448dc006aeeb6d508ca5bc0bc9518f316223ac72952f3a51805`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f185f27a7c697c3b58dc000e5b1188de366f34907f924fc84ee70c35fbc86c`  
		Last Modified: Fri, 02 Oct 2026 01:37:40 GMT  
		Size: 141.0 MB (140962447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:latest` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1acec08046a371b6066955439e59cd000423c2c3f2fcc092b8ed8077ae853d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf96c9bbcf03510b50f9680c7d830bde2a9781f62b82035bca69c10d1c50fa6`

```dockerfile
```

-	Layers:
	-	`sha256:d1e60e88848784e6115321fa59af8c9388b97038357f1b8ca395f07d8a16198c`  
		Last Modified: Fri, 02 Oct 2026 01:37:37 GMT  
		Size: 2.6 MB (2550034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b16a0ac342a3600739f0dd08c4b76b06d50416687e6088fcd17ef078da0caa8`  
		Last Modified: Fri, 02 Oct 2026 01:37:37 GMT  
		Size: 13.5 KB (13461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:latest` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:dd654f40a47eacd2d024f9110d024e4454468ca0dabcaee521afa2e3b1b07f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.0 MB (175982838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d73996a94d7ea1d290fd10b50016e1cdc02005c6b9bf77d16462ddc77c273a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:29:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:29:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:29:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28152dbd07da683f6d827584f96f1a495b4732ec0a0a595bb114d5173e50096`  
		Last Modified: Fri, 02 Oct 2026 05:29:58 GMT  
		Size: 141.6 MB (141606329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:latest` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7027f6a87012f59c2f8c062536a67d0f50a20f0d58f1f4ede90c4b5da7a5684b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:328233bb161f9f0238177a346765469387145a811cd95ca3456403a821cc2fb7`

```dockerfile
```

-	Layers:
	-	`sha256:f20d0b3ffe0d813ab3a5ccb19ecc92c792554eb7826c0a202f738733f1f0e315`  
		Last Modified: Fri, 02 Oct 2026 05:29:55 GMT  
		Size: 2.5 MB (2548341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b76c821fe8e61014e6116d1107d4d869d64f2cfded90f4644d20fa313c67c9e`  
		Last Modified: Fri, 02 Oct 2026 05:29:55 GMT  
		Size: 13.3 KB (13330 bytes)  
		MIME: application/vnd.in-toto+json
