## `sapmachine:25-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:2911265fd6e2b62c15025774654eda3523e9f1ba357c650d87b2ce14c18804cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:5a5a8f9eef0ec7a87949f450378d8f84d0b78f802f36750760004cfe09271399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251536681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7f43472da8475738ae7c85328e2e62c1dd269f206c7be89ee04b3f8d5de09e`
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
# Thu, 02 Jul 2026 02:37:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2cc1b01d08fc43503ba849d561e5709b45c67e338425eac44427254f363de27`  
		Last Modified: Thu, 02 Jul 2026 02:37:39 GMT  
		Size: 221.8 MB (221797800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2b28f6aa84d56be695f61242af2d4b834775503c8a397c3a8dca36d6d6d56fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c390d5d991843dc86ec308f11a3870b802fea966cbd9a0b06802c4917880331`

```dockerfile
```

-	Layers:
	-	`sha256:f5a91691e83b1f1b0572e5f69df3c3ca3facfe3a88ffb9e19c6a772f65b5c058`  
		Last Modified: Thu, 02 Jul 2026 02:37:34 GMT  
		Size: 2.6 MB (2623534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c90a2f7c5b1bb27e065f0e7057e911fad758b9bed68025e77f1edd4b6818092a`  
		Last Modified: Thu, 02 Jul 2026 02:37:33 GMT  
		Size: 11.4 KB (11402 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:fea8fe59b93cb19c1eeab4c7f19358dc1a20605a4ffa63b8b5df28edc7a73c02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247168308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f727c22f05c1aa313b0751427a5c3ae3e6fafbf1ac45cfe8a289ea9443539f`
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
# Thu, 02 Jul 2026 02:36:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97d1af7f3067a92be9636b30d1af7720a963ca90d4093deca97800a30943042`  
		Last Modified: Thu, 02 Jul 2026 02:36:49 GMT  
		Size: 219.6 MB (219555124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fa9aa10ba6bea104c05d57d38d269194fa30e36e8f0db338567d7f4d78e54782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0bb6706f65e29e025be4722bc1cae8802365276fd799096f417b4b6ddd412be`

```dockerfile
```

-	Layers:
	-	`sha256:d2c62b1bdef285c277d4140d293e9030bd113904f4398efacb1624d5da8566d6`  
		Last Modified: Thu, 02 Jul 2026 02:36:45 GMT  
		Size: 2.6 MB (2623309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcf0afe74a7c92b73cf2363c80c3a7e931d5934be20ca20f90ac2ce9f49f84a8`  
		Last Modified: Thu, 02 Jul 2026 02:36:45 GMT  
		Size: 11.6 KB (11602 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:98cb8d556c61672eef0878baa10a1a515774593986eea931b00088367150a38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257066457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f644348e5ae6c22465fca24419dca869af1bc46aeb1931a32a7f362fc510b71`
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
# Thu, 02 Jul 2026 03:31:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:31:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:31:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291c6cacf93463876c8e0fd067217c53d7aea7ebf9ccf4663e175e0bf07ea4ce`  
		Last Modified: Thu, 02 Jul 2026 03:32:40 GMT  
		Size: 222.4 MB (222424589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:766d963ccf4def24b1483218b4c82994d6d2bb085be58fe40fc5c07a86f3eaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3153dd0bbaeb4d48190336ecf717a9574df162eb79d4b265819c174a21d5cb10`

```dockerfile
```

-	Layers:
	-	`sha256:dfd3a149c314c48921c67b598f011f344d8e1852ed0982aeb741c3a3dcfe408b`  
		Last Modified: Thu, 02 Jul 2026 03:32:34 GMT  
		Size: 2.6 MB (2620550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d636a797a2331d44abe2cc1dd8c9524475509d9c7b244bca950e602ba171b853`  
		Last Modified: Thu, 02 Jul 2026 03:32:34 GMT  
		Size: 11.5 KB (11494 bytes)  
		MIME: application/vnd.in-toto+json
