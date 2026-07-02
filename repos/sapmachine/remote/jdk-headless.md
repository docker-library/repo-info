## `sapmachine:jdk-headless`

```console
$ docker pull sapmachine@sha256:b31ba32c36498c01f2a09d73165e923ff2da644f022ffa41585d29e098ae7f89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:bf6bfa48a115ad7e36466ac7e5687210574135f69e2b8755c605579f12068b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254927999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255d8803b6bb45dc9d38552a804e2f918128aaf34aa04d5f7d546e45fb1cdbf5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:36:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:36:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b459ca4634500f420b1ab59cbdce79a999f0d0996f1282acf33bc42eb9eb64`  
		Last Modified: Thu, 02 Jul 2026 02:36:45 GMT  
		Size: 225.2 MB (225192398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b0cc687f02c7f851bb6433623e31997e606efe1eac53bb56520a3e8d9419e46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3296093d7e8e206c2adce31dda3bce877803bdf1dae3b0be1f02509f394c6d78`

```dockerfile
```

-	Layers:
	-	`sha256:61ee59a628dd1bccaab47ff0b6066879ac58655475ff133ec0fbc91989d00422`  
		Last Modified: Thu, 02 Jul 2026 02:36:40 GMT  
		Size: 2.3 MB (2347686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ef01d26cd1baf71bb3f8fa47b6b33b2e49b983be23d4ad4b2219a7426fcd78`  
		Last Modified: Thu, 02 Jul 2026 02:36:40 GMT  
		Size: 11.6 KB (11559 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3e81b6ea6a4fc317533a84b56f8196f08cf7d3afbffa984f4899bb1fc12ad420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251937615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c433fd7180eed5201dacea472dec214ba0a6c9b0bcf19b76e8db52a27b0dfaff`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:35:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:35:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a78c1c62f749cd6f319b9e9b9167e98f3d522b260a7b817baa0ebb482e09f4b`  
		Last Modified: Thu, 02 Jul 2026 02:35:50 GMT  
		Size: 223.1 MB (223053435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d02442d14a8a732f176fe69146ba32e3e37ca6c01dbb69ea2ece547a49403989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24316068a5e8309d9f01d991766a60b02246aeac33fc6868736a7c693cc8d8e`

```dockerfile
```

-	Layers:
	-	`sha256:fef690046b02f7023ee168e9d37627022622adf07c5f1f17110c3af36f46d523`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 2.3 MB (2348238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65946b4bba664bab0c451825153f620dee0ec5c38a09838224cc1242a992056c`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:55483ec21288187fe70b3c0b1a85cf9cbcab94760d8f6e244284abe33d6c35b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.6 MB (260575121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebb9c5d4df7e80d779f0b510debaeee51661660edbcea86419152e58d989c35`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:21:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:21:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 03:21:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501ae82737ceb593336f2936c39207ec9894b28009422a0ab6600ecd8bd716a7`  
		Last Modified: Thu, 02 Jul 2026 03:22:35 GMT  
		Size: 226.3 MB (226261645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3ebbc5302dada286dfc49fb528fc4d324540d971cc1d9f35d475e0b09f48e925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2356214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98312d7a44a262dd20c52a985f27239fc8ec82162aef5b532bd23f88c7ca792`

```dockerfile
```

-	Layers:
	-	`sha256:db8b8df560e407e0b5c15fd74bf7e6f93b1afa3b014905a8962e19adc559b61f`  
		Last Modified: Thu, 02 Jul 2026 03:22:28 GMT  
		Size: 2.3 MB (2344563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5535fd4ce9f6a4d20b37c44b5b64de33f0c18e5c5346d8e76a1f5263ff85356a`  
		Last Modified: Thu, 02 Jul 2026 03:22:27 GMT  
		Size: 11.7 KB (11651 bytes)  
		MIME: application/vnd.in-toto+json
