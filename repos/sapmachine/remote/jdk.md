## `sapmachine:jdk`

```console
$ docker pull sapmachine@sha256:72adf4e2bd4ef6d1c46da68346879e89097d81bbd51eab602c0d00cc41c45075
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:70c0c5e9c18677a3496689d7eff5faa89b90660a69b9e19f0a5cec3edc6e7826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256112917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b676b6c210a2806318e3ed304976ddf9080c7ffdf075c2872ccf7aa419b2a17e`
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
# Thu, 02 Jul 2026 02:35:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:35:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c03d951e6d406ced055b384ab7f3e00d36d1673a5641b44bfb2f7f06dc5df7e`  
		Last Modified: Thu, 02 Jul 2026 02:35:54 GMT  
		Size: 226.4 MB (226377316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:01a1f38119e3eb7b924b0a0f351301da7e817201d03ae4d108eca87d0e53af3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b987a3963001e8325632dea844827540dcf35c6b82c4c11b40398acc1a65fe`

```dockerfile
```

-	Layers:
	-	`sha256:4171a32fd7e0e0c2b4fd8655fa37c48eab755b1e8621fbc5040e1c1ff281b1dd`  
		Last Modified: Thu, 02 Jul 2026 02:35:49 GMT  
		Size: 2.6 MB (2597214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d16c5b8c965ba9ba62cd56eb147a6e9b1f28b44f2166db885e6d2415a977dff1`  
		Last Modified: Thu, 02 Jul 2026 02:35:48 GMT  
		Size: 15.1 KB (15100 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a47ffd1745c362097d0416731e0b756bbfd4f21c859e4db22edd4f6f845b9ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253130150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ce718f53c538a7c98af0a80520db82263bce8c1a409df9a99f8175ab720f77`
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
# Thu, 02 Jul 2026 02:34:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:34:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:34:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc4301653ebe3620cebc89d46750d72e4babc07e8cb8daaa879f0d616e6358b`  
		Last Modified: Thu, 02 Jul 2026 02:35:15 GMT  
		Size: 224.2 MB (224245970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e882f17001917ef64959204da0bd6cf5a4c3d9a3da3e4216f621604cd9948c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2613363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ff3d83b073263c6c02248de67b802c288110a3c2ba04d5e98244382997bd9d`

```dockerfile
```

-	Layers:
	-	`sha256:051613add41e9e7865465cf5387cfa05fb4821706f2d7af4c20d739e9eb22123`  
		Last Modified: Thu, 02 Jul 2026 02:35:10 GMT  
		Size: 2.6 MB (2597919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b4edffe0d2a804503a3aa0091037a60aab50c92a5ef975cd329927d56bddb48`  
		Last Modified: Thu, 02 Jul 2026 02:35:10 GMT  
		Size: 15.4 KB (15444 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a4be464f6d9150df82c26282e4c8fab30c9cdcd8c4906cf7e7f0badf1499eb74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261954040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8e8384ea99ebbab8a12d3fd624ffd2f6418e30f24f41aa6fc03ead6b262693`
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
# Thu, 02 Jul 2026 03:21:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:21:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 03:21:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc848e9deb08b6420f7f6bbb9e6a22b24feb706754f968c94ce1c47ed60c2b99`  
		Last Modified: Thu, 02 Jul 2026 03:22:36 GMT  
		Size: 227.6 MB (227640564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:99ee0facc561f83821922753af1417078a0e7a00f7083afabb50938db8def22c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2609508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b19a3ad9f2b45edf38f18b79c1a2c5b091f89f03fbbe4c716ef1987d9adae5`

```dockerfile
```

-	Layers:
	-	`sha256:9168f3ae13ed7c221195530700cb19cb02696d7c06d732cf41bf920a4606b57b`  
		Last Modified: Thu, 02 Jul 2026 03:22:29 GMT  
		Size: 2.6 MB (2594244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a70319f56f494135ace4a4423a110facfb4f8749abbe8ed9d02bce8072a7610`  
		Last Modified: Thu, 02 Jul 2026 03:22:28 GMT  
		Size: 15.3 KB (15264 bytes)  
		MIME: application/vnd.in-toto+json
