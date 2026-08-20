## `sapmachine:25-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:cb41b079541dda84c66002f9fca96c8748116e7ca5d5345d65f8371dde549283
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu` - linux; amd64

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

### `sapmachine:25-jdk-headless-ubuntu` - unknown; unknown

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

### `sapmachine:25-jdk-headless-ubuntu` - linux; arm64 variant v8

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

### `sapmachine:25-jdk-headless-ubuntu` - unknown; unknown

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

### `sapmachine:25-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d3fdd8d5bfbb67df0fa0815da4c843df45fa6ace68e11574788774ac9c8450fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255509689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3fef80bcc12bcc64de42c9af619c091e1142e6d1a6a54ad9bd43106b8fa648`
-	Default Command: `["jshell"]`

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
# Wed, 19 Aug 2026 22:37:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:37:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 19 Aug 2026 22:37:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811360e68477ce41696730f4bc58d4a7360566816aa71d21888ac818611d471f`  
		Last Modified: Wed, 19 Aug 2026 22:38:04 GMT  
		Size: 221.2 MB (221198494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f110802c838107c299b9d618535c4b06f91fa00a4c945684a7da63f3118a71bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2356909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c8bee9268ccbb385e865ded926eb46416f0554c2ee9946dde65826a83a18d8`

```dockerfile
```

-	Layers:
	-	`sha256:f38c9b953cf0ae323dd0b907d275ccb53f834a0fa5136cb4b1cdfb35dd19ca67`  
		Last Modified: Wed, 19 Aug 2026 22:37:59 GMT  
		Size: 2.3 MB (2345558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:611cbd691f4a02ce61036add41c8f278c81647aa286a1b475e5a7077598ecc3b`  
		Last Modified: Wed, 19 Aug 2026 22:37:59 GMT  
		Size: 11.4 KB (11351 bytes)  
		MIME: application/vnd.in-toto+json
