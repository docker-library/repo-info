## `sapmachine:25-jre-headless`

```console
$ docker pull sapmachine@sha256:02704a66285a1d1c317804b621bdae5b3ab3d11b0c3ef4f98cb910b132da9347
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:6b619ce8bb2bf4d5feb6b023a5dc035a376cecd7b594e5ce3d108c4a092df9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (89041552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3655277df38cd8b21a99698612c12f79a65b386d079edd4147228b2328690c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:23:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:23:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb76663a409db789894f71b43768927facbd8804da6986ad9549eb8e193568d`  
		Last Modified: Wed, 22 Jul 2026 18:24:04 GMT  
		Size: 59.3 MB (59305951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:08b83310c69f8f1001bf574ead2474b6f3bbc8c7c86c4f6a28daa262955171ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad73a3895d059aab7fedcd1551852daa35fa6a51ff58a35b80759430e4c0424`

```dockerfile
```

-	Layers:
	-	`sha256:1bd1daf6096c6f21416421eb02e2d2851dc2648e500345b7cd7ea18b97756e68`  
		Last Modified: Wed, 22 Jul 2026 18:24:02 GMT  
		Size: 2.3 MB (2280822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c3845662df9a8e8cb66831507a42d4de1f3884b985ebd47debaa92a5b9cfdc2`  
		Last Modified: Wed, 22 Jul 2026 18:24:02 GMT  
		Size: 11.3 KB (11264 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:04c4aff7c1db54cd022d36f91dd81e6dcdb26a2a04ea33aaeaba76b7cbd44438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87144608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e10244483503c82e7f6aef80f7c0d1c5b252c37016ce32f0c5fee6be75760457`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:21:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:21:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a65589c2f37eb28211cbd6c4f79bc2ced8c0dc336dbf1575fb5786164023ce`  
		Last Modified: Wed, 22 Jul 2026 18:22:08 GMT  
		Size: 58.3 MB (58260428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:50fe2b714ceb6d52a28b2c2dc9e2f4f77c91ff85a100c891d61b4496d47fac4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a69aee35afb29846b43b951015fea8b682442cd9835dc5e7b8e847df16ad2e8`

```dockerfile
```

-	Layers:
	-	`sha256:39435ac81f8bf4304335931357adeef422e72bc92c38efc6abb5deab6216d7d1`  
		Last Modified: Wed, 22 Jul 2026 18:22:06 GMT  
		Size: 2.3 MB (2281362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab296a163dc9a7a7b08b92b18a5024feb7313900ce4ad7cb3a5b0a65f993f0e`  
		Last Modified: Wed, 22 Jul 2026 18:22:06 GMT  
		Size: 11.5 KB (11452 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4b32e275f4288c727b29e026eaa9bdc29b8b7177691d42c86542c95a6e6038cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92662252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5613dc526bf603f1eea6bb5c42193c243fde26d6599934cf662fafd0df979ce`
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
# Wed, 22 Jul 2026 18:26:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:26:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99afc0ec6d7741e083e32b433398c4388fc920cc6a34cee418968c4cccfff4b1`  
		Last Modified: Wed, 22 Jul 2026 18:26:50 GMT  
		Size: 58.3 MB (58348776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e5c0a494cb6166b040225730e31105b9b405d856e24bfb1f898637eee2ce579d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0821ba8542c922af2bc53be73b9d0174a57c5b1ca8534963cdfbfbd4883b57`

```dockerfile
```

-	Layers:
	-	`sha256:919795878b67eee4d2c0ff728549f35b9495fc1b00f09e06e15040eb75251003`  
		Last Modified: Wed, 22 Jul 2026 18:26:49 GMT  
		Size: 2.3 MB (2279627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f228008f02741d0124dbc65354c9c485ab210ff86ba875b480e31399671a697`  
		Last Modified: Wed, 22 Jul 2026 18:26:48 GMT  
		Size: 11.3 KB (11349 bytes)  
		MIME: application/vnd.in-toto+json
