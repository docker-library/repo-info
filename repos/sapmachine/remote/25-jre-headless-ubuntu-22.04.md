## `sapmachine:25-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:225660e53c3ddd469235084c8b09275b02f17fec26af31e200d8219e2d19204b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:20e6c6cf8e2c539b5bc0d1aceb5629dd2b501f8890d12dfe22b20d857ed6597f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86205518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61f71142d693135b1d462faf4755eeef3ffd3d86996596fa5b646c830984ab3`
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
# Thu, 02 Jul 2026 02:37:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732caf1646f5d60f5297331850433d47d8feffbe323421b7ac03a045e03c6697`  
		Last Modified: Thu, 02 Jul 2026 02:37:39 GMT  
		Size: 56.5 MB (56466637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4a95a6c6ce170ee59a2c0cbee98b99210ff7d0887aa9d4f3dc97dc09bc2b5dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed83c972b022600c98e3ed1499a1e3a0762ae168dad06655a8fbcc5a8a9766c5`

```dockerfile
```

-	Layers:
	-	`sha256:17d4af4457c41e86c3f4c6a258299ee6d6d55e8aff09e07ed3c69a53319f4c08`  
		Last Modified: Thu, 02 Jul 2026 02:37:37 GMT  
		Size: 2.3 MB (2303005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be0ff1a10945efbb801b7d960cc9285e2ea447d533413fcfbd94cc38765b10de`  
		Last Modified: Thu, 02 Jul 2026 02:37:37 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:cf39564c7dfeca45ab32692b685df9035f51f56f82710e8253b3be41d1af3fe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83020143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78c4012ac307d6af94f0e42a154e873d2b5f22a6296153b8160bd0834e4ab42`
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
# Thu, 02 Jul 2026 02:36:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48edbc11359d906c53b3e7874d598c6f8d220f0d5fdacb52f23ceddf8c391f1`  
		Last Modified: Thu, 02 Jul 2026 02:36:49 GMT  
		Size: 55.4 MB (55406959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:76bb67aec6a89e26e67541a76367d2da263f0c6d917ebed8ef4aa55e6e661460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1b1d96cd890cf77edbef27581bfa37cf605897e2593201a0fa47a1b3d4fc83`

```dockerfile
```

-	Layers:
	-	`sha256:b6fa63932dc3b86268358c1ed579bba2567fa2ecb42b62c28bcd9ed3703dd549`  
		Last Modified: Thu, 02 Jul 2026 02:36:47 GMT  
		Size: 2.3 MB (2302698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fb17b3e05e0ebe485f7b2fe9b3b2bb5175c747a8885eefe56200d272c9645a8`  
		Last Modified: Thu, 02 Jul 2026 02:36:47 GMT  
		Size: 9.7 KB (9712 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e9d98c2a315498507cbf767c878ceccf61f27642e03713180e717f676e6baeb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91719530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528cb04aa0c6528bf6359942620fe2633b326fbedec43a743dd83e39690cfb6a`
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
# Thu, 02 Jul 2026 03:34:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:34:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:34:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5016cf4aff7c917ef0bd64e313ea4dc30612b0a2a50cd8e12e78d057575206`  
		Last Modified: Thu, 02 Jul 2026 03:34:42 GMT  
		Size: 57.1 MB (57077662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:eba9ef0cda9e4c24b33ce52c6973e56ced85cbfd0c1b4ae9b3758000fed01378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4472a8d3ffb0091a9a1d5030122568ad5f2a8160eea19bfbe0beac3942d8bc24`

```dockerfile
```

-	Layers:
	-	`sha256:95ec4a474602ed79d78329dc543dd4fa0d2c9a068f09b900fb6af2d9113b0c7b`  
		Last Modified: Thu, 02 Jul 2026 03:34:40 GMT  
		Size: 2.3 MB (2301829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5171de28a7a52bbd5ed0e31d42f592830504ea9ecc7231008ecff6463868aa8e`  
		Last Modified: Thu, 02 Jul 2026 03:34:40 GMT  
		Size: 9.6 KB (9640 bytes)  
		MIME: application/vnd.in-toto+json
