## `sapmachine:21-jre-headless`

```console
$ docker pull sapmachine@sha256:a342f1e2baaa33ab3ca83b8cdc30f6863092eb95d91d16fa49f307d7733678ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:b0343e138fc6016c04838ef157e8b0247ac744ba4a36f0dd7ba0e2a762161f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91958839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131af1b334f5138f6ddefcbdb1538a98fc72afef4d05b5eda0fc0f8f5339d133`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a991815ad752ab429752786476334827a44e8c5f33b5fd84e6cdd6215085f8bf`  
		Last Modified: Tue, 18 Aug 2026 19:29:27 GMT  
		Size: 62.2 MB (62206032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d7ac4207fa655afd6db4c3de5ceb81e275b2115e11d88029a7d4e420d4f1d600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9698916536b10f70668e8915fb969f7f27cc9736c5a68fdf0967186e8b2eb414`

```dockerfile
```

-	Layers:
	-	`sha256:de6d8b05f3f73acbb013dcfcefb6e568fdec2a40e415ce5c22ed98149df7d3d2`  
		Last Modified: Tue, 18 Aug 2026 19:29:25 GMT  
		Size: 2.3 MB (2274662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96d8c5fd3e32c6fae4515004d8c16a43c75fe23722fd218e3bd9460cafd0d3c`  
		Last Modified: Tue, 18 Aug 2026 19:29:25 GMT  
		Size: 10.2 KB (10228 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5d417a1f9c727260932ef207057321a6a083fdf32c1965c1fa5378321627394a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90269491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6ca1797deee8d59150158c8c9bf85c9af4516f6381a491f05f0c4282777710`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4f53a71299c9027ac00cbabb217a7e455ddab1ceae94de0e013ef8682f26cb`  
		Last Modified: Tue, 18 Aug 2026 19:29:37 GMT  
		Size: 61.4 MB (61382256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:232db897ef2e514992f719369b9a03fab72e4e773ababf3a481ba3a2417322ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753a6aa1db9a3f5228da90766925af0e1d9bbe25e73ed576e8f8a284e9d03dfd`

```dockerfile
```

-	Layers:
	-	`sha256:2ba7ced3142f3083c887a7b5a9acec679fa34439a9a5848748aa1602aa4c584d`  
		Last Modified: Tue, 18 Aug 2026 19:29:36 GMT  
		Size: 2.3 MB (2275169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70efaa9bf94fc2ccbfc0e28cc6b0251d38557d2b68a5df6f6de75327e2f6f0e0`  
		Last Modified: Tue, 18 Aug 2026 19:29:35 GMT  
		Size: 10.4 KB (10381 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:75a998140a7a60f66296a1ef43cec30a9b9a9d6b4044ad0005cd62944cf458ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96152778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4880a145117ecc3825b910fdc2e324fa4cf38061133077ac08c2d63b85a03bc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:38:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:38:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 19 Aug 2026 22:38:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5f0b12794b5abb6417cc40a0c9f1caadbced98a730ed18dbe3aae964466e9d`  
		Last Modified: Wed, 19 Aug 2026 22:39:20 GMT  
		Size: 61.8 MB (61841583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a94222752ff9f022b59c71280d476e8d2be571bc0eccbe322a8004abdf5385e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70993c72e086dd347c4ff48a26543c859eec611151695c2f4547a86de238e1e4`

```dockerfile
```

-	Layers:
	-	`sha256:e038fe3eae7a4b55985ee3dc32774c9b89cd8cf6ff239c82167961cf77c29038`  
		Last Modified: Wed, 19 Aug 2026 22:39:18 GMT  
		Size: 2.3 MB (2274079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29084554e156942dadcf8c53e303366ee995b59d7ff6ab772239c5402c1c869`  
		Last Modified: Wed, 19 Aug 2026 22:39:17 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.in-toto+json
