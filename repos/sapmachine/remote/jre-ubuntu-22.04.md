## `sapmachine:jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:16bd7d8e864619c5590261ccc6708e64fd59b1053ce515fb47606ec1d3d665a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:343b829123ee6cb589c11357cd5dc2b560c587b8ba28c2e216db68bfef803ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91156174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db732a1f5926437d129c2a8b0fbb2ef8128bf8d85713f6541bf54f654f9346c`
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
# Tue, 04 Aug 2026 01:48:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695dde900b3799366391340af524d1ec705308d1553f391ab53576a88edf6bb3`  
		Last Modified: Tue, 04 Aug 2026 01:48:38 GMT  
		Size: 61.4 MB (61419657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:81104a621e50c2b8ef83de739a6f2e13c9a4ef19ca959f61a38c645a43856e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e6a6e057de2a8155371a54f2ffe1b569d7e9c64b93240e49898ed644cc06f7`

```dockerfile
```

-	Layers:
	-	`sha256:06214701e8ea0568eb6c8c30693389649cc7f69f4be6ab9e93455e8144102cc2`  
		Last Modified: Tue, 04 Aug 2026 01:48:36 GMT  
		Size: 2.6 MB (2551817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbfbdd3bfb14296ca29abda35348ae6a6b443534f5696cf4d67151492abe1052`  
		Last Modified: Tue, 04 Aug 2026 01:48:36 GMT  
		Size: 9.4 KB (9421 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9421cf352539745a3294f37aa38e83477d44d04e843ffdf1e699b506584775aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88009513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11aef26429e2d16d25e38167df52866795c61005bcab6c0dd4c0d1e26c68cc49`
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
# Tue, 04 Aug 2026 01:48:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3993ed0f5854ecda5d518eeb5888adde2b7cd5c7e96454c2dbdfe1509f703602`  
		Last Modified: Tue, 04 Aug 2026 01:48:45 GMT  
		Size: 60.4 MB (60389481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f180baa0e7e5a5c8fa59941079785f3eeeb0faf949cf6400c82ab2470550ac12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fce27d770c775e9fdf23f8f5551aeaad6c677850fb750848f5228dbf27b6aac`

```dockerfile
```

-	Layers:
	-	`sha256:df99caa2f48f679d56be20213b4a3e864d5bb4b64df84fb5b14983c16cdd15d2`  
		Last Modified: Tue, 04 Aug 2026 01:48:44 GMT  
		Size: 2.6 MB (2551520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a709d27397c863701fb382fbbff0b3e7b48257b411fb09debde3331087ac9a7`  
		Last Modified: Tue, 04 Aug 2026 01:48:44 GMT  
		Size: 9.5 KB (9549 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4d671b9e6f174a62ff651be8af8816f9e5922fa5f9245cb40c76b640e464fe6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95587258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7557735ad5829bbb329143444a5dcf82cefedfb1cb4a9ff50d52e91d0ea56a`
-	Default Command: `["bash"]`

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
# Tue, 04 Aug 2026 02:42:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:42:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 02:42:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96dbceee6fdde587feb739313563ac0210dac2570be73d28c980c1fa3140e440`  
		Last Modified: Tue, 04 Aug 2026 02:43:09 GMT  
		Size: 60.9 MB (60949592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:79b1e018055a381d2e56309e8073e4802ed9b89dc4be05001b0fe1deb2a1539d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38727dc2593730c8bfae4020dd4fc56acf937d13f542af0e6b04bbfbda250305`

```dockerfile
```

-	Layers:
	-	`sha256:28d1035e7a99fe581b3572281e05fd6a24b5173a507486799b73d9d9a4a2f4c0`  
		Last Modified: Tue, 04 Aug 2026 02:43:07 GMT  
		Size: 2.6 MB (2550731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:781f02f015de79d31e2237b168d78a6ccc49db060445e9f009fdf6e249d6a7f3`  
		Last Modified: Tue, 04 Aug 2026 02:43:07 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
