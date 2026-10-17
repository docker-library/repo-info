## `sapmachine:27-jre`

```console
$ docker pull sapmachine@sha256:728516ff784dd752862166d83099b24ea6299d4186ac53b481229d74bb37d339
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:0dc16b437ce2ba54c1e0f8be3a2badd3b179094ac9e025b9e2fae3790244697a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90618429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0170db553a166fae9cf4d4cf7eb08f30a4a9321f8329b8077146629c08bbb8a`
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
# Sat, 17 Oct 2026 00:38:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fa3fd983d968b030647322d229283df31cad484a746bfd9fb206cf096be382`  
		Last Modified: Sat, 17 Oct 2026 00:38:15 GMT  
		Size: 60.9 MB (60852671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4044105f97dd979a1043e14555c809f14e66a5bc2d87fd4851940db7d0f1ab66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2535654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be35747668c45ae8c2451c368771c23f8b007728c24db16de30333712fadfb6a`

```dockerfile
```

-	Layers:
	-	`sha256:0b22a2899d8a74acc134531097c808e4782af509a3f3d19f8e83f927f860e8aa`  
		Last Modified: Sat, 17 Oct 2026 00:38:14 GMT  
		Size: 2.5 MB (2524947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a4b6068e731e35b3a534c035aab8648dfe9f2af812c84c7aa3b89b38d53f10f`  
		Last Modified: Sat, 17 Oct 2026 00:38:13 GMT  
		Size: 10.7 KB (10707 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:cf0bb53b308886b6a288bf66108e8b2b2beda5caaa771df9963db405c47bc921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88822802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc8567440d23a70b17e4dd89c896c369158f35e72d1ae8dcf7bd8a16982e5d3`
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
# Sat, 17 Oct 2026 00:37:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:37:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:37:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c305f8e026f3ccc7f8ca37e8ffe6c1de4e0c41869443c33e9d25330dda52cc`  
		Last Modified: Sat, 17 Oct 2026 00:38:10 GMT  
		Size: 59.9 MB (59883041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e051e678ed319b1dd5571f4fac34e6032203827ef3982c862cad20cc34373489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b092b89ad6ec402ab0abfaf7935426e798b13059d8fb31275afdca1a2f7de9`

```dockerfile
```

-	Layers:
	-	`sha256:4eb970c1e2e32177ec43132a8f75856b0cfecc7f22ab91dc5a1096c6b318dc35`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 2.5 MB (2525460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3556ab7306573d689a715927e538b6e3be3506c6f0bd54e09f9ff7dbc2858e6b`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 10.9 KB (10858 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre` - linux; ppc64le

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

### `sapmachine:27-jre` - unknown; unknown

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
