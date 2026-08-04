## `sapmachine:25-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:d326ec13cf67c160f6204e638836796ccdf81b46066cd96d1a3974fe7932c7f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:d43237f95f6c3531b10a55df2418a9977978b167982b3a314d31a7c5449ba12f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88624754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03885f746a5f32193c150b737faf1aad5775f61062c6808f93e6e19c8992e7b`
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
# Tue, 04 Aug 2026 01:48:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:48:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc42dc550c4af2288cd8e495015bb1ae539c2de09915121bf63a05825f04926`  
		Last Modified: Tue, 04 Aug 2026 01:49:11 GMT  
		Size: 58.9 MB (58888237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cb751eae6ca10c7fb31c15b8ad3543812b5d2fc771a0e1012509505892953228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce5e121b3cf83c92ba579f6f9675184380d28171dc8c464d4ff8701783ecedf`

```dockerfile
```

-	Layers:
	-	`sha256:e64edbd504715936ae3592e01dca4c6d2ef59820a9bcfa1daa71515eeb9e130e`  
		Last Modified: Tue, 04 Aug 2026 01:49:09 GMT  
		Size: 2.3 MB (2301741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8875647459103b39c6a0c1c08bdb43f472fb20b8b9309eb630cb92c1f9b73324`  
		Last Modified: Tue, 04 Aug 2026 01:49:09 GMT  
		Size: 9.6 KB (9583 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:33eebff07fc8ec77da281a240ba59e48c3fbb22ef1af468980e9b6ce8b74a0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85429464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c7daa31474c193779de8a3ae1db09cab83523f0c4e612e6302638e041106cf`
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
# Tue, 04 Aug 2026 01:49:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0525b343fa7e9acfdc5fd651a81fd6a6cbfad24bff827ae3f06a0c23169936`  
		Last Modified: Tue, 04 Aug 2026 01:49:34 GMT  
		Size: 57.8 MB (57809432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:51a5a007c98a47ff16f50a787a7b979be0bd6c6a73f75c6f2dea19e90244f0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0823a10ece8b418d54cc7fbc220454cee01f09b33f857ce52e02745022f539c0`

```dockerfile
```

-	Layers:
	-	`sha256:6b39887a16611d0656205dfe53979b070602aa2a0af19b600dcaf0a63a201e43`  
		Last Modified: Tue, 04 Aug 2026 01:49:32 GMT  
		Size: 2.3 MB (2301434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd033b387e87489499c92b79e6a37cc24bd3bfa923b92f2cf5d40071419807eb`  
		Last Modified: Tue, 04 Aug 2026 01:49:32 GMT  
		Size: 9.7 KB (9712 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2631dc62a0124935505f529825aac770ee2e970b67b01b5b4a773e5c31e29b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92510692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cde319680389294ad7c5c0546db80e978da5a66bbbe6d42f4ea9c6971f6bd15`
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
# Tue, 04 Aug 2026 02:49:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:49:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:49:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735e74ce86f4b04bd7796f139e4f2ee6e23628b8491d8cd43be9fecf8388a373`  
		Last Modified: Tue, 04 Aug 2026 02:50:07 GMT  
		Size: 57.9 MB (57873026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:52829c40164ba502464c2a7b5683cee54620de06e1f4d0d2b98a2531f2aeeea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42015548a1d0f3d8698bbde473145c7775a630c6351258d58988161465b823d`

```dockerfile
```

-	Layers:
	-	`sha256:93847bb7530a5d25293952a2fb1766e30a6728d33356c81f3cd9d55aa7f8a8c2`  
		Last Modified: Tue, 04 Aug 2026 02:50:06 GMT  
		Size: 2.3 MB (2300565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e8dd8cb7939a1ae452a3796aa9209580c60d9f7ad0c187b32e14585afe2137b`  
		Last Modified: Tue, 04 Aug 2026 02:50:05 GMT  
		Size: 9.6 KB (9640 bytes)  
		MIME: application/vnd.in-toto+json
