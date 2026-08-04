## `sapmachine:jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:a4c72e922adbaa20aa504b66c5b23e4e91b596f0c96062cce141041e5b09c940
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:99067fab003702a995ecfb159e0f9c34461466a812dcb62a6d361a40ff99ed0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169070997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e4737269a65793aca65ea343cd8fb945a9b739c25310d55ae1e5cf7caf0f2a`
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
# Tue, 04 Aug 2026 01:48:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ab1920257a010b8607c86e439fb6b7f3d3e884416d71e0bf7c95fe69f89373`  
		Last Modified: Tue, 04 Aug 2026 01:48:54 GMT  
		Size: 139.3 MB (139334480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:391ef529f2de904f8a3a182d0ff0d75ecbde8b4b8d5ef97f59476e24adf0d09a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc3e3c81b43db9d9165c99e8a7e6a4ef270216e3472ef2cc404ca499e8feab6`

```dockerfile
```

-	Layers:
	-	`sha256:263edf7862fe2b2a63b3eba7ec60332e2c3cac4a47e23e7f49e2672533590f73`  
		Last Modified: Tue, 04 Aug 2026 01:48:51 GMT  
		Size: 2.3 MB (2323103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de6d9ace09ed72d27112b4a84bb471592865ac4b7e8790db534d97ddf749bc0`  
		Last Modified: Tue, 04 Aug 2026 01:48:51 GMT  
		Size: 9.6 KB (9568 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2d836dea1a182b4877efd176890c651fd997a16b66b9f6f4619203931b2197e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165964137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8541940e039fb66a1b04e1d2b5002faeac0c934fca2ad4bc180dc600d6f06b46`
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
# Tue, 04 Aug 2026 01:48:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf30d74be197585ab4aae99a76272b55805a49903d7f65148a43051e6deb97da`  
		Last Modified: Tue, 04 Aug 2026 01:48:55 GMT  
		Size: 138.3 MB (138344105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8030e8ea352cbfadd1a2d2ed29fa71e83c9dcc51d6b168fd4767dec60073ee20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b884cc42bcbaef1114a199a9c308b991e653fbd9db1b06fa1727358b4d4b891`

```dockerfile
```

-	Layers:
	-	`sha256:61e9ab699280ae4d9cf1c630b29d16d971e02b9156a94d6e8c17fd42ac59cbe1`  
		Last Modified: Tue, 04 Aug 2026 01:48:52 GMT  
		Size: 2.3 MB (2322796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:603999b79864780ea08b10bfa3e9a121c9c402a2fce7a2449309c8dbd44b4ad7`  
		Last Modified: Tue, 04 Aug 2026 01:48:52 GMT  
		Size: 9.7 KB (9697 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bdaea99310ccb1d94bffbf722d406c171b5a6e28c394941e8df904e02a236796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172802226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638a26872d7c9583341cab23feacdee044be7f2a865a3a69bc98459d8fe556b2`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:44:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:44:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 02:44:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d49bd3c4e0452c75c1e977b35326b8747d96cd898cacbd2d7bdbe55bb935c56`  
		Last Modified: Tue, 04 Aug 2026 02:44:43 GMT  
		Size: 138.2 MB (138164560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5f410cfe1d5837a45907983e9fa8703307c3ba4d83ca901368463c7d2e7fa15b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df93ba1f15ad7816cf5d41d20ceb8f21b13c969030b21b5e93ceb6ea693c92`

```dockerfile
```

-	Layers:
	-	`sha256:0526ff8542444e2d4dea002c5334f30a24c29c74251154c22e499235125dc5d5`  
		Last Modified: Tue, 04 Aug 2026 02:44:40 GMT  
		Size: 2.3 MB (2321927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a7c22284b77e4983fc157b1657f5eface02b4854fcc406b04321bb0ca791b31`  
		Last Modified: Tue, 04 Aug 2026 02:44:40 GMT  
		Size: 9.6 KB (9624 bytes)  
		MIME: application/vnd.in-toto+json
