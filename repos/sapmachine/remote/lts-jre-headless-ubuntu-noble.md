## `sapmachine:lts-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:06c7d0498c2c833e959828aa6291a861438cb83ef648abe7f39e32f6c177dea2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:c1fc471fb4fb1cbb2e57d096c944b640b4b04301902fb4995d5e94a8d7e46371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89196754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812ec30806f13b39ea59b7d283dffa735941e6e0d6597bf5ab31968d6bd89a54`
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
# Fri, 23 Oct 2026 16:55:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28caca8188da7e85cf553b42a9de208306eb5a4cdc211c23aefac0b3ad3627b3`  
		Last Modified: Fri, 23 Oct 2026 16:55:34 GMT  
		Size: 59.4 MB (59430996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2e14899782c518c0b987286758fd5c1a8a8ba4e9a5fc8585dded0d7267d5f2eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1396d10c3698efa462542a22f0787f30e20a13e5500b65dea37c06e4f76e47c`

```dockerfile
```

-	Layers:
	-	`sha256:378f5ee3fa6964f59240077a8b65ec990394ce830f469da1fad48fa75bf2b932`  
		Last Modified: Fri, 23 Oct 2026 16:55:32 GMT  
		Size: 2.3 MB (2280916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a89f00fb0322160d4a00c33b389a655780cf95b16fea94d6c4c5346adfc1743`  
		Last Modified: Fri, 23 Oct 2026 16:55:32 GMT  
		Size: 12.0 KB (12038 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:77099373b373095f85358df4557efa4bfb4fd2448d8256b9975184824e1da781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87309075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576269b1b592642fbb0042e8d03bdca479f327c343bc1b96b5225305d1391784`
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
# Fri, 23 Oct 2026 16:54:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:54:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dfcf94302332e8c4ffe91ae110f1a84962615f979de50f56e12de7e65c03c4`  
		Last Modified: Fri, 23 Oct 2026 16:55:06 GMT  
		Size: 58.4 MB (58369314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:23e05d329289df113dc81277382fcd69551647ed8402327e1fa7a4f12fab3768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a052664e487f44381637d97888c268bfcd02dae813dc032c440f0e5e1c7e430d`

```dockerfile
```

-	Layers:
	-	`sha256:dcc94798ac725d0c85cf0a4524e932d8cad832cfccd6674e87d68b5b33ce0922`  
		Last Modified: Fri, 23 Oct 2026 16:55:04 GMT  
		Size: 2.3 MB (2281456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7fd998eae7d95784f4cd02e8d4e8deaa8cdb1714e27e62b6dae1a287774826a`  
		Last Modified: Fri, 23 Oct 2026 16:55:04 GMT  
		Size: 12.2 KB (12226 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5aec6de700c216bab15f93d9a1244063a4c97fc57aa9c66372c0f0eb8ecbc19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91990591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0522be2c4ff8c2b62c0da3824231a7bf052ccc45dcfe092848c4c3ecc94915a6`
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
# Fri, 23 Oct 2026 18:56:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 18:56:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5331fe91057be17bb37003ec83144f72afaaf50f824fa0f528655c14b7856d25`  
		Last Modified: Fri, 23 Oct 2026 18:56:56 GMT  
		Size: 57.6 MB (57612601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b717f4858a3c04d8a6b2c412ddad2e668da3c4f48e10447bf4dce5c46298e11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166173676ce4e7cabd9187c2930878e93941b026dc998c69c71951b85b186ce5`

```dockerfile
```

-	Layers:
	-	`sha256:eefc59a5dc22dec483ee196cc4f428bb9e8abb488cd81b8ba526b2d28490ee69`  
		Last Modified: Fri, 23 Oct 2026 18:56:54 GMT  
		Size: 2.3 MB (2279721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686e990f68c27f82fdafb79753afde51d7ddb2025dfe15f50115f50a48e56514`  
		Last Modified: Fri, 23 Oct 2026 18:56:54 GMT  
		Size: 12.1 KB (12124 bytes)  
		MIME: application/vnd.in-toto+json
