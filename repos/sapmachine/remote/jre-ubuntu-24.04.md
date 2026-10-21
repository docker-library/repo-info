## `sapmachine:jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:17440ed23eac20631e3dea0fe3175f4668950aebb8188a9d2fb230f74141dc09
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:b5cbbfb752bc303d8f7519aa7c16c76a480743aa5b7554df76b562b6b9e41176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90633354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6575397ba5f70cb7c416ee7313e5ee6df80920f56aada5b42152dd0e62edc9`
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
# Wed, 21 Oct 2026 22:11:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866b2daac2e000be3931ffa3dde1ac36d534ade2903e7046c9e09dcd625ee812`  
		Last Modified: Wed, 21 Oct 2026 22:12:05 GMT  
		Size: 60.9 MB (60867596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3297e49fd85aff6dc3fc84fc7e4c84ac5257f2730ba317a16dc0338f6db28153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30488990b69139d010f620ce1d96d60ea0c912245ed878cfe30d8f33d3d8fc71`

```dockerfile
```

-	Layers:
	-	`sha256:1f39d5eb49076386640067f91105b13a654179877b2d119b70e99563bf28cf25`  
		Last Modified: Wed, 21 Oct 2026 22:12:04 GMT  
		Size: 2.5 MB (2526297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee4bad14822311812f6cff7ee9177bb58ec54f67217cf8f5a5a1ddf39116be1`  
		Last Modified: Wed, 21 Oct 2026 22:12:04 GMT  
		Size: 12.0 KB (12037 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7d6193efd0b7bde85758e74bb32a49edb70b0e2f448a60752e7eb10d7cee39d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88842009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb552c515c41dbdd93d9061f6f4ff7091a1dc7bb3cdd5611b2a849408e57e89`
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
# Wed, 21 Oct 2026 22:44:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:44:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:44:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345eb47e244eea9e18ae90f5027a45cca64f92802245a8bbc1393ccf40ef55af`  
		Last Modified: Wed, 21 Oct 2026 22:44:44 GMT  
		Size: 59.9 MB (59902248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:888e951b3303bebb2033b842f3cfb5f4816e473dfb6fac32987faa9140b99e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f752ea8e40d556bbb5e82a02ba0f721165acc9e6f2ad9a02dff6bbcbac6d3cb2`

```dockerfile
```

-	Layers:
	-	`sha256:d888db1fd9eb949b05c1bba070c5a580c415d01f5701f91592f18ec86fe2f7b5`  
		Last Modified: Wed, 21 Oct 2026 22:44:43 GMT  
		Size: 2.5 MB (2526858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ca90780699b4d6a287e4606db232d93b99024dd19a23ce5e1c8f954c146a0b7`  
		Last Modified: Wed, 21 Oct 2026 22:44:42 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:692d2b88e06d906467c08958202211ebd30c0c6c02cef16b626396202c2506d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94584381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d1603c5d97e3ef571b838d0d6d8b3d03491656707205524b7787ae7d82c16c`
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
# Sat, 17 Oct 2026 02:20:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:20:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:20:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed21272f3bc9ef8dca75684ef3732c777712efa6304f2608c3305bc6c90a351`  
		Last Modified: Sat, 17 Oct 2026 02:20:44 GMT  
		Size: 60.2 MB (60206391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a35aacc423e818479e758e4ffa80a578a4ef94f4810ce5b3be14c1bfd52f60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2534590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d4c9e12de402b759eb43eacc8aff5caf9fbaaa0b8779cafe9bf420505aa93c`

```dockerfile
```

-	Layers:
	-	`sha256:1452a4482271f376543b8fe120d2b0ebfec36cb380b49b27c927155f1640102d`  
		Last Modified: Sat, 17 Oct 2026 02:20:42 GMT  
		Size: 2.5 MB (2523815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ac44ce48f1b375f5db981ae54f0b1a39a4dcf035a5fe0b2871042ec5549255f`  
		Last Modified: Sat, 17 Oct 2026 02:20:42 GMT  
		Size: 10.8 KB (10775 bytes)  
		MIME: application/vnd.in-toto+json
