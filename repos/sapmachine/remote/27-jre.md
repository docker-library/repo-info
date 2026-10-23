## `sapmachine:27-jre`

```console
$ docker pull sapmachine@sha256:15b8b7c6601d804ddd055af73f8417f7403d7a4658c7fb339d5bef22c0daa0a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:8eb9788525b079bc7c2bb67545904bb2e3a4554562695d8cb7ae71fb5deb2b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90665396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ed352c713f71955701a70dd0739664005a36d58362c8c8309e779c0ffad3e1`
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
# Fri, 23 Oct 2026 16:53:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:53:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:53:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6154a6fdb4b088815a5007e25bc84fd4698b263ccb356b259acb7a3e9d738fc9`  
		Last Modified: Fri, 23 Oct 2026 16:54:11 GMT  
		Size: 60.9 MB (60899638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f5e3a2276cc9c0ff89ba6844db85c3b2c6e3b00eeaef509183cf88bec32d2764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e727471c4aa1419e7a83b2ff9949c7df96f2abffd6fd93dd15258746ddd5c11f`

```dockerfile
```

-	Layers:
	-	`sha256:b1bd61f33ceb05cc338f38125f0a070545267c58c623b8899f2684f9b70351d0`  
		Last Modified: Fri, 23 Oct 2026 16:54:09 GMT  
		Size: 2.5 MB (2526345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da0ad301ec88bde2ffdbc52cc8a798bd4a3e1b0f1ef87b8054571e127d3a1144`  
		Last Modified: Fri, 23 Oct 2026 16:54:09 GMT  
		Size: 12.1 KB (12077 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:43fc55541bfaf5a509a97911adec4501f16836cf5819dc9a2787e56af022ba37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88869343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0563f87a6860399797611e4bbcc79100e8550b5aca6b818a87d47222266810`
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
# Fri, 23 Oct 2026 16:54:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1250656c497159936bfebbb81e7ce3119a40880d1b11714c0a3347ea895fa6ee`  
		Last Modified: Fri, 23 Oct 2026 16:54:15 GMT  
		Size: 59.9 MB (59929582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7383093b5f943ebe61ddc24b3e25aef8f3ae0936cbded1f0279628e70bad848a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4414f78104abac90512ce99adb5597c79386ff8b67754faa97453802a818e9ca`

```dockerfile
```

-	Layers:
	-	`sha256:d1c8a5f61fca891bd770dfbb6a832f4408a200bc26c5d0e9aeda0f72f74a7872`  
		Last Modified: Fri, 23 Oct 2026 16:54:13 GMT  
		Size: 2.5 MB (2526906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4d949ab19c644920d24a77aa8ec6dfa2719db83d6989a897754c6fba252ef8`  
		Last Modified: Fri, 23 Oct 2026 16:54:12 GMT  
		Size: 12.3 KB (12277 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9343d87bc1f1f48e7e33d4219e931222434f7ccd9c0d65abdd18e67ec06f5a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94620714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ed61afe76c7e461228cb00f2b68930144173a8d9e10bde3e6f927c6e25db18`
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
# Fri, 23 Oct 2026 18:48:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:48:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:48:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f5965194629363bd1ea53eb4ee28817870fcee972fd3e1c1c3f5d45f523727`  
		Last Modified: Fri, 23 Oct 2026 18:49:18 GMT  
		Size: 60.2 MB (60242724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d71cf0b417756c416a059b2ffcd4ff4e7fda89de2e019844485ed8967bdf9b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ef5bce013b96d958f830a36d3818afbbcd116f5aa1a936b00d9e482c874296`

```dockerfile
```

-	Layers:
	-	`sha256:dd7a52cd5047c81eea8cc22b4e09dfd229deaf101cb95f4fa955749f9574d4d1`  
		Last Modified: Fri, 23 Oct 2026 18:49:17 GMT  
		Size: 2.5 MB (2525237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2e73c8ee1f87ffa2c7cb706795f1bc28bd45ac0112f162aed727fdc7c0b69e`  
		Last Modified: Fri, 23 Oct 2026 18:49:16 GMT  
		Size: 12.2 KB (12169 bytes)  
		MIME: application/vnd.in-toto+json
