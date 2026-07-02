## `sapmachine:17-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:d432e238ef3bce72ca5f0257db7ee3268ec75b0d19f0df1eb068a19610919a11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:1724c7f2d6d757db5b4c103b6cc4544e167e89adb3d45d698b6942b811b4969c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83061523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a752f51edb0c9079019fdbd419ba826c4cbc569e76fb6ce04117b7900ad538c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:38:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:38:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7cdeb1419f2f1d563eb3bca62907f9918b5924ba52c5c14ac67080b971bd80`  
		Last Modified: Thu, 02 Jul 2026 02:39:11 GMT  
		Size: 53.3 MB (53322642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4d749b1310973511f5252be12c2a52cadaea7f631355bbcaba3ad51c3117d610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0934de67ab3e44161a05e46f93cecd034c91da0e1ce75bace0ad18f15b7afd0`

```dockerfile
```

-	Layers:
	-	`sha256:893dee16ed59aff1d1da556757ffb1c725564521890fee93d07c3cd1fa2d4f08`  
		Last Modified: Thu, 02 Jul 2026 02:39:09 GMT  
		Size: 2.3 MB (2296156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7165b4eb37aa40466a297d8a5ab122bc92a2e89b55ba4ddb87cca73bcb82c0c`  
		Last Modified: Thu, 02 Jul 2026 02:39:09 GMT  
		Size: 8.9 KB (8884 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:283832deef142f6dbf083b8560e9bcb150ed8543e40538e13fd29cd120097b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80334746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa09ef9678c36ffbc48f8973e9ad591b47f75aefdbb4364429cf3ab9e62760fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:38:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:38:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca43c81e73f5f17fe5331f4e05cde309a1a685fc33081a3daf834968b3bb435`  
		Last Modified: Thu, 02 Jul 2026 02:38:25 GMT  
		Size: 52.7 MB (52721562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:66bb102ca7afde4d4ff9cada9adfe0829dd5ec41f552d642ff173288e49a7806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f159a8cb6f1d4b4cd5b6419597a70dedc0c1626ed69cec3e67faec181b4d09b`

```dockerfile
```

-	Layers:
	-	`sha256:14d62352de81495a0fa025e2b5e0c2e13c0810e84749c5ef32937f9298d66833`  
		Last Modified: Thu, 02 Jul 2026 02:38:23 GMT  
		Size: 2.3 MB (2295828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e4df382c75737bd03f15517883d7a5863531eec929c00d850670f51b3ffaa4b`  
		Last Modified: Thu, 02 Jul 2026 02:38:23 GMT  
		Size: 9.0 KB (8988 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b04d0a5e67df8d52579165fbd594e3e62b1c2c44c461d6d03352019795e825c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88994628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bfa3fa0faf5a5e23c9b882272f54d63fa03f8e67ce134732d09fd91d525e78f`
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
# Thu, 02 Jul 2026 03:47:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:47:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 03:47:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98692c81c9889d2189dbbfa093d248d822ad0a0bf4f1322058281d2da9f4aa46`  
		Last Modified: Thu, 02 Jul 2026 03:48:05 GMT  
		Size: 54.4 MB (54352760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ae29f1854b6b33a2267c6419ce99dd7d0ae09fe25f8bf2c1d3acf3172d487cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2554a69075541969d6866b69dff794d4302febdec19b1706e4c56defa5a0b98b`

```dockerfile
```

-	Layers:
	-	`sha256:86b35766f9d85ae12442a9540bd0793d6f9459332f7fc0b4c504e8045d6ec179`  
		Last Modified: Thu, 02 Jul 2026 03:48:03 GMT  
		Size: 2.3 MB (2295598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7f48d73ed3227f414f47e5ca149580df388fd8fe0c9ed6f77eaaad1e42e42f`  
		Last Modified: Thu, 02 Jul 2026 03:48:02 GMT  
		Size: 8.9 KB (8927 bytes)  
		MIME: application/vnd.in-toto+json
