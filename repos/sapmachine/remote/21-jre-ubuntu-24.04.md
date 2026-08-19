## `sapmachine:21-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:75ef01df672880113cac18cee35a63ee3dd9bd568e3bd845a3a2f82df208ea8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:da6be199098997194a8e36a4cb023383c970ffd0abfda5f1ed84d80ea8d8e2ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93517751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9245605e99d7457761ddac362757bc3fd1d54c8aaf334855e7c44996836c66`
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
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
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
	-	`sha256:0ad0e8eba845c8dafaeea39ce3b5c5ca91b74df8d35a133f2fd2fbaa477858ac`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 63.8 MB (63764944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8820d30468d615d4a8c640fb67354daca09dc26221f3c12dba17ac1939c0c5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22efc5800e17f95def166f6ea98d5fb0caaa355299db528017b79357ad736ca9`

```dockerfile
```

-	Layers:
	-	`sha256:5f60798dfd98ba57c4ad6cf0d5770c409c92578d3b58784c1030a12655e94ad0`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 2.5 MB (2521748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fea65cbc8db6a7a44d143c70038a8b0fa5d4373f4e1f94a5a3a94d0f992bd33`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 10.0 KB (10046 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3c7e2edf3df87a2def4f342262693b6c9adb02ec4f2294cca8a6a2b8919650bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91851367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b987dd969e6fd33acf09507bbab9ebf91eb3ece94917015ec7f159195e67e4`
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
# Tue, 18 Aug 2026 19:29:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50606d63dc1231cc6baea42523494f746cd473f65fb0da96a55d32b9c6612b3f`  
		Last Modified: Tue, 18 Aug 2026 19:29:44 GMT  
		Size: 63.0 MB (62964132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6106579ba546740a5393265a3a6667a3735d747dc7daf4ef33942d33402ca491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:becc73d91431aa9e04371d6cdfbb72b4ac7018e9a79a131f652181327cc38aae`

```dockerfile
```

-	Layers:
	-	`sha256:86a258ba68001c864bfd5c67191235ba68d443cbcd226b3b0bd28998abb10a0c`  
		Last Modified: Tue, 18 Aug 2026 19:29:43 GMT  
		Size: 2.5 MB (2522264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3efefa3d7f2ed23416c56cf82431711c87277d88e9f46c90b0c13887cb10c965`  
		Last Modified: Tue, 18 Aug 2026 19:29:42 GMT  
		Size: 10.2 KB (10198 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2309c69f5b2f413c0afa32abbe48c14692d93a45b45dc0a7f830b935a1b212e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100599327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa0b9b3b20bb69a9b1f44a76d3948c18a8505cd95879ec2cc43d4c799e9d8e1`
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
# Tue, 04 Aug 2026 02:53:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 02:53:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c591187d4a6e013f5051110faae804df74e7ff7924683e1bc656ae2868ac0b`  
		Last Modified: Tue, 04 Aug 2026 02:54:14 GMT  
		Size: 66.3 MB (66288654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:abc7f2dc4604368cb1017a48bd8d84cfc4a3a6d649189b43f9e7b964f6b94837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50e0e383fcf1d50737579d9fbf491e1b465bf7530541254b7d4e668c6328b33`

```dockerfile
```

-	Layers:
	-	`sha256:68d7fd1d140b6bcb242eae82d3713b88708f1b5dc918ce39424a569718aa84b1`  
		Last Modified: Tue, 04 Aug 2026 02:54:12 GMT  
		Size: 2.5 MB (2521246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa216b5186714a27340842c0295e5c38a7a52caa35a2379d88983a164f7d79f5`  
		Last Modified: Tue, 04 Aug 2026 02:54:12 GMT  
		Size: 10.1 KB (10113 bytes)  
		MIME: application/vnd.in-toto+json
