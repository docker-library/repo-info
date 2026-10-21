## `sapmachine:lts-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:96c659eb3700c2bfb931a814e12107f3dd0b1aab3fd6f3ec988ed291625821cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8a4cff86c437ebef73aa3755b982a6ed0c56ec7f20a7e589a3a2db84ebc330f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90712691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ca6083de81aabc6640dd08b6ef3acadf7a02ec518c1b086c0ca05cbf240c7e`
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
# Wed, 21 Oct 2026 22:13:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cd1be4a1f69f78dcaaa2676cc3601eef6159fc55f79a60c13b87f24545570b`  
		Last Modified: Wed, 21 Oct 2026 22:13:28 GMT  
		Size: 60.9 MB (60946933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e5f0d83458488a16c85979261053ddf076424787dd8ecdb4dc66084736f29e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b98cd3c6bd40dbcd814b8177a58c44051616a957fc423573a6949a59e5c3254`

```dockerfile
```

-	Layers:
	-	`sha256:ccfa8d3b77903e6692986bf1263eef6ac0729549b5dcc5bbd27543b12566d1f6`  
		Last Modified: Wed, 21 Oct 2026 22:13:26 GMT  
		Size: 2.5 MB (2527912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee46fd1d08d69d649a5946012f7bc1ba56c17d2d0ad7ce97e0eb5bc6f9efee0e`  
		Last Modified: Wed, 21 Oct 2026 22:13:25 GMT  
		Size: 11.8 KB (11761 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2b92624f90591d4578ee1d759ba05dc6023a1247aaa0639e109ead46e1614a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88845330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c609dbb513e1ca9b8a7f5df0e2032835cc0b3ee852827ff65e1d02ad04228540`
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
# Wed, 21 Oct 2026 22:45:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa84726da62bbead22bbc4cd58cbd4789b847660d9dff14ac75ebfbeb258ee4`  
		Last Modified: Wed, 21 Oct 2026 22:45:41 GMT  
		Size: 59.9 MB (59905569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:86dde15310b8c1e95850a00907c76ca9c756ef7e80793bfbeb07115232090b64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b53761e78e3b315f18f70eb44fad1a5816454de92e43db259cf8c701c273b0`

```dockerfile
```

-	Layers:
	-	`sha256:c2d7ec7fb0ec68eda7371d21aca1fe52e5ce68484fe21a79ef618c8a97e8178b`  
		Last Modified: Wed, 21 Oct 2026 22:45:40 GMT  
		Size: 2.5 MB (2528461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cb084ad72a5b630f9468bd5073bc8c4a4e4c5fe3889da86ac632e58322d38b8`  
		Last Modified: Wed, 21 Oct 2026 22:45:40 GMT  
		Size: 11.9 KB (11949 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:50ac49c7cbfb4088efd34ab897fd881a951c77de4ecfdc21e622799b6c78d2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94491703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d45c57749dcc5e3b0badb202ccc21ba30df2288e2ad677e4e57902f9375438`
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
# Sat, 17 Oct 2026 02:29:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:29:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:29:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8b0038e7864db318306daf503035783600d568a6476a045415739b332aa846`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 60.1 MB (60113713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:55f3edca0d9bd919a028e9a67e7ace08eb6a2aa7d730e4eda7132b857d972d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847a8debdd7ee536f2f17fd7500f553cf750bd2cd57e8df62b0ad8f0f2570fa1`

```dockerfile
```

-	Layers:
	-	`sha256:76970ec3f4fee104813113b8e47579fe84163226f4bbbc6fa44e5b97a6d5ce5b`  
		Last Modified: Sat, 17 Oct 2026 02:29:53 GMT  
		Size: 2.5 MB (2526810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85eb145d2097ea0b22d65f1b8749ecb8de5fcc12c51a642b3137e9e5a7fb149f`  
		Last Modified: Sat, 17 Oct 2026 02:29:52 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
