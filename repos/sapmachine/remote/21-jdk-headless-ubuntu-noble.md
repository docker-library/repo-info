## `sapmachine:21-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:8e0dc94fcac28a1029581b2d71775cea533908fbed90165c15c9a2e4ec9eeb56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:18337edc9f7b9df8f9c95cd5d093d2d9ed34d3239e51dde3a92ddf98212a67dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247810474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84a0d47f16b8468e13c3fdb4e4dafd0fccc0f944f305873d258c1e3765cbec4`
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
# Tue, 18 Aug 2026 19:29:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580b61038691aee7433c472dcbd691318ac953f486699078804064aaeaebd40e`  
		Last Modified: Tue, 18 Aug 2026 19:29:41 GMT  
		Size: 218.1 MB (218057667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5eb6e9cc2622bce47e86f90aba7a8e3983db8cc8f3d6d8b4e27a01206e647581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8fe2ab85ba68693c3e0e3fe29a22f9c49e8328ba802fb889dd9f11464c815e`

```dockerfile
```

-	Layers:
	-	`sha256:0d1bf9326df0279c5fc6f70acce6cee2203ce359bf6d155fc130a46fd836cbba`  
		Last Modified: Tue, 18 Aug 2026 19:29:36 GMT  
		Size: 2.4 MB (2358183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97c9e2fdc040e7f6bc4d025c99e46dc208d91c1dac6de6d9dbde0577e3047518`  
		Last Modified: Tue, 18 Aug 2026 19:29:36 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:06fd62e483fe41f16ceb8d8f7f5c1bb06d44bb9c134a0482cf4d35e2a08e8b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245138640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cad1ed05adc7d9747f2c0f528c8b73b15aa22750cca37eb73ea9baddda67943`
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
# Tue, 18 Aug 2026 19:29:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b18ec9119a5ebbf96ebb3e03f0cfcdeefa117cfd7c659968660b72066fcee3c`  
		Last Modified: Tue, 18 Aug 2026 19:30:03 GMT  
		Size: 216.3 MB (216251405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4d5929081bf67970ffef7f5303971f368c393ec023a8e9f287309ccf3f6da37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2effadf6559549abce7cede78fede5eaa2350dc246b9b1d7278667afc794c776`

```dockerfile
```

-	Layers:
	-	`sha256:0fc0fba664067faff8c14cdbc058f79f9dd9032ff9dd3bc961dad32aff86a302`  
		Last Modified: Tue, 18 Aug 2026 19:29:58 GMT  
		Size: 2.4 MB (2358690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed2fe2b97cfa77d500a92db0cc73b4f3d3e6e8fdb935dfd2ae67ea5dadaa0083`  
		Last Modified: Tue, 18 Aug 2026 19:29:57 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3150a872d034ec2d90ca4b0d98650efb730b5d8ddf5d5bfd2faf80042d14de6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252084176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d960324c6ee344eef978733fe8039fc23877a559d72d42aced9a6968f1e07228`
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
# Wed, 19 Aug 2026 22:40:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:40:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 19 Aug 2026 22:40:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7411e65136b7f40b6c33a8ddcfbc00a41042e9db0e5430f1a1f4fe8379e7dd`  
		Last Modified: Wed, 19 Aug 2026 22:41:00 GMT  
		Size: 217.8 MB (217772981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:38bfe5dc85b51e266cc6b4d114d94c733d97a637737e10dae808dc9d5c409f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2365956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be90acb5d64c078f188c396ec1db6189719904dd283393855f3d59a632739c8d`

```dockerfile
```

-	Layers:
	-	`sha256:e7d765ce033ed5a54b86aba1a799418eb6faee182cdb93c159d7a6ccdba1bd12`  
		Last Modified: Wed, 19 Aug 2026 22:40:56 GMT  
		Size: 2.4 MB (2355654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccb9ea1ec49b2c64799f9d6f172c61710b007d4c2438b4e262329adb62264887`  
		Last Modified: Wed, 19 Aug 2026 22:40:55 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json
