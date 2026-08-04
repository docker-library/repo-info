## `sapmachine:lts-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:e4781bc19dde7aedc1d4a80c6411d19bc504b32104b3613b8dc0462cbfd9e7e9
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
