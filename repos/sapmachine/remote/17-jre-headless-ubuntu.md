## `sapmachine:17-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:fe870169f46f458c71b416d304d477f512e549161f1321f742138308278788c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:88c231f4b0b52e52dc04675450cac0fa297b23a4f83dce0ef5a2e3c31223fdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88546315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2777976cef1de033c5b3389cd0d624b8c8184bca8639715028f72003e07369`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba2337e703f67c00575126ea48ba488737f31ecef59990817f26c821eb9f55c`  
		Last Modified: Tue, 04 Aug 2026 01:50:25 GMT  
		Size: 58.8 MB (58795206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ad1b5a9351d381ef9c4d0f140c3bd12e0bd4d8d6499c650735195151497770e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b481b563928434cf1bfa181ee7d9b7d26959306279ea2954e3b71b96f417eb`

```dockerfile
```

-	Layers:
	-	`sha256:9f785c522bb50d53b687dde6a1cf6df7e819da22bd096065d68558583456b0b2`  
		Last Modified: Tue, 04 Aug 2026 01:50:23 GMT  
		Size: 2.3 MB (2273656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcfb6a99b35c459bdf37f41cc7022052925ac908641115613d72190584cb9718`  
		Last Modified: Tue, 04 Aug 2026 01:50:23 GMT  
		Size: 10.2 KB (10229 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ae85132da5104a10fd6235181b87b3aec5be8643faa1112a91775a3cd4ed8dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84742946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb3681f16755c2856e5e7a9ffa3c83bf09f15f6655437eef2b4589a4fae5db6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:50:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:50:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b307d06dae5b7de944ca8870def0f49c0017d7da4f77809c83aef3397ca2b2e`  
		Last Modified: Tue, 04 Aug 2026 01:50:33 GMT  
		Size: 55.9 MB (55856128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ba60a78cdd916f52d96fc5b5b16dac36f46c038d21840fa157ad075ddbfa05fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aca528ff28ef011e261d2e9a2add2e2a1840ee9a143c0da62560b186518f98`

```dockerfile
```

-	Layers:
	-	`sha256:b05d385e0f882f15561723609a7d37d0367f5117c277a21949c034ca2fcf6e89`  
		Last Modified: Tue, 04 Aug 2026 01:50:32 GMT  
		Size: 2.3 MB (2274163 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f173ae98ea1516ac2ac2eecd20fe7f265479d958f7fa7ae387d22aece90dbbb6`  
		Last Modified: Tue, 04 Aug 2026 01:50:32 GMT  
		Size: 10.4 KB (10381 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:efad3332937d1d4ae5cec807de0b7d48168e9668dd032bf06793a3225f086b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92589653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dec006fa387bda96446e1579c4b48d97942b5b4693160f44bddc460fa7c96b7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 03:01:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:01:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 03:01:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440c7de6e49d613007e3ca5723717b4f18b1b4f5756a625b64d2dca92d933934`  
		Last Modified: Tue, 04 Aug 2026 03:02:10 GMT  
		Size: 58.3 MB (58278980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:31ebd7c5ab8264c2c7133b48635c535208ec98c2dfe17d88eb4266e25b31cc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5361da626e6f3d5cd6f4ae08387b428a00531ee82bd9a09df5b100ee0490e401`

```dockerfile
```

-	Layers:
	-	`sha256:c944eba8bd96009befd6e6db36a34dfb9d6da8d16fb5f183fedf96d0ee378342`  
		Last Modified: Tue, 04 Aug 2026 03:02:08 GMT  
		Size: 2.3 MB (2273073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edbc47b52bc7a51be377e50245c9a12d8073d209fa848e7bd31a5fbcfbb44161`  
		Last Modified: Tue, 04 Aug 2026 03:02:08 GMT  
		Size: 10.3 KB (10296 bytes)  
		MIME: application/vnd.in-toto+json
