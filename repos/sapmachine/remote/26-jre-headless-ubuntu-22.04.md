## `sapmachine:26-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:0ade09c505ec1611c996f57dfb40623594f103c69f4e4ef9b6b8169b462e6ab3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:ffd18320929a5f29c0b5c67cf6d8109c7694ac53ecce7a48805da75350c5cb14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89627557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab84886390883f7ceb9110ccc426a69da3b29b8ab69203d0d74a64989a3fb2c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e5fe88fb2c67496f5e67e4afec6491b70754f512c8ebe32286c9c22f18bd5a`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 59.9 MB (59891040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:03a1d5a82f3ac743dbdfcd09d8c9eb456f230cd79f70372e2d12b61fd936b51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d187e0854829201954a6461923325215263afef4e30b55c626f13d0637e9f6ed`

```dockerfile
```

-	Layers:
	-	`sha256:25f1ff3d1e5197fe054aad3a66ab5b39478477500905287429e4e0ef03a70283`  
		Last Modified: Tue, 04 Aug 2026 01:48:11 GMT  
		Size: 2.3 MB (2299827 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509e06fac39d048b169a7e6a873c076407b34f6a4777f9ffdd9fed13ff217bf3`  
		Last Modified: Tue, 04 Aug 2026 01:48:10 GMT  
		Size: 9.6 KB (9567 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:96bd25a76af16eab3ff90f6b73a9645308a877d6b155cf1b134a8d5fcf8526b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86479121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6a7132fa3855df66b8f59b53bf86160d6585993f82fe55f2700900a5082602`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b6e2e9b67225557ee017685a619be6072a22fd001472bfa321773f76bce993`  
		Last Modified: Tue, 04 Aug 2026 01:48:37 GMT  
		Size: 58.9 MB (58859089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2ee881ab35e46d5d3bcb6503dd0d098b9d1d09a3b6320a8cbfc93baad71b147d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea97b80f9acb554a8cb06449b4e8dbd078fe575c66c2589426ddefd6b85c225`

```dockerfile
```

-	Layers:
	-	`sha256:ba2c43b03c522de0c06f2a54e61cccaa16ea58b218a9446f37ca516f1bbd23e9`  
		Last Modified: Tue, 04 Aug 2026 01:48:35 GMT  
		Size: 2.3 MB (2299520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d8f8d420f1e4a9a7e9f38605b170305c0cfa91a9f4e68f0333daf4851b685f6`  
		Last Modified: Tue, 04 Aug 2026 01:48:35 GMT  
		Size: 9.7 KB (9696 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5ca4cf7a22b51cf9e9107ed88f827e6ab7d0f676bbfc0a92a45d0edc441b38ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93848126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30186ac2f05c0dceee43c4981baa667b28766f43aa50be90eb79b144a096b51`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:23:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:23:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b5c0dd54e95d17658f62e18046f332b2c6ade0a23de3fa36a4bfb0003285b4`  
		Last Modified: Wed, 22 Jul 2026 18:24:06 GMT  
		Size: 59.2 MB (59206258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d5f2b5bfcdab856d20a6119432d8bb88fbf643515b3c7704056290a2c733436c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834f41410ec8f5c21c1bbaa8636d2929b2da35ceefc8996b5c367c38353786c9`

```dockerfile
```

-	Layers:
	-	`sha256:e590f6aceac38a77c7841594ba79a2298088c0f5757c707f086eda528fdaf7ac`  
		Last Modified: Wed, 22 Jul 2026 18:24:04 GMT  
		Size: 2.3 MB (2298651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b99ff71fec3332dbf0f2d6570873670538ccf0980d5c6452d66d391f2c3de44b`  
		Last Modified: Wed, 22 Jul 2026 18:24:04 GMT  
		Size: 9.6 KB (9624 bytes)  
		MIME: application/vnd.in-toto+json
