## `sapmachine:27-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:12e7c853e39fa395edadf4adf8e4e1fcb90a49227a4abc41ccb67e58d8278a78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:c541a3ac146a09316eb58f7829168912768f3d3254c300b761a351a7ba930db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170286571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434bad3e02db7638512b69f54fba8a28dde06fea0249347ae485fe49acc2a8c4`
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
# Fri, 02 Oct 2026 01:37:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322b0205ee863fc91dcc628417398d2edd9e256d920a55e2861e3d1d6f9a3f12`  
		Last Modified: Fri, 02 Oct 2026 01:37:42 GMT  
		Size: 140.5 MB (140522149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bfca766429e071d06dc8eaa87ead2ab018d6e0ce436e93062af1053d37ee4df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af0bc8ec1b0b1d7da133dad95ec998c38595e3d5e0490ee25d8477096b429ce`

```dockerfile
```

-	Layers:
	-	`sha256:7cd41e651dbb5f2b1dd09e8e6baf5f2f18be9a084dd0f1d45277f72d4f638926`  
		Last Modified: Fri, 02 Oct 2026 01:37:39 GMT  
		Size: 2.3 MB (2299851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6540b31b99c3b37b9d89d7d8ebdf3a3ebc6703d422f0efb85b99d9afe8ca8217`  
		Last Modified: Fri, 02 Oct 2026 01:37:39 GMT  
		Size: 10.9 KB (10891 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8aa05d3e323e2154844057eda1b046e1bd732e470598b8548b9bcdd1f4774eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166122997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae452da9c094c7dc2dee655151fd04d5842bf0e41ca6969f357bf589a0b6775`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:38:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb33c427561a1c0bf99232394a3755b4ca5c823475370d0f601d7766151b1ba`  
		Last Modified: Sat, 17 Oct 2026 00:38:27 GMT  
		Size: 137.2 MB (137183236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0f86f4733e37629c6c2dd930b614ca184468932d5bfc00bc96782da39a3ee959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243be03efcfa5603cf679b4cb125f9b4c80144efa0ed3f120bb934a7bd2d30a1`

```dockerfile
```

-	Layers:
	-	`sha256:02c406ad2615c61ee324e8e1f573a759560c70774297e6a5de1efd623e64f6c8`  
		Last Modified: Sat, 17 Oct 2026 00:38:24 GMT  
		Size: 2.3 MB (2300361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a09d88535e3df58282fcb8941c6ea5b52f1752a3eef2964cc250eb8dfa2797`  
		Last Modified: Sat, 17 Oct 2026 00:38:24 GMT  
		Size: 11.0 KB (11043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5b3ca1be8636924c2410f2954a0fb7a5f2511495d62bb05bf604a62b2d033640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174240828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228e2d12427ddb5a243c377d90854cc0d74f17717c08aeeb980430fb2bdb3268`
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
# Fri, 02 Oct 2026 05:29:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:29:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:29:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7c3db45c63b3e71d6ab85bd7c3f40f50918529fc68ed6ad3590a82cf6f5ee`  
		Last Modified: Fri, 02 Oct 2026 05:29:58 GMT  
		Size: 139.9 MB (139864319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f92f482c1ae6f40375f0795253e1a40b938920557c5c9e1b75d4fdf2a02df78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188364ccf2c9d2e9701f1407148c0db44c5eab420b9482d4dcd078388712fda6`

```dockerfile
```

-	Layers:
	-	`sha256:a479ac41b276e19230a62a017030c96545f5ee613051efadac33955e5a7c1fdf`  
		Last Modified: Fri, 02 Oct 2026 05:29:55 GMT  
		Size: 2.3 MB (2298638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fb06b84e4b0d2e62322a966ec0b4a07deaf207f0005937098fbe6f88b2fd9f2`  
		Last Modified: Fri, 02 Oct 2026 05:29:55 GMT  
		Size: 11.0 KB (10959 bytes)  
		MIME: application/vnd.in-toto+json
