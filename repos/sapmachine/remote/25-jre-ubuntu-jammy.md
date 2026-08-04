## `sapmachine:25-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:6059d17c9b216220ec982cad74635296bbb7002f765537ad0aa08a2cbdd9144d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:6d4c5a4d71d29efcec6bdb34370c508599ae0ce43c3a0ea3be8895b351455706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90215864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa2baad8c83a3e26c4a13edfdc29857000bb24ca9a43c630bcd23de95bdd65e`
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
# Tue, 04 Aug 2026 01:49:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8f13d6d8cbf20cb979a03c39f28abbeb0040f4d391e0e2dd391e3e5fae8760`  
		Last Modified: Tue, 04 Aug 2026 01:49:31 GMT  
		Size: 60.5 MB (60479347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7e5e70b7bb64fdffefe3a346da2e69cbdd5423e080a84ca466d5fe56639c1509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4def5124567dba5b24cffe5958d6b8dc0c256f696491e7b17e11319c13f708fc`

```dockerfile
```

-	Layers:
	-	`sha256:d245404fc2be103ce6491f42e63c0da54a6d98e7a1f462cceb312bab10399c8d`  
		Last Modified: Tue, 04 Aug 2026 01:49:32 GMT  
		Size: 2.6 MB (2553731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d0b1493bd129e8a6253486581ba78be3982a06b22133030192b055a2674fa85`  
		Last Modified: Tue, 04 Aug 2026 01:49:29 GMT  
		Size: 9.4 KB (9437 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:db05034cd2044f45409b2a0e971c5d56f1b7db032928f67efd00951ea5848362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87013623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3bbb23f87f80ee6d0810a1db85a703a04d3bf8d5c3a806946ae7dbdb5531ff2`
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
# Tue, 04 Aug 2026 01:49:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db28fc65ca0f1eecd1cecdc7e77962626fe118ab49d47153f172406f2fa99b0`  
		Last Modified: Tue, 04 Aug 2026 01:49:41 GMT  
		Size: 59.4 MB (59393591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d61013e83f2f206dd9bef48453118dc0ad6fbe87a5e22672dec089b009db96a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171d79d47a0080aa053df888a792c2d8e378ada91b5c2cf84533b7153024a730`

```dockerfile
```

-	Layers:
	-	`sha256:d99a90aa605d54825c1b255b31859b3dc639b95008a844ddaf2e1643e520048a`  
		Last Modified: Tue, 04 Aug 2026 01:49:40 GMT  
		Size: 2.6 MB (2553434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:405c4214e92f3d30e03e80693e8373108e1043627f0dc55fc798c5b96f20666c`  
		Last Modified: Tue, 04 Aug 2026 01:49:40 GMT  
		Size: 9.6 KB (9565 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a351bea6ea0bcbc805b1a3d6ed798127088848f99df1fcc1f1dd337d678c848e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94268394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9867ea53cf38cdbfedb7f72e4d7348c2ab1f88d0a48a86bf04fe07bb4fea81`
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
# Wed, 22 Jul 2026 18:29:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:29:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:29:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5690bbd3d34cc4d9e9e4be010900221fbca585525b0f241e62ac168001ecbe75`  
		Last Modified: Wed, 22 Jul 2026 18:29:52 GMT  
		Size: 59.6 MB (59626526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8064682ad826cd84dbb7e8eec65d94327dd44d03cd9002585caa80a4cfa2a424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79075aa2b4e6b97cabe046b7d04fc645b4b9f22e36b7f27dd4729f2c10395770`

```dockerfile
```

-	Layers:
	-	`sha256:2804e7134eb5766cbacb1a83f2af8a632f3ca63b40e41016aab60fab9a7db561`  
		Last Modified: Wed, 22 Jul 2026 18:29:50 GMT  
		Size: 2.6 MB (2552645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:023db2491d9954b190638bae60a23f345723f3d2d49ddf38dba20c109dda6793`  
		Last Modified: Wed, 22 Jul 2026 18:29:50 GMT  
		Size: 9.5 KB (9493 bytes)  
		MIME: application/vnd.in-toto+json
