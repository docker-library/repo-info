## `sapmachine:17-jdk-headless`

```console
$ docker pull sapmachine@sha256:43684a80fddde2f97d6970bee61900567735aa790b362244c79f39689d7ae6f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:358f1dd9b21aee705e58622d13c6be6d114a10f102f98cce87867e8521a69241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232861541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbf400583c3b7777568dc23fc3dd24cc70a823b81b73a16bee5f422cfce3b85`
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
# Wed, 22 Jul 2026 18:25:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:25:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560efed89a6fe75cae33cf3ad5af9e5ab59781300aa3db61b9efe797dd59dff3`  
		Last Modified: Wed, 22 Jul 2026 18:26:17 GMT  
		Size: 203.1 MB (203125940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4a26578c3f91cb25d8259f09d3eb28f840f7b57c2b0aae4bf39c628cd007424b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548abf53864be1ee3defcfb3acc3c2993ba488fff631542e74f7be107193dfdf`

```dockerfile
```

-	Layers:
	-	`sha256:2a1cb3f64115f0a52c17320bf3143b61b18783527320738806c88737bcc5a820`  
		Last Modified: Wed, 22 Jul 2026 18:26:12 GMT  
		Size: 2.4 MB (2356538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f0799736bfcd3c26621888f2620147f0d5d534184e88c2611357c73a95567c`  
		Last Modified: Wed, 22 Jul 2026 18:26:12 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9310094ea8ed1b336942f47d41ada0e3e3ea50df84957460be34fa1c40b7d41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230781688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280ea477609a897e7c4e8ea950231f53e691fa51554d664d62d8c96e2c9f1fbf`
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
# Wed, 22 Jul 2026 18:23:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:23:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a36eb603ed220cb7369bed5795037208ae79544e66034c0325a64a0850a9803`  
		Last Modified: Wed, 22 Jul 2026 18:23:50 GMT  
		Size: 201.9 MB (201897508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f2368a23336fc3bfba268d0a2de240e069e95bfcf4dcdc9c1077197e4638e8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df47f66dec617ff8734bc0c23f6f5034b5d8eed6c3287c7f462d37048e2093c1`

```dockerfile
```

-	Layers:
	-	`sha256:acc3f089a76c697b4bb1ea04d90e936f496201e84c3a867781ede23b0a51e402`  
		Last Modified: Wed, 22 Jul 2026 18:23:44 GMT  
		Size: 2.4 MB (2357045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26af6265ab2db57ed806746cd9c9f27d13fa21aee9bbae8d558a31fe54f4a46a`  
		Last Modified: Wed, 22 Jul 2026 18:23:44 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ecc682db4e38c2a49593e525d0c5d44d65c91bb5a647b30f140a1dfc72f243d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236274720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c6fd60ceb24643456322e988137ad394bb0e52a8d4426e1011e6dd1be1df28`
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
# Wed, 22 Jul 2026 18:39:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:39:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:39:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527dd117b2b0bbf1a45c28cac964f1fa073bf84a2d010f560243b422ba82466e`  
		Last Modified: Wed, 22 Jul 2026 18:40:05 GMT  
		Size: 202.0 MB (201961244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:abeda9e76c867159653aa9217ed541b5fb50416792dd5e078c3dbf78c14d7695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2364311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ecbde6091424c51da2d67d7da21ffd28c143128dc1691c92685d71b81e8f13`

```dockerfile
```

-	Layers:
	-	`sha256:c88b355beee4092d39b886be110b03499445218510118c295fa4161f540aac8d`  
		Last Modified: Wed, 22 Jul 2026 18:40:00 GMT  
		Size: 2.4 MB (2354009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56ed74d32bfb60b83334ae35e744cfd08d8c927cf6967120166bc2dd6bb22cc9`  
		Last Modified: Wed, 22 Jul 2026 18:40:00 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json
