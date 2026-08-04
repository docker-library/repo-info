## `sapmachine:17-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:e6c834e3dfefd27a87c5d08096f35691464e3e0057b18b3daaf9fda1292ffe40
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
$ docker pull sapmachine@sha256:accf62ece8d1af19d2691678b0d95b4aed46532cac38666e6088e11900071849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89962637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12e3f8a6fe36b728fe8a39b6428e00e522c7e92ae49d6f966e292cd4d42c907`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:38:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:38:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:38:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c7269fb6981d8477670c36a2df59419dce3de8a7ce3f558b056efd8edcb5f7`  
		Last Modified: Wed, 22 Jul 2026 18:38:33 GMT  
		Size: 55.6 MB (55649161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:35c325a3e5f2eddaf11957e3652a9196cc4a41d3b19fdaf9e4dca4e0c038b7d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d639fbf479c8668e3e116c500dfb099da534a8e42eb8c26667f44b53debce1d`

```dockerfile
```

-	Layers:
	-	`sha256:f4eb9657c1e91024a4b5ccbbd288cf556ad338c168894e3a2b1d5eacb24196e6`  
		Last Modified: Wed, 22 Jul 2026 18:38:32 GMT  
		Size: 2.3 MB (2273047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84f5faebe1885d3abbc88db444452084fa9ed8bbe1d820501627e049dc0955b8`  
		Last Modified: Wed, 22 Jul 2026 18:38:31 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.in-toto+json
