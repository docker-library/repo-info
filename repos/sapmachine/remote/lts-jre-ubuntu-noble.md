## `sapmachine:lts-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:d47f608f80a76ca955f9378b026eedda9328c31ccce838bd1c84d4f208c5563c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:43d58e829a88e1725950179cbaff8d66ef9401c9a7649f306e4a37d80fa4f3a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90690297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347147421a27a5bfc2136f1373e5738227e28be0b8e245632e91c2bc277887c`
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
# Sat, 17 Oct 2026 00:38:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:38:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b16b6497a6a40f685e97c5d66c09919d1ed8762fe2f1b1a9e6a5cee6795332`  
		Last Modified: Sat, 17 Oct 2026 00:39:11 GMT  
		Size: 60.9 MB (60924539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:20a139a6751ce9d9401d2289eaa19f2f96a55115810b34463e22bcf321b4565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5070e9221b3848e8868eb4998089070d50ca06652eea4bf6e05c68f694048e`

```dockerfile
```

-	Layers:
	-	`sha256:18afbecd4f187fea1d769ebc63867a0c1a9793e22e221e32542776626630f050`  
		Last Modified: Sat, 17 Oct 2026 00:39:10 GMT  
		Size: 2.5 MB (2527924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6748b6a109d15d6c27710e84f047752574d56285ee73d9f635c71ffe62ce1d0b`  
		Last Modified: Sat, 17 Oct 2026 00:39:10 GMT  
		Size: 11.8 KB (11783 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:02afc9a7af387ec8fbcdbb6f2d4572c3c2f27ecce13b87c50f92203adc8864c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88816954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a48655b3b978581e5df0af9c6aa5ad65a2d42e316534f8e3e4f161567054d3`
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
# Sat, 17 Oct 2026 00:38:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:38:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7f073987a4e715c85bb4421071ade47fd362890ff2e1e918cfa91fdd8d8bd1`  
		Last Modified: Sat, 17 Oct 2026 00:39:04 GMT  
		Size: 59.9 MB (59877193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:197fd38671b3c4ce3364ea3e4e9946abb1f0e99980bef1666c5159f2a166d30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e48dde72c8092adf6d071df01472978b8361d0ba35382001397c110bc838229`

```dockerfile
```

-	Layers:
	-	`sha256:611a199990f945d15daaad2836eff3095679a0289e3fcce5b55f81cfcc2ac274`  
		Last Modified: Sat, 17 Oct 2026 00:39:03 GMT  
		Size: 2.5 MB (2528473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8f11f9ae4a7479c391dd1c06bce5ba0804e3dc3c697196906073eebd1916561`  
		Last Modified: Sat, 17 Oct 2026 00:39:02 GMT  
		Size: 12.0 KB (11971 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:50ac49c7cbfb4088efd34ab897fd881a951c77de4ecfdc21e622799b6c78d2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94491703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d45c57749dcc5e3b0badb202ccc21ba30df2288e2ad677e4e57902f9375438`
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
# Sat, 17 Oct 2026 02:29:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:29:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:29:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8b0038e7864db318306daf503035783600d568a6476a045415739b332aa846`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 60.1 MB (60113713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:55f3edca0d9bd919a028e9a67e7ace08eb6a2aa7d730e4eda7132b857d972d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847a8debdd7ee536f2f17fd7500f553cf750bd2cd57e8df62b0ad8f0f2570fa1`

```dockerfile
```

-	Layers:
	-	`sha256:76970ec3f4fee104813113b8e47579fe84163226f4bbbc6fa44e5b97a6d5ce5b`  
		Last Modified: Sat, 17 Oct 2026 02:29:53 GMT  
		Size: 2.5 MB (2526810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85eb145d2097ea0b22d65f1b8749ecb8de5fcc12c51a642b3137e9e5a7fb149f`  
		Last Modified: Sat, 17 Oct 2026 02:29:52 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
