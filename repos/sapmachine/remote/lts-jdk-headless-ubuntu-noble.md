## `sapmachine:lts-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:8b91eb905377cb49eaed2b6d01c41e244481a1a0703c7e213d66585cc7304aae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:09969e989040d3112def3a49aebc15d17a3d004f93f16471d822735259026144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252877235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23aec5c3da464789752fee935a35330b7773492d0669d007c21206271e8f55c`
-	Default Command: `["jshell"]`

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
# Tue, 18 Aug 2026 19:29:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae9b569182e2218d9f64895863d184285a78212f70de251b6dd985fffdf0f41`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 223.1 MB (223124428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:819d22351aef06419d2026fb8cbb1c9a886731f0f77dc3fc44e1be64f8542bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafe60f53da7b1b45e1cb9817f1f45c5a410fa3a9b0178353b5003d366aaa317`

```dockerfile
```

-	Layers:
	-	`sha256:db060541eb20c484a820e23d1ca4be1576ad7256db668fdd268690ed8ea89d83`  
		Last Modified: Tue, 18 Aug 2026 19:29:18 GMT  
		Size: 2.3 MB (2348687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16284e1669d27570be903e395c6e84045e5a3ed77b7feedcac2876ea82c978c8`  
		Last Modified: Tue, 18 Aug 2026 19:29:18 GMT  
		Size: 11.3 KB (11265 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2f768fc1d47f3bcd9ff92361a4e1f9878b2a435c43d595fbe38aa67c2d9bda49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249777661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e753e8e53f76a5577db7d2901b3900ec174d04fdbe3b3bf5c40133a63787ec9`
-	Default Command: `["jshell"]`

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
# Tue, 18 Aug 2026 19:29:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:29:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8e17c133b2f1489b404419158b05f6b57dd04def4ed6d89649e970b4c214c7`  
		Last Modified: Tue, 18 Aug 2026 19:29:40 GMT  
		Size: 220.9 MB (220890426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:60646f26456d816c3922765fcfc520069f6f74be2bed19dd22f36b0645d4556e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1db73d0e4998d4de276483669ae5b10111e55463ca4e08996592df704bece63`

```dockerfile
```

-	Layers:
	-	`sha256:5e0800eb77a56413526183d0402b641d393379d8dd9b6461a99df70b9cdee7bf`  
		Last Modified: Tue, 18 Aug 2026 19:29:36 GMT  
		Size: 2.3 MB (2349227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a346996107dc1ad37cbaefc41b1e6cd6ea28dbc597251f08902f534f8023e9d`  
		Last Modified: Tue, 18 Aug 2026 19:29:36 GMT  
		Size: 11.5 KB (11452 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b37c0e08cf1158f75e86dfca68f50b2a006723784fe8bc7ae7d83a1ef70c520d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258141366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9621db3eb759cd126d38d051e867191aff49433ff8fa5272b7ea9082cd3592f3`
-	Default Command: `["jshell"]`

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
# Tue, 04 Aug 2026 02:47:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:47:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:47:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5a3fa3254ec8cf55598aa20113d2b76a068833847d36c50204ca371b6f559c`  
		Last Modified: Tue, 04 Aug 2026 02:48:14 GMT  
		Size: 223.8 MB (223830693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:64f3380f990621ac2da28c11394fe48a78edff5b360f02fc0853ab4f18bc3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2356909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a58071c8d8e45e7cbea27bcb1e8902dec6d396edd7597ad99d2b2c48f0f54d7`

```dockerfile
```

-	Layers:
	-	`sha256:5158ef44e36ec3744e45fb7e561209a0f07d68e584005699155a11e7f324aed6`  
		Last Modified: Tue, 04 Aug 2026 02:48:09 GMT  
		Size: 2.3 MB (2345558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:017083f12eb7559cd0f4bcb431e9483995c97f185b6be000d0f241be3e3f35ca`  
		Last Modified: Tue, 04 Aug 2026 02:48:08 GMT  
		Size: 11.4 KB (11351 bytes)  
		MIME: application/vnd.in-toto+json
