## `sapmachine:17-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:a05402060bf7bd357728a3cdeada33396e4ffd6691cc582f770d7768c1b8b243
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:0b9a2d71042b07d579ab50c39d5b70d9578cadc031a431e61abd0f000bddf121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232440488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9997f8dea2e7565f39df145e3c45539f18eb461628eda6841413cab277547a8d`
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
# Tue, 04 Aug 2026 01:51:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:51:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:51:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4c603e5a155bd86a7ff4c113f7680e41ba378c4c4338bda5cfee0b9c5ac8b3`  
		Last Modified: Tue, 04 Aug 2026 01:51:26 GMT  
		Size: 202.7 MB (202703971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:eb08f36898caa2735b815da3b86c8e9206a9bba727803ef28e96e738984b47a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2383651909a0d56e964fcafa38dc8e6df654c93546a7ba1853fb624e61b59ea`

```dockerfile
```

-	Layers:
	-	`sha256:9be0d6cbfb5537e8645e39a5c9208cd8a38e98d833cdf908f0c8fb251565fda8`  
		Last Modified: Tue, 04 Aug 2026 01:51:22 GMT  
		Size: 2.4 MB (2377793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16f07e0d44c81c1433cbfdb432492b8bf54645171faf0d5f378eda7ddd4e757b`  
		Last Modified: Tue, 04 Aug 2026 01:51:22 GMT  
		Size: 8.9 KB (8890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6286591dbf1c7dee3724a3a548d96945faa960ca6f08c2452cabc0deeb7df48b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.1 MB (229079057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1d1d4d7f0d83ba97318fa75e7c21541841d6f601372973473d7c554f06ef6c`
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
# Tue, 04 Aug 2026 01:51:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:51:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 01:51:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d92a832875be0e524d67228c2788f2bee7796e814097e7fb805bb219a51694d`  
		Last Modified: Tue, 04 Aug 2026 01:51:33 GMT  
		Size: 201.5 MB (201459025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8bc3ebbf647986fa2acedb9b65fdb0636a839edbc26180e50f6929b00654ee05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f1c457c67de0570cd9f266ece9d0eb91efd223f1d9db1b431fa80da80bbd0a`

```dockerfile
```

-	Layers:
	-	`sha256:76d2c5c555c324b2f5fc7731f0a975f2f40db2b91a3c03461670b5755e5641c7`  
		Last Modified: Tue, 04 Aug 2026 01:51:29 GMT  
		Size: 2.4 MB (2377465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e58d5fe43e2f6bdfb53954ceca1142e4351680c827a5c398604b4cdf9bf3588d`  
		Last Modified: Tue, 04 Aug 2026 01:51:29 GMT  
		Size: 9.0 KB (8994 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:39fb13edab7e765dc015975b3949078179e7f2b2093ef1973242d4fc1d1bd9c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236102702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14482ee9e65bfb8513e928c9e44f1d8a768da8eee316326e3469a6afa09502ac`
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
# Tue, 04 Aug 2026 03:07:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:07:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 03:07:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421a2088d1da29d6cbdaf69f1f6cf592ee9823d9e1270937694d1310e0501b13`  
		Last Modified: Tue, 04 Aug 2026 03:08:09 GMT  
		Size: 201.5 MB (201465036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc19f85a267954c4350505dab4be4e390c0419906d7e187b905271727891bc70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbc22965b42a90ece78e7112121400ebd5f1d0b74526270cb3173f6c1f44c3a`

```dockerfile
```

-	Layers:
	-	`sha256:73fcb5ffbee09e17dbcec332c3620b0d305493173b943fb7de66f6d70574c08a`  
		Last Modified: Tue, 04 Aug 2026 03:08:05 GMT  
		Size: 2.4 MB (2375289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f0b08eedefa0bf29fbb609b7e5aa372649435e99af4f9c4910850195c894179`  
		Last Modified: Tue, 04 Aug 2026 03:08:04 GMT  
		Size: 8.9 KB (8933 bytes)  
		MIME: application/vnd.in-toto+json
