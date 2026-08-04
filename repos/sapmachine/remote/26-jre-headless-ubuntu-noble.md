## `sapmachine:26-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:f97f10517f3a3e7f50b01a846a6abff28604f38ec1f7860bd833e15bbd1f415c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:689b9a76ec2413a1e9c1e6efea7524e09984ad223f1b6a5cf17590c5ae1cc6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92456454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9878a03a45257ad75b203d05a35a72c3e26d6ebfbbd40c799285fea61c3da7`
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
# Tue, 04 Aug 2026 01:47:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:47:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba44c939e5649aec7e5dc349292f7ca29b99d7352760072ed8bb74cc6a8932`  
		Last Modified: Tue, 04 Aug 2026 01:48:05 GMT  
		Size: 62.7 MB (62705345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9506bfedb10ecf662a1cd44db56a178739248045befcb7ca0e323c80854a2e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eadb8536de11954f56194cc9ce3044e4ab7760ea37cdaa914490bc882dc3520`

```dockerfile
```

-	Layers:
	-	`sha256:abf1e0d89061a57925b90583278588a3e673d9341d75f9999904051836f84182`  
		Last Modified: Tue, 04 Aug 2026 01:48:03 GMT  
		Size: 2.3 MB (2279244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2465525d73e86de6ee9acdb5c7e48b09e47d3512ea41dc4d22c4ca74950e2e2`  
		Last Modified: Tue, 04 Aug 2026 01:48:03 GMT  
		Size: 11.6 KB (11558 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:eed6693399b852b8baa149d396fcbe9b70308eb350da0cd034af2c04d37de5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88200365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83bc1614bed9c32f3c77bb1295893b0fdd800e22f25b5de4057de40e8387a77`
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
# Tue, 04 Aug 2026 01:47:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:47:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:47:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1ace67c3bed3bfa6836069f54dbe84e5ec55b369e14c5dff378176ce08a7c6`  
		Last Modified: Tue, 04 Aug 2026 01:47:56 GMT  
		Size: 59.3 MB (59313547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3e8cbe024952a6aa44c347397886e5639d1a4bc073619e67d37fb8613f583408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae05103a8868fd7472b11516ebf7ae7f6ba42d9992c21e87aa88d351d771fb2`

```dockerfile
```

-	Layers:
	-	`sha256:c2312c0b77fdf1883d2a74d6e2e946a08de4d6760922ec94ef7d5c72a7693cab`  
		Last Modified: Tue, 04 Aug 2026 01:47:54 GMT  
		Size: 2.3 MB (2279796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4fd9035326199ca738cdc6dade89c437854555cf66f430c1dc4a88e70da948`  
		Last Modified: Tue, 04 Aug 2026 01:47:54 GMT  
		Size: 11.8 KB (11758 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3336ce6d59b28c7238e83ec0eb223df3fca70862921e236ed97e581665317c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96631790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2841d538109ac342ccc406b626f769975be0474a4bc0eee601c4d8f9b5387243`
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
# Tue, 04 Aug 2026 02:39:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:39:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 02:39:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c6358d7a7dd2e20605d95bb56d44e84bd64f8a69d933c8e095a6489a569688`  
		Last Modified: Tue, 04 Aug 2026 02:39:52 GMT  
		Size: 62.3 MB (62321117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aced753f88280430c1fea56f91e6f909ab0c0eae8b6a7c6320dd266e2bd2be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2514661fa91fd793f2a0ae21fbb8c91db06318dc982ad69f5cca23a54e9a714d`

```dockerfile
```

-	Layers:
	-	`sha256:318d7bea3a28b8fe9037abdb7ece7301a2acce2ed9910c7c236f564379c05f9f`  
		Last Modified: Tue, 04 Aug 2026 02:39:51 GMT  
		Size: 2.3 MB (2278055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63e0e3762e7dcbc5a3d01ff5cc305c7a45d0c90482e9782e7118affaf65b34d3`  
		Last Modified: Tue, 04 Aug 2026 02:39:50 GMT  
		Size: 11.7 KB (11650 bytes)  
		MIME: application/vnd.in-toto+json
