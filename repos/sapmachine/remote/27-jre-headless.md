## `sapmachine:27-jre-headless`

```console
$ docker pull sapmachine@sha256:1deb79a11c67f822eb7877b9a07542945fd5819bb86a5355df86c60afefa9874
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:91dc54e30275e3b259a45857bee75aa06b08a73bc69ba64954f85128fb2e58c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89159004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df404d3f5d2e483da52ddb10a4589340c83c867fa2c150cd88e01c74d473673a`
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
# Fri, 23 Oct 2026 16:53:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:53:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:53:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1687785a2abb196e245d0e78febc1e5b06af69d2e77784107765ee8d813e6e0`  
		Last Modified: Fri, 23 Oct 2026 16:53:51 GMT  
		Size: 59.4 MB (59393246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9d6b3ca3135997285b081b5d16dba5a947463f2a544222cefa0813b8dde9fa35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdeed175a526ff8a45f6ec24e79174e30554f4a14c1979ddfb3da65165d40c73`

```dockerfile
```

-	Layers:
	-	`sha256:b4c75848bb79238b5ad6d400be26eadc7df910cd049c07e43623cec4041a3524`  
		Last Modified: Fri, 23 Oct 2026 16:53:50 GMT  
		Size: 2.3 MB (2279319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5706f66b74abccbddfec80b57d7e5e1db5849422b8254bcf5e4f76e9364471ca`  
		Last Modified: Fri, 23 Oct 2026 16:53:50 GMT  
		Size: 12.3 KB (12331 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7cb528dab3cf655a0c5e331e505c2d970a71523817ca622a3a0564da3ce18672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87364704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6313c961941279dc6819ce926ff4e20ae9278fc10fa89158622cf199d3b3a02f`
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
# Fri, 23 Oct 2026 16:53:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:53:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:53:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f1ecb5b9760dff2e95559cb9247466f8121934151e5fa70c82d1e6543f8584`  
		Last Modified: Fri, 23 Oct 2026 16:54:05 GMT  
		Size: 58.4 MB (58424943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9cfe50f1c786019b0ae659b2dbded7e5039191fd5f8ee372a55ec54885f5d903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06806518d57360d0368cdea5b8bb628edcd294f247c0985ab3c48fcbef3a2e14`

```dockerfile
```

-	Layers:
	-	`sha256:95554765c8dd14c82b3914ed3d9bd3a44570b87f5c8a71145ca281ea4f745223`  
		Last Modified: Fri, 23 Oct 2026 16:54:04 GMT  
		Size: 2.3 MB (2279871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7485a8e15f579f6e21cdb80209b74e1c2b32d42ec4ba041d3dd76250ecda3adb`  
		Last Modified: Fri, 23 Oct 2026 16:54:03 GMT  
		Size: 12.5 KB (12532 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4a05aff8a029b72723b8b49d211dd51e3ad249fc5eebff6c4da209099873d4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92886745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634ce679b8d7e0e16d21de6ce9d2fdfec6de1d890cac66258b16faea8d3d2d0a`
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
# Thu, 22 Oct 2026 09:49:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:49:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f4d5953212665ae8ca4846cf7a34efa36f136a1dea18c7185349e0ce4338d4`  
		Last Modified: Thu, 22 Oct 2026 09:49:45 GMT  
		Size: 58.5 MB (58508755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e87e0f6aecbc3ab00623844f71a22f3b6365500731b1c7e6552bbb0bfee59756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01eb3b1ea530138c30467272f0dc772a29621275c17c1fa317acc145f8fcf7c0`

```dockerfile
```

-	Layers:
	-	`sha256:8a1bee6f1055d9006039400cdd1ae4edcdfdb464ab24bcbdeb9055d161dce314`  
		Last Modified: Thu, 22 Oct 2026 09:49:43 GMT  
		Size: 2.3 MB (2278082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e9ee47a972d60e0a51aa024085ce97eabb1a6b509b303eeb9c67ab64cf75f7`  
		Last Modified: Thu, 22 Oct 2026 09:49:43 GMT  
		Size: 12.4 KB (12384 bytes)  
		MIME: application/vnd.in-toto+json
