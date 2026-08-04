## `sapmachine:lts-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:8c7a9624dc6597d704d11ed3b4841b9b998a0271b1b7623f2939da89a72891f4
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
$ docker pull sapmachine@sha256:df6bd471e2f77dd09b347e9228ad868182551e31f1290dae91cc46f0c1b87b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255279849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a88e883ba357d8c4d12b7e25c2716bcfbc03e4452ebec9c3bc7703089f538d`
-	Default Command: `["jshell"]`

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
# Tue, 04 Aug 2026 01:48:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:48:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ac54061e5d5081a8d28bb0c16787308e212a490b540da302f2ac55bbac81e2`  
		Last Modified: Tue, 04 Aug 2026 01:49:16 GMT  
		Size: 225.5 MB (225528740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5b9d980a41a4f240e4ab1a8891f37060cc835e084c6743a1ff26000c3707051d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab4e3ac2caaba7065d7b05835443f1d441afc1f12897ee4e8ebee2f3aca16c8`

```dockerfile
```

-	Layers:
	-	`sha256:3d7d9305ec6f8ea9feb613e8e4249ae7e25815e5621d33ae0d1efaede5373e51`  
		Last Modified: Tue, 04 Aug 2026 01:49:11 GMT  
		Size: 2.3 MB (2348687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef302e72afcfd82ffee828ab99ad34aff921b9b70d2d87c6f4daac24913e862`  
		Last Modified: Tue, 04 Aug 2026 01:49:12 GMT  
		Size: 11.3 KB (11265 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c220ac820a753d8659a449266593f30599510a8eef92be3f6f774de68108a663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249774804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe73f2fd1886fe84bbbda733c7c9675890c82e60b744360e981aab2dd68a33b7`
-	Default Command: `["jshell"]`

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
# Tue, 04 Aug 2026 01:49:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4efa00c676f9e77d1e7a2059b0513f40d1750c3eb5d5d2256ac64b0c9357212`  
		Last Modified: Tue, 04 Aug 2026 01:49:31 GMT  
		Size: 220.9 MB (220887986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cff88d711a6f5c526981b214b8f1fe97c84e0db74d0ba3bebb4e9c35dba34ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7d7e76753511a3f63dd5ea729e9efb7c51a5d6b86374f5b7bf73ea671ac85f`

```dockerfile
```

-	Layers:
	-	`sha256:9d5ba2f7113fed015de4ca64a2eea930466c95c6dbc5045825312797a1de4c65`  
		Last Modified: Tue, 04 Aug 2026 01:49:27 GMT  
		Size: 2.3 MB (2349227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cd68b096da03db403aa23ce2f32f1642cbd03adde00a5ff72eaa82ebc69a53d`  
		Last Modified: Tue, 04 Aug 2026 01:49:27 GMT  
		Size: 11.5 KB (11453 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0b9b151e70b8585064a8832b9bb9ecd82940d9b7943d44af4c8256a21209ef0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255513975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d547ac908d6558ec022c874efa58f643c2fe684975167c6416fc44e5098fc6a0`
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
# Wed, 22 Jul 2026 18:27:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:27:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:27:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff69794c90906fc25b0ec4ec67720562d4bf982250f6d382f151e9f188bb1c1d`  
		Last Modified: Wed, 22 Jul 2026 18:28:24 GMT  
		Size: 221.2 MB (221200499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a54e922f74f034cc0acde238eb8f66a56c20e769180349f4c230be5f93b85549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2356883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98f8a4b2fccdf96cc8e9d464e2950b8ac4563107efad3749a2e8f84edeb8cc6`

```dockerfile
```

-	Layers:
	-	`sha256:e8b30f329b1ba37d115dd54aa417eaa8cdb33c8801d2f44531b3e5aea7fd4188`  
		Last Modified: Wed, 22 Jul 2026 18:28:19 GMT  
		Size: 2.3 MB (2345532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68c8a50eec5a068941900bc31e797aa9cc57fd41cc0a70ef3d24430b8ff72b1b`  
		Last Modified: Wed, 22 Jul 2026 18:28:19 GMT  
		Size: 11.4 KB (11351 bytes)  
		MIME: application/vnd.in-toto+json
