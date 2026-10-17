## `sapmachine:25-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:ea6d12f23bd6ab05b5485a5667f8d2687e562bf75201a0f6103f97983029252d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:6342637555008c743d59e56574e6df0d6e59e7f74187b1824542437862ccf0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89129238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3857b58cd592d521d5d574cadc46e717a76670ab0dd1c4474c00b7ecda1c5c2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:38:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:38:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4d273ef734a8d5f8db415b62700a0bf75a9fc6a009cb41323a8d3ffce8b5bb`  
		Last Modified: Sat, 17 Oct 2026 00:39:12 GMT  
		Size: 59.4 MB (59363480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:793fba27047a23aa4689a1f663177a87a879ea6094bdef32977f8a973e653707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f8a5e701f102fcc465add086ee4c307a076ca3ea21d96132ed41d264a86729`

```dockerfile
```

-	Layers:
	-	`sha256:bfb9af7dff8b6c3bc24aaec23dfa3b986adf7c74df72b69918aa57c501c29e1e`  
		Last Modified: Sat, 17 Oct 2026 00:39:10 GMT  
		Size: 2.3 MB (2280892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f444813c1e81cb6d6a0245695283a6b89d4eb7e3a1361edd838a9b98bdfe0aa2`  
		Last Modified: Sat, 17 Oct 2026 00:39:10 GMT  
		Size: 12.0 KB (12020 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8ebe0a52620fe502e99ee8d47404c6eebc6cc066d6c695c530ef49a6af290d8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87255870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe85748120a94d73d1203a92e8943239c8ed7bfd1a0e3d2ba5c08eb3c3cd3031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:38:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:38:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6b6299caad6adc11c0d4cd1f38d95d3b500356441d5b50551349fabbe022c3`  
		Last Modified: Sat, 17 Oct 2026 00:38:53 GMT  
		Size: 58.3 MB (58316109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d229f2f0fd422393133dd12fe120ef302e19fb50ae304b6254e98eefd01c01f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5fd97f1179bb0b7d66c617bc2e68256fe0fd5958ece15c11a5f3d16ff592c1`

```dockerfile
```

-	Layers:
	-	`sha256:9690cbf21524b8c3881f7a6c1a0432059750d328c1f0de1eef03ba0296f77490`  
		Last Modified: Sat, 17 Oct 2026 00:38:52 GMT  
		Size: 2.3 MB (2281432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d76bbffd807af1d24bcb4fb00149237110cbe9cf43cc05c43440475c386d5609`  
		Last Modified: Sat, 17 Oct 2026 00:38:51 GMT  
		Size: 12.2 KB (12208 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6247f36e08257e0b590008159190055b692dacb4b93892766065e5f29e3d60ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92746806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f871818b05a21e36b02c80e453cab00d3cbb6eaf8c06b4d3340ac2ca610d1061`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:29:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:29:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:29:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5181686bfe2b3053becde05b6516231b9237a05ff199994e910f3f424e3991d6`  
		Last Modified: Sat, 17 Oct 2026 02:29:55 GMT  
		Size: 58.4 MB (58368816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f40ce14749407e8e87bd68de6beabb2de5eea6509387926269e1687e1e3f6f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f79ecffa7ef7420e631238cf15c41a0c7c9749a847b76551309e998bb7412b`

```dockerfile
```

-	Layers:
	-	`sha256:09e8a91556c8e820dc4b498fc52bc2c510f4e5fd3869c11ba02d7537495a72de`  
		Last Modified: Sat, 17 Oct 2026 02:29:53 GMT  
		Size: 2.3 MB (2279697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61b108cb26d4d7bf8a9c9c2234ac8ee82f88b470e37e3eae6dbfd57713da480`  
		Last Modified: Sat, 17 Oct 2026 02:29:53 GMT  
		Size: 12.1 KB (12105 bytes)  
		MIME: application/vnd.in-toto+json
