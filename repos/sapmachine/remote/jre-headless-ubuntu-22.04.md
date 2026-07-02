## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:ae3726474d9a806ff7a758cd985eeb74db0c077df8ed0da54f4e0a0fc12613c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:29b8d279f1da835154ae643e2e3ebe816e5c68cb66dda5c2799828a43657b1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87137089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfb7d5d18cd5dc8c6b4d09dcbdb6019e4d9ff2a09f04ccf32b81475e3202867`
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
# Thu, 02 Jul 2026 02:36:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:36:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbe708b5c61e4fd1733d4929919117f94d75d627ea0f64bf5c919b85d82b50c`  
		Last Modified: Thu, 02 Jul 2026 02:36:53 GMT  
		Size: 57.4 MB (57398208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cd1357584b20e21cc2ca0fb0afa64b01d001f3a93046f6c177d31399bceaeb7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc061a69ed6cbe574f88b00f8a7112721a4dd2cb5c020dee27067a05338df3a6`

```dockerfile
```

-	Layers:
	-	`sha256:c7451edf229277d62a9215f6b6cf22ecad5d3aeeee5656f2d9f055934a72e8f4`  
		Last Modified: Thu, 02 Jul 2026 02:36:51 GMT  
		Size: 2.3 MB (2301091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b94ff13919abd8c3710c5e0ed33321a976ec358d3f2245106334410dff391f9e`  
		Last Modified: Thu, 02 Jul 2026 02:36:51 GMT  
		Size: 9.6 KB (9568 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1a6cbd7972a53d3d993e34d8c03f9ab135a54853d7b9385b31b72f0d0a0a7c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83994473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a5f688b36d8150d7f05b5305705a20b6e336f1e01374fcc0dfa775257a2ade`
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
# Thu, 02 Jul 2026 02:35:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:35:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e611f50d6313e5f6b529ae84995844b27491247cf704234caa0921f895e16749`  
		Last Modified: Thu, 02 Jul 2026 02:36:09 GMT  
		Size: 56.4 MB (56381289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:daaa994497e44023363108a02a8d592f6a28490316e965fe70e927d102447308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1caefc5b8da47a212f177e8abdef88f7e7dcc12e4693f5ffb0a6fda462f3b155`

```dockerfile
```

-	Layers:
	-	`sha256:dba19e6e6c74ca67ac657382a51c9eee98624f9d63637fcd166501e912f710e5`  
		Last Modified: Thu, 02 Jul 2026 02:36:07 GMT  
		Size: 2.3 MB (2300784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b43be948f677b5ff8febbfb3a5fd3fdaff3eb30a0a0e30a9171a946df59b4e6`  
		Last Modified: Thu, 02 Jul 2026 02:36:07 GMT  
		Size: 9.7 KB (9696 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3a2a37477306d8d0d704f458762686ff94d2535d3292765467bdee47651d74d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92935965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890e556dc21fcb071d9b907ec7853972c921d0b870d78da877fe58f9fb8f7f0`
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
# Thu, 02 Jul 2026 03:28:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:28:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 03:28:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec82c29e31545fae7169e0884b919857f3bbb69415e757fc058cff08fce71bf6`  
		Last Modified: Thu, 02 Jul 2026 03:28:50 GMT  
		Size: 58.3 MB (58294097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a575c6db51fb50dae9b29495d2bc602ff4f5c471a13cfc0272a6d1472975033b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2017782764bef98519f862f8e27692ae6ffd558d08621cc05a8527bb9a426dc6`

```dockerfile
```

-	Layers:
	-	`sha256:4ba75fe5cabfc7c221727b1c3dc81e1a1904d9c5e075b3f477b70150e3dc41bc`  
		Last Modified: Thu, 02 Jul 2026 03:28:48 GMT  
		Size: 2.3 MB (2299915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6dd4768fccc6d54092b0538bc5497213b5a92d6425af572c9f74cff3e965d9a`  
		Last Modified: Thu, 02 Jul 2026 03:28:47 GMT  
		Size: 9.6 KB (9624 bytes)  
		MIME: application/vnd.in-toto+json
