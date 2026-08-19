## `sapmachine:lts-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:fe4b5ef8e311511dab6db8c755b36549cb4d69b5821d12e0b80364744cc720eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:1cdf26d331135185036ea6a04e8992b0e70c751d5bbe1769dcae71cde71ceda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90618206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72af1a15e22ae82ac5b9cbe607c836766a83dded9e6199c4fa4f839655028c2b`
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
# Tue, 18 Aug 2026 19:28:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:28:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb1a5c779079782190034b82eaaa7558992fc53992b8c09195ff1d3434a45e3`  
		Last Modified: Tue, 18 Aug 2026 19:29:09 GMT  
		Size: 60.9 MB (60865399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c5ef53166d1a1e70d2f981c872cd4ab74286fd962c85e841b5d98d3737ae59ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721c3d006ba0b49582792ad3fee1e6c0e7b346225c99d975410af9465b6c6b8d`

```dockerfile
```

-	Layers:
	-	`sha256:4841ae0b0a503844fc4f20832d405905feaf88f86c43e9cf5c964e51745b5a0b`  
		Last Modified: Tue, 18 Aug 2026 19:29:07 GMT  
		Size: 2.5 MB (2527862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cff6fad640c38e4d4be6966cb3dee982279aed1cb7097211cec65d2834c07055`  
		Last Modified: Tue, 18 Aug 2026 19:29:07 GMT  
		Size: 11.0 KB (11026 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:189733bc8013140ab905bb88e34a0b5b38b0d2d71ad79a639d2d7e82707e7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88711978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd4114dfcc753c9b13ee031e5610fbfc2dca54e9837cc1395d6319a9aa818d6`
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
# Tue, 18 Aug 2026 19:29:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bab4f9a5b1ced1f7b29d5d5d7933c498dbb51c869e99a865903d0ddf76f90b8`  
		Last Modified: Tue, 18 Aug 2026 19:29:17 GMT  
		Size: 59.8 MB (59824743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b6b154e029bd9b7769858919e4bbd81303df6090e384244b3896f17eeaff4a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0254bd5524d51f6c8a66f1698f26e22ac803e5bdafc1e1434bd3b1d3a43b37b`

```dockerfile
```

-	Layers:
	-	`sha256:6b9355fbf9053e7fd8e76a56528065ed2f91657682216c299491cfd610acccdb`  
		Last Modified: Tue, 18 Aug 2026 19:29:15 GMT  
		Size: 2.5 MB (2528411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0357496eb85013dba0dd1cb4de627aed1c164d7ee8b41546094923c0fd6bfb1`  
		Last Modified: Tue, 18 Aug 2026 19:29:15 GMT  
		Size: 11.2 KB (11215 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:db589c23c2fac99ce0d2d8d7ba04328e4c01f03fd75e6a93c1d7be2a375811bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97040536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f481d327419d26414e478a7be4955415a2280a44facc0f776bb50ffa9f984232`
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
# Tue, 04 Aug 2026 02:46:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:46:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:46:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee8ebbe7f30195342ae37e2f93f8e7b261c46a96ea4697690ac2267e2259f97`  
		Last Modified: Tue, 04 Aug 2026 02:46:28 GMT  
		Size: 62.7 MB (62729863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:78d35253fa3611cc504d23e5b3e607169dfa636484590870fd50ac8bae2c63bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655fcc49569f81eb3c04833ef6082bd1d6424722dd52c079adc7a2c3773377b4`

```dockerfile
```

-	Layers:
	-	`sha256:c4bcbc89ec5da379b7485b1501ab205e7b7ce16786a83a6b344b8abd679cffc0`  
		Last Modified: Tue, 04 Aug 2026 02:46:27 GMT  
		Size: 2.5 MB (2526748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1812544e72b631144549f4d6a4d491e76def08d49b1787d51ec3154061020a39`  
		Last Modified: Tue, 04 Aug 2026 02:46:26 GMT  
		Size: 11.1 KB (11113 bytes)  
		MIME: application/vnd.in-toto+json
