## `sapmachine:jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:4936b79a2eb72da04120c746a378bef203f70f793e9b4ee1f2593fcc46dea84d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:45528578680f4b39ea43fa8039fbe2e8c74ba8b1e5cbbd26e60f09aa7b7f0d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90054960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14bb573ff3832637da052733710b9c5e1dfe2645d597c187df6c464418d76e1`
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
# Tue, 18 Aug 2026 19:27:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:27:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1be16f76b16814c9d50a083bbcb9c5bf968d461be5ef521d357e69a6c02da4`  
		Last Modified: Tue, 18 Aug 2026 19:27:26 GMT  
		Size: 60.3 MB (60302153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ebaacc411aef65fdfe5c0103b5e2c8a264e4a6fbcd44b8e1e82a2bc9e4986e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a348ec78e7213ab7769f730a7d363fb067581192d5e2e96614052b5e653e8`

```dockerfile
```

-	Layers:
	-	`sha256:c5b8140d0bee9f6e7330f024d0405b521da7a2e7e887639dd501ad6b004eb8cd`  
		Last Modified: Tue, 18 Aug 2026 19:27:24 GMT  
		Size: 2.3 MB (2279244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed6cfce3638b8c95050583db6e2518dfb3c08e5c8c04c20bdd608b7c4b060fc4`  
		Last Modified: Tue, 18 Aug 2026 19:27:24 GMT  
		Size: 11.6 KB (11558 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:43fa8acb10e928dd021d388ac6fe523f90e44a0a822cf9d4af65150be50c0579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88200951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1091b9a57a2a89cc25a161fcf2e2e66e293eb9d25f59a72b7fb2e2754152b2e7`
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
# Tue, 18 Aug 2026 19:27:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:27:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5726e5178c7749975b08a9df037b6ced4c5a6bc593e5c7f5e800703e78a5caf1`  
		Last Modified: Tue, 18 Aug 2026 19:27:33 GMT  
		Size: 59.3 MB (59313716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dc1628dc908ee58b59562463b36686ef306df4ab3a36f1bf129e6d096e0a6d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50361f774795096108e871db544d8b2175544c01926a066b63f71107b66ceaef`

```dockerfile
```

-	Layers:
	-	`sha256:6bfacdd3c07e1a9414bf1eb1bdb629e3639a723004d69745d32e092731f5de07`  
		Last Modified: Tue, 18 Aug 2026 19:27:31 GMT  
		Size: 2.3 MB (2279796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aec41db2092ee7572c2deee4ba8c33ee470f84ec0f6d86bdbe4ca72b25bf23b2`  
		Last Modified: Tue, 18 Aug 2026 19:27:31 GMT  
		Size: 11.8 KB (11758 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:89dca00ff48c15e30e33792d6936f680cecb9f82701f89ab40768841a64e71bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94001865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7b6de1e4e4c0f999cacbf10cc03dadc6783d6ccf11ded96b87609ab91b34b4`
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
# Wed, 19 Aug 2026 22:33:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:33:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 19 Aug 2026 22:33:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eff7588a10d9afee17d89130b11bce03e86f4831352a22c398f0f9fdd1998a5`  
		Last Modified: Wed, 19 Aug 2026 22:33:38 GMT  
		Size: 59.7 MB (59690670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4ab3b0ef7b1bb4296af73fa952d0abb63cf27a66b2e034c0c32c994fd40b1f34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d696ab01e1aabf509e31917cfeea316fcd234ec5f587240dd5eaa9e41d78a642`

```dockerfile
```

-	Layers:
	-	`sha256:add8ad7e51047f9125b67e504c6b5a4e507f72f6bd867cd7770c5fcf6b12c643`  
		Last Modified: Wed, 19 Aug 2026 22:33:37 GMT  
		Size: 2.3 MB (2278055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c94a7700ee83b9173c8ec3a4e3036b04a3de0f1df4f804990d576fdd1728f1e`  
		Last Modified: Wed, 19 Aug 2026 22:33:36 GMT  
		Size: 11.7 KB (11650 bytes)  
		MIME: application/vnd.in-toto+json
