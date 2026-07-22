## `sapmachine:21-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:9b7cf86ae5cf23c89e25e2849a2ccd52ac2b5b943d808056b4a881829b224e71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:b689b72a6693cdaeecdd0b825d803b9ad4373ef0a6d5eedba0932c69f2e5fa13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249343856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2de75d73ff2a9fb51e8e8f029bc2d2753529ea961918b006d1b6b23d2f6202`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:25:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:25:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51479105d205ecb0197b9487e903921aa7c1cb75572c8fcade2c4c6e00a9ca2e`  
		Last Modified: Wed, 22 Jul 2026 18:25:46 GMT  
		Size: 219.6 MB (219604975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:af3d81b18de7354e57787ab8ce30769463a39501709233728d223d8526221c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ae25e2ba88d0a706fe183bbcfd733728cd00776ea0220aa7e4d1ac63325f67`

```dockerfile
```

-	Layers:
	-	`sha256:bb5a6836001ed3a1f9fb573567df005b85af4d32535ba110321079b8421e52fa`  
		Last Modified: Wed, 22 Jul 2026 18:25:41 GMT  
		Size: 2.6 MB (2632772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e71a07fa8d63c5beb6ea451c55a2ab45c7a6a96d159ec49249b35c32553c32`  
		Last Modified: Wed, 22 Jul 2026 18:25:41 GMT  
		Size: 10.1 KB (10095 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:24b5a0b5fbb86e66cf82ba9beee08e9d0308a96a5c9417535a83713f4fe8dabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245382079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd57c67747dcf1613d95d245ad102e75c461c2e192ee5abffdcd7e7131b29e5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:23:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:23:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1c483129f896e38300b11eb1bd5cba48799108f54269f650e2cc02aaa626d8`  
		Last Modified: Wed, 22 Jul 2026 18:23:51 GMT  
		Size: 217.8 MB (217768895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:43d077c664dc5243412e8b8d9102295a103eab909977d132a6e95cb03b461017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e708bb089272e2b9ddd7fb17a6d09785c2925af299c802b71a49d4b8da5d42a3`

```dockerfile
```

-	Layers:
	-	`sha256:7a9ba99e139583ced523192d63ef90f3921416599af895e124fb5d0c510dbf5e`  
		Last Modified: Wed, 22 Jul 2026 18:23:46 GMT  
		Size: 2.6 MB (2632502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8826c5042eeb55a8fcccb9af6216bd15d204497bc3a12ba6ad71be1574c0410c`  
		Last Modified: Wed, 22 Jul 2026 18:23:46 GMT  
		Size: 10.2 KB (10247 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:58cdebb2dc42b16e59fe06d050a6365daccc0eca5bf8137b5506a21169a1fbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254177257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabd719e090a717e55e5a45d33af3e79ebd7cf2198a074d65f6ece934ab23e8e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:36:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:36:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:36:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7fd990274e702ddf1084312fbe17b8eae67001f10f8f0d8917237318e0ed45`  
		Last Modified: Wed, 22 Jul 2026 18:37:27 GMT  
		Size: 219.5 MB (219535389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:edbfa5196a2c9de8e46a709be4296ab1b1397608158d1dfac456da0efd2b125d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2640545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8390a53f03836247e7e6908dee779ebd897d409d3f4a0ef8eaf2337fe961f82`

```dockerfile
```

-	Layers:
	-	`sha256:92d7ad926c5262dbd6f241c71e688a9da339344e4fd5b621d8583432b4384a68`  
		Last Modified: Wed, 22 Jul 2026 18:37:22 GMT  
		Size: 2.6 MB (2630382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b9714a52c68a498cd2faa7067a59983610968419f13292d08ef72d46f4b34ba`  
		Last Modified: Wed, 22 Jul 2026 18:37:22 GMT  
		Size: 10.2 KB (10163 bytes)  
		MIME: application/vnd.in-toto+json
