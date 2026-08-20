## `sapmachine:lts-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:07abe1ee3080fd631e85f07febfb767f24cd8d0d05905dcfadd2bb94d7e4f15e
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

### `sapmachine:lts-jre-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:lts-jre-ubuntu-24.04` - linux; arm64 variant v8

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

### `sapmachine:lts-jre-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:lts-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:82713b6855c76143d1505221054b35df81975596dbc8184518747c52a8d1f0d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94413648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d18b0ef515f32b1f4ebb3a6cfdfbc1dbf0e731a2bf9fb52586c1c1894fd6ba`
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
# Wed, 19 Aug 2026 22:36:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:36:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 19 Aug 2026 22:36:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1bef282884746b029e5ded08ebbc297f9178ff13a84736895aa55f1927714b`  
		Last Modified: Wed, 19 Aug 2026 22:36:26 GMT  
		Size: 60.1 MB (60102453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:13449ccbe507ec0a04e8dd12c86850e0fa017f6169b876dc57b479c17bdaeae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6188974a842cca567a73ddc2c097ffdbdaecf2b5d9e381099020f210bee68051`

```dockerfile
```

-	Layers:
	-	`sha256:82e411fb95f99353f557dbda319685307f824e6c163856bb53528315e9ab1c46`  
		Last Modified: Wed, 19 Aug 2026 22:36:25 GMT  
		Size: 2.5 MB (2526748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc86c324b1944d7031cb93bdacc00d144ee5a983266217b2f8aedd795a9da60`  
		Last Modified: Wed, 19 Aug 2026 22:36:24 GMT  
		Size: 11.1 KB (11113 bytes)  
		MIME: application/vnd.in-toto+json
