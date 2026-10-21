## `sapmachine:17-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:ea8469ce0ebf4951d8867c574751c3e2f5eace52af90cedd8aa5d5861fad578a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:ac15e91848845f30fa437f3efe27b18531cbedf688fcddd2e7f16ef137e97e77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87713418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38bb83edc0052b48f7c673055cc2d24286290613aa1e8bae3dab9ca43f9b43b0`
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
# Wed, 21 Oct 2026 22:15:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.21 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:15:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 21 Oct 2026 22:15:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3910575882a3d0cb4397845da017bd998b24c1eacda3837d3ae047dad9d68ebe`  
		Last Modified: Wed, 21 Oct 2026 22:15:43 GMT  
		Size: 57.9 MB (57947660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:70491eb7ee699b202651b412cb5dbaa1e14db55f56ea036646cde1fa042cfce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c858c63489991da935267d2335f3ba49990729c22afc532d9152ecc8b0e513b`

```dockerfile
```

-	Layers:
	-	`sha256:224b1e3f0295ab11b66142f29272a55041356a000e56b36ab3ef9058c6f5e55b`  
		Last Modified: Wed, 21 Oct 2026 22:15:42 GMT  
		Size: 2.5 MB (2521432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f0a9abbcc1a3914446bd5dd9cdb38b906feee10e9fe8366818703d6f249d7be`  
		Last Modified: Wed, 21 Oct 2026 22:15:41 GMT  
		Size: 10.8 KB (10750 bytes)  
		MIME: application/vnd.in-toto+json
