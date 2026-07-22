## `sapmachine:21-jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:6cc5a890a9f1028d09a7b0a0191a21e3841ff095669efa0f5b8f43b68783a0e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:610d4137f8ad6ec63a60b19b85c60c1b971f3a4bd1bd1dd9a17851293c05b2c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249716967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181b13cddc37718a3a5855841557a95093027e54d1c71224f88014e29e4d5c7b`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:25:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:25:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d9a0182b5d88eb430c7495296be3343ded3ed982de8c75a5c191bdc149d046`  
		Last Modified: Wed, 22 Jul 2026 18:25:28 GMT  
		Size: 220.0 MB (219981366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7b7af810a58330f93beb9d921e820cd2306f370e58af501adc934774e940cab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba244a67ca6f19493aaac74f383520001013e8cba9bd8be986215e2a450e4ed`

```dockerfile
```

-	Layers:
	-	`sha256:7acdd165ece8633ed2fefd92caa40e18d3ec283282c2f896d3f03326240f3b8e`  
		Last Modified: Wed, 22 Jul 2026 18:25:24 GMT  
		Size: 2.6 MB (2607799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfb99c37a75072d7960172d9d68571c77693776abb93a7f7110482b8acb5d41a`  
		Last Modified: Wed, 22 Jul 2026 18:25:23 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8c6a63704051e03c511fb1907d18e423da13b751bfb235149922545fb3050d8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247086202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918b37c3bc475030a08484d585d732c982ca3bec526cd8cee057431da866a8b3`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:23:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:23:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8243bb8f03f207353ccf85f50a19027a43af9d2059caf8106f942bb3f9cd4436`  
		Last Modified: Wed, 22 Jul 2026 18:23:26 GMT  
		Size: 218.2 MB (218202022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6ac506a39f0fdbb96dee9e33ce9bb6d9024639c39ad4d0336e2eae8aac643a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97d3d9cdaa0b7b67c5e995b1611523e19e77d4963ad50b9d9a0110ad90d434f`

```dockerfile
```

-	Layers:
	-	`sha256:75d015a7ccf6c0d167e3441107b532a185f2301cc9906d948968d2e3b6a4d73c`  
		Last Modified: Wed, 22 Jul 2026 18:23:21 GMT  
		Size: 2.6 MB (2608411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01a865309abdf9e59bf8ff594c65e4f276b1ae8f5e14e14648420935f34cfaf7`  
		Last Modified: Wed, 22 Jul 2026 18:23:21 GMT  
		Size: 12.9 KB (12854 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:8bda498112865fea343fd075f638d07492dfe165545a9929be7563277e20ebc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254317502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10685d76d4fe52321b951ce0693a71ca877d746d80015d8bf1b3b450db4c6c94`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:33:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:33:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:33:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be621348d6ef16e4cd04dfd87b0c0589245c6727e726836ba71a300b3086a2e7`  
		Last Modified: Wed, 22 Jul 2026 18:34:22 GMT  
		Size: 220.0 MB (220004026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2e01fbb7f023276b7a0b8ad4febcf37a9115ec8b6cf7c4c449bd213b605dd912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd18f01c5cb55b86911c08b2e8d1a7a7f8272047239aaf6da2b977dc7f609971`

```dockerfile
```

-	Layers:
	-	`sha256:3dc1196074347b838177b6bd54723c26766a2a63cdc3c445c9e8e5e0b4064176`  
		Last Modified: Wed, 22 Jul 2026 18:34:17 GMT  
		Size: 2.6 MB (2605399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bedd0299b4d58f2dd513b270b265278a8791d9870124dd8a5cf853ecb6fa91f1`  
		Last Modified: Wed, 22 Jul 2026 18:34:17 GMT  
		Size: 12.7 KB (12723 bytes)  
		MIME: application/vnd.in-toto+json
