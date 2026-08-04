## `sapmachine:lts-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:c3a4e4ab9d07b69c0d4b2df80513238951cc69c131218e9efc7ffaf94bf7beae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:85eb6a3f1feab6e4e36e772ae3d249e7d683d37a990b70570e6e0c2a2932dbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252449177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60342d4aeec3a2078541e430283cd3677c27bd6ea9db14283adc7e011b3e8491`
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
# Tue, 04 Aug 2026 01:49:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b263a8b666ea5e6ab8f3b328d616ccc9511ae0d857788b1687f9ac37b69e8d6a`  
		Last Modified: Tue, 04 Aug 2026 01:49:45 GMT  
		Size: 222.7 MB (222712660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:eada29daa0954f42ad2bb97d650e1f999dc0ff7d3d1cb63328538779130a8f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab6aa3bb0c777ce11698e65e7fe2fbd675f02c5ecf85e9f8467d1c3bd4b2c2d`

```dockerfile
```

-	Layers:
	-	`sha256:ebf86b6a8cb57c9906143b7757fa6837d20514cfbe9268a806d1e3d1af3e073f`  
		Last Modified: Tue, 04 Aug 2026 01:49:41 GMT  
		Size: 2.4 MB (2369580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a466f0efe90e7c1dc0d4b857db0ebf7d1cb40437b5e11e153414e479c7f93a5`  
		Last Modified: Tue, 04 Aug 2026 01:49:41 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:28901f6c8bc191231e83214784d82d0dcb47320257f8d04fb3092e385b094374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248062821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:577a5b7bc6387dd663f7d9718457316bb3d825f60b60ae3c7db4c525058b75d1`
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
# Tue, 04 Aug 2026 01:49:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e32a7592a1033bdfe0516ce7d3a60ab88f446a39e16b972e722c095753b1b0`  
		Last Modified: Tue, 04 Aug 2026 01:49:48 GMT  
		Size: 220.4 MB (220442789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e91c9c244cd5bf0878268d8e0dd232602c2d93b22f217066b44e4830b988c04d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2378984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc20ca202ccdc72ad20d23ae965400059aea4130ab0cf1356d959ddb28c8d187`

```dockerfile
```

-	Layers:
	-	`sha256:86558278aa5954f9ebe915fef9483ec1582dea27d396a5391e35303f342b1cea`  
		Last Modified: Tue, 04 Aug 2026 01:49:44 GMT  
		Size: 2.4 MB (2369273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b86bebc16b9d2046a74d98d76c47cc44ff780b7a90416bfba47f44d787af0135`  
		Last Modified: Tue, 04 Aug 2026 01:49:44 GMT  
		Size: 9.7 KB (9711 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d8e8a6c227a6de992e66af340650811b6262d54e77a961a0602d5ce1dfd45d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255357343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d24e0f4def91354f5e1006d73afe6121f7bdc9984a57dfab9cf5d5cc05acef`
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
# Wed, 22 Jul 2026 18:30:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:30:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:30:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9268c7b4a5b306071d49c38c3d9cd713ab9ab700202713760a40c924a29e8081`  
		Last Modified: Wed, 22 Jul 2026 18:31:15 GMT  
		Size: 220.7 MB (220715475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:17a70205dc33b3a42cca5509c13433bc269d3035e5b1ca039b1ef6c05f1de100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1396e834fa64d69d6ffabd3e0768a552f051e6aba3bb163e1f6ddce4b5b3c932`

```dockerfile
```

-	Layers:
	-	`sha256:b0367ad25ac96b789ca3edd13c0cbd224a0d01e62068938b058b4c304fcad42e`  
		Last Modified: Wed, 22 Jul 2026 18:31:10 GMT  
		Size: 2.4 MB (2366470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a4792b436f5164afdcd2cf7e473b9efdee968993591235c36b41fb522dfa80`  
		Last Modified: Wed, 22 Jul 2026 18:31:09 GMT  
		Size: 9.6 KB (9641 bytes)  
		MIME: application/vnd.in-toto+json
