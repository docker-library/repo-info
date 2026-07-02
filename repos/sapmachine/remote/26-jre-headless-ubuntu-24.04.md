## `sapmachine:26-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:fbf9e4f274c6a24ca0b84676c51217975db19c7e81d98c6cce22ef18c0985e7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:c3cc3435da21e0bbba13dad7dfc1485d067b8f83221ac1d9c69a722a1a5d152b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87560786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56cbee164700cee04cb3928f16a9dda059d10ded012a61e88bb2bc56a7ab53f7`
-	Default Command: `["bash"]`

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
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:36:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e002960e60c5d86a8c7060863b33888d0a212d6aba18e973b2b28d6dd931cd3`  
		Last Modified: Thu, 02 Jul 2026 02:36:35 GMT  
		Size: 57.8 MB (57825185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f689fe6a499932b77f325b22fc45a426eb837361e499931543760bad222779d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a985628c5fba3d2821babf75c9da0967bdf29734216bb49cf575bca089d3812`

```dockerfile
```

-	Layers:
	-	`sha256:0cb24d1ca8bea41702c981dbd76bce5e1666730748308e3274d992f25555fda6`  
		Last Modified: Thu, 02 Jul 2026 02:36:34 GMT  
		Size: 2.3 MB (2280482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2220ec53b6b94c34bb15ad200d264bebdb2089e7211fef1ccd009d0dc4a8e69`  
		Last Modified: Thu, 02 Jul 2026 02:36:33 GMT  
		Size: 11.6 KB (11558 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6e68805ce73ae297dccf0e8160c14664e0d02be436a14f724d0f05ff9d4f6d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85715274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29868f5da6e5231b4be17c46ddbb965920eccb281211e79c7d5d8e46519b1501`
-	Default Command: `["bash"]`

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
# Thu, 02 Jul 2026 02:35:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:35:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1fe8a308cad94a3511c69f9aa8d66d0788784472e159a015e3c372019b525d1`  
		Last Modified: Thu, 02 Jul 2026 02:35:47 GMT  
		Size: 56.8 MB (56831094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c39ecd3865bdcbfe5d84133f8473faa6cd85368df636aec9c416bf4438869b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17fbac3ad72f21e0f3f57a6d697f9c7708a53c155343be0cb33e08ad9c66ab2`

```dockerfile
```

-	Layers:
	-	`sha256:1258833b607f1efc1a552f20a991a1ea8d53d00635496de7b91467e4dd277e37`  
		Last Modified: Thu, 02 Jul 2026 02:35:46 GMT  
		Size: 2.3 MB (2281034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a9a185270b75102b1c91b6cbee78a49088b5f85c0b5581d18125297a111bcaa`  
		Last Modified: Thu, 02 Jul 2026 02:35:45 GMT  
		Size: 11.8 KB (11757 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2a89167361b30cda346787dd63dab8d47206409fe1a3b21ae3cb883f132b6d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93105195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94061df41154bab5c6305fd3f74e52739b312d4dcbd639d6f0374ece569850f0`
-	Default Command: `["bash"]`

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
# Thu, 02 Jul 2026 03:23:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:23:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 03:23:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73f83d4fa34d392be63377120da491d5c548f16b59f607dd86acb14a80cfeee`  
		Last Modified: Thu, 02 Jul 2026 03:24:13 GMT  
		Size: 58.8 MB (58791719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:73ab27b4ac7b084162eb2358a8cc2285fc08dfe6e6c37702ff3d2859a379a2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08f9295f4bceb9ea9d203e5e71ff90b84f58979a4f4ada170feddb891b224ca`

```dockerfile
```

-	Layers:
	-	`sha256:99a6a1bf655d37a6e3d2691df01ce6761314090aad87bbadbc7f7dc0a8988d43`  
		Last Modified: Thu, 02 Jul 2026 03:24:12 GMT  
		Size: 2.3 MB (2279293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:199fbb0ef623b193d29d01ee347f7088fc5f95c2fa889927178973748f382bff`  
		Last Modified: Thu, 02 Jul 2026 03:24:11 GMT  
		Size: 11.7 KB (11650 bytes)  
		MIME: application/vnd.in-toto+json
