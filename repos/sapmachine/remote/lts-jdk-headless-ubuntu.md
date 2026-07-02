## `sapmachine:lts-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:f0357ff7f7c9274000798f18753ba668a7d3a54aa4666239e53d99c0d123ab3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:f4d4ba5b87a12ed86c9740d158cc678b2365dae07b565081890f528dbee6c367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250732787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6e349dd07f8148526f157b7eda27bf3533177455a6f568ca92f4cd24d01cf9`
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
# Thu, 02 Jul 2026 02:37:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fe87380505e3fb815643fbf1250bda5c24e3a2b8f26eb7c9079d0b35b0d003`  
		Last Modified: Thu, 02 Jul 2026 02:37:28 GMT  
		Size: 221.0 MB (220997186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d79ca2f2a7b2e4c3fcc60593eaae3f88bf1dcee2830b3331d5f337b34d1144de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9145470cadeea4041bf12f9e6e0efdb9666f8925b5f0086f86c11651136ef231`

```dockerfile
```

-	Layers:
	-	`sha256:4efbf3dbf7dee1d992a782e39610e52e46ceff4286340a364f0a25846e7ce8b8`  
		Last Modified: Thu, 02 Jul 2026 02:37:23 GMT  
		Size: 2.3 MB (2349925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef1063bc56ec388d56e333877fa88bd08bab493c6226b520da65006c1a5d9f3`  
		Last Modified: Thu, 02 Jul 2026 02:37:23 GMT  
		Size: 11.3 KB (11265 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2016d1337cdaafd2f6427c419501d44c2b1f7dffb8b81553e555b0a6fc7f9512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247678410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402f4a936aa7954811befc717134efc11ce1b344e2d721b4bc33674da6eb2604`
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
# Thu, 02 Jul 2026 02:36:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d39d4a4aeb0eed690777ff5e3f8b9e3b8e6b2069763ae87232256b5c9bc975`  
		Last Modified: Thu, 02 Jul 2026 02:36:39 GMT  
		Size: 218.8 MB (218794230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e91a33742c84ee4769aa271b0a3bd59cf6248384dad5c38e9820db579f0934c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5648fda4af8d426cfda4a7ff4406298e87becec5a00c78be4350af6139899f`

```dockerfile
```

-	Layers:
	-	`sha256:02b86af3b5efd822e08dd2442243f599e117a9ddadb9b9e43fa42f418c3668d1`  
		Last Modified: Thu, 02 Jul 2026 02:36:35 GMT  
		Size: 2.4 MB (2350465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bced207610bb820db34db3d3c860fd8cbfac1b97d1244dca97ec715b353257eb`  
		Last Modified: Thu, 02 Jul 2026 02:36:35 GMT  
		Size: 11.5 KB (11452 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bc98cd53363bd22287d90db63477419b9cb5ee758a8c3d0dff82c414b923502b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255825544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002d20243b44f354a90d039d367af3deef2d190baa281e58d3136e87c2fbb65c`
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
# Thu, 02 Jul 2026 03:29:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:29:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:29:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae15c31e1a7edacf8c118afffe021bbc0f61950ba069859de20cf05ff8579e9a`  
		Last Modified: Thu, 02 Jul 2026 03:30:27 GMT  
		Size: 221.5 MB (221512068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3cf4665c48bf06084c154170e475208fbfcd6881f7e57f722ecc05a36e6f8a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cff9b964500dd167d89d6eea0ce139fc7840e876ca362fb202d021a533b01b`

```dockerfile
```

-	Layers:
	-	`sha256:139a52635c2f42fe6ed678312a6af50397207804ad3fd7099721bcf24509855d`  
		Last Modified: Thu, 02 Jul 2026 03:30:21 GMT  
		Size: 2.3 MB (2346796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdb74ee478edfe821739d2b9ac511306c375a1b6739eabe125ed700db5780e54`  
		Last Modified: Thu, 02 Jul 2026 03:30:21 GMT  
		Size: 11.4 KB (11351 bytes)  
		MIME: application/vnd.in-toto+json
