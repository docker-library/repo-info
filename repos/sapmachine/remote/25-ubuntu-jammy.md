## `sapmachine:25-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:73af1b356fd51fa83de5e90f41fd8c55e8cdc9e7e4b59f78ac282b2568fdbf16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:866adad9fe051c88fbd83f80d89e2b9bd67f3e3a8a1a2c1cbfdad4d0ed038437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254379481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d6ff7ed11376653383bfa206795ea601750e379a07ec2ac1d3776e2807d2f2`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d255e9fee5697be4820d3aa65aceb178cebb57cc0dc4a2751633b40491c579e`  
		Last Modified: Tue, 18 Aug 2026 01:21:17 GMT  
		Size: 224.6 MB (224642538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f39bca59d27179177464bc42f54c5c6dec6fcd3eace610c5da37046148b2a7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78859dd29ac8ef6f378b0e4a874e60a595bd8521d7ed7826aa06cd684af1c646`

```dockerfile
```

-	Layers:
	-	`sha256:27385da2f18d784a3628c7144c98670333c3823f049dc383f2b7a66c98e6b332`  
		Last Modified: Tue, 18 Aug 2026 01:21:13 GMT  
		Size: 2.6 MB (2623534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f83e054b33613149fd8dede4ffb9428947eaaf64a5f6972aaaf408627df881d`  
		Last Modified: Tue, 18 Aug 2026 01:21:12 GMT  
		Size: 11.4 KB (11402 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4bbc7b8d8a716f37a5c6ef7fa5c4f62932af29ada0d4c0ad0455fc9a96e66efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (250010136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7457148881d4f11b92429f63f02c80bac3d82a0ed24ebc73bf8e1c1ead962a07`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208fba436f783a52423c9c640ece974e6c0a167e153fbd63c4894b10b809ecfe`  
		Last Modified: Tue, 18 Aug 2026 01:21:05 GMT  
		Size: 222.4 MB (222389683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:893c9bd3be1d964949eb31a92ded65444076ba73cad2547b8b33708793b8fcf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff84f103b92cfe8da8804623ba01489d413f0d3b7b114aed1c467ae6c5f8088`

```dockerfile
```

-	Layers:
	-	`sha256:f04b8c2ab636ae1a4832c46a6f63112bae47e4c9943b139201e24bbb7b1655ea`  
		Last Modified: Tue, 18 Aug 2026 01:21:00 GMT  
		Size: 2.6 MB (2623309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a40106f498f44f656b1ee9fcb24b0df528a7d83a87c5274a2fd8c87314d2ba36`  
		Last Modified: Tue, 18 Aug 2026 01:21:00 GMT  
		Size: 11.6 KB (11601 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4d25fe050569f4e7e3f5e6ed9298714cd68587902a3691ba787249ee653d47b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257466230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbe2ecf61f851b48e49f57910ad2200128ba2d313542b38f862e4519a6c5fda`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:35:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:35:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:35:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43829f2abbe4faeb5d0fb7f657c108ada167cfdac309f923fc54c6bcd42affa`  
		Last Modified: Tue, 18 Aug 2026 01:36:44 GMT  
		Size: 222.8 MB (222828085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c3fa3076859e7dc0b3df3f080c3bd6cba4dcd7563e890ab09b2c4e1fbd5aca1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3e193371b500e4ee327f0ae0238c27e593137e0230f686e87d7f6accb6bfe3`

```dockerfile
```

-	Layers:
	-	`sha256:411cb78ad5c863e882349b1783a6a964a90f3c0751a7991a34139ce7b05b5f5a`  
		Last Modified: Tue, 18 Aug 2026 01:36:40 GMT  
		Size: 2.6 MB (2620550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1f6666667f859194df56906c729fe2bd7036ceb67a22dab02f9fee8465255f3`  
		Last Modified: Tue, 18 Aug 2026 01:36:40 GMT  
		Size: 11.5 KB (11493 bytes)  
		MIME: application/vnd.in-toto+json
