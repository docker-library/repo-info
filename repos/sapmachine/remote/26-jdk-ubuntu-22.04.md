## `sapmachine:26-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:8586c595d0eaa0485d65e0562ae4a4e7d00f065eddd06dde66dcfc585d152a45
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:14728aa051c9b897b5ede86fe1db6969b46ba71bc3cd1dda1d38901e9d09c5c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170601944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd56cbc680c24be598f0ef4ff51123e71090aa186e68e2dd76448d1c5ffe252a`
-	Default Command: `["jshell"]`

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
# Tue, 04 Aug 2026 01:48:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f5c72ddb271db83806df341c215e32214b7f1b23f38e83ee1c48a9f733815c`  
		Last Modified: Tue, 04 Aug 2026 01:49:10 GMT  
		Size: 140.9 MB (140865427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:154d6e90a4199f354dcce82c5842f8bf350076a6dcea47e31f19b275a85402d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2828b6643bbea896de0e38b7398402ca4a36815e765a577ff154cec4fcef4a`

```dockerfile
```

-	Layers:
	-	`sha256:13ab0425ad01d72d6b238c3b54624bd017913be5655c2f9101ceda4440786d6e`  
		Last Modified: Tue, 04 Aug 2026 01:49:07 GMT  
		Size: 2.6 MB (2577041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef88d35534d2150a45b5f353799821c69d53e10537bf50228f3994c84045f6b`  
		Last Modified: Tue, 04 Aug 2026 01:49:07 GMT  
		Size: 11.4 KB (11369 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bda18b44364d8f2832c40ff4eb11630639b9c8e99ad8bf78f154f4fa7fb40650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167491434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c480000aa113ef737231c4e68f321abcb47f43b5ef9137a047d39fd700e095a6`
-	Default Command: `["jshell"]`

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
# Tue, 04 Aug 2026 01:48:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ec5199efc446ecc557c09fbcaee754add2176d54b132fb5fb014a9d4f6314`  
		Last Modified: Tue, 04 Aug 2026 01:48:47 GMT  
		Size: 139.9 MB (139871402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d0d67785a5a846dd3aaf1b2093e9b19564e24a049acd0c2c7415546ab2668029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9bafd364021e9846ec81c76f8de9ec91d39a4f9cf61355548c0257f724e4b2`

```dockerfile
```

-	Layers:
	-	`sha256:6a0447a37c3ce9c0becf079babe7a91e1378c57319ebdc8c3f769162f57bce1b`  
		Last Modified: Tue, 04 Aug 2026 01:48:44 GMT  
		Size: 2.6 MB (2576816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d62d25e3f03e36ba2038757c0e9d87d775c6c1199ee439fe6f4ad1481bf5c00`  
		Last Modified: Tue, 04 Aug 2026 01:48:44 GMT  
		Size: 11.6 KB (11569 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:400b9cd80d4a6f3cbbdff16bddddd63d22f952b69ee2915d74437d6667bed36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174545229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8503004030fc6a4203355d2652213ea0baf29f3c3056b0c761cc6b61e68e3d`
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
# Wed, 22 Jul 2026 18:25:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:25:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01acac1f7c3fd8fcfdb9894de03f6e11a3ec90855aa134b240e1df33cc2ed1d4`  
		Last Modified: Wed, 22 Jul 2026 18:25:44 GMT  
		Size: 139.9 MB (139903361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:741aae4e908f133be87dfa25829a04400ca2428121f07848aca80679f78e3c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6235de358c34880f731186d89e30192abe51816207e991e4ab4df2a1cb149e`

```dockerfile
```

-	Layers:
	-	`sha256:59f4e094ad0d113608e09d5272c017e6bb36e613b35e934515c09ed56fadbf05`  
		Last Modified: Wed, 22 Jul 2026 18:25:41 GMT  
		Size: 2.6 MB (2575991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:642cbe05b1131026ad161a73ced459d70d3711cb416dc934aa52dc91f61fbf44`  
		Last Modified: Wed, 22 Jul 2026 18:25:41 GMT  
		Size: 11.5 KB (11462 bytes)  
		MIME: application/vnd.in-toto+json
