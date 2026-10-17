## `sapmachine:21-jdk`

```console
$ docker pull sapmachine@sha256:0eeeb0f2972b4f06d2bc7296661411d3e829ab8c93a0b8d48dc3a328095aa18c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:054e603d7eaa2e837a8015b14965ca03b2b497f51573285fa3426a1a68f58f97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249809877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573b1dbdd6646ab6d0f56ad4b97b0750aeb2159faf8ac476a1a9e1c73a3af76b`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:40:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:40:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cb270e1916d84eaf89e296cae4cc8865df9cf369c4bd1bcc395d63992adbc1`  
		Last Modified: Sat, 17 Oct 2026 00:40:25 GMT  
		Size: 220.0 MB (220044119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2cd68f54e62681802979d41be028cb92fc4cdf8709129c1face9f3f94c1d2e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3696c259e417a3efa2921df9d41440aeca7e2731c54038019c29131f72ea26ce`

```dockerfile
```

-	Layers:
	-	`sha256:3b8a8eda680f940189259d3738f6e5abc8c5c7186a6871d8b0921c29eb18c9fd`  
		Last Modified: Sat, 17 Oct 2026 00:40:21 GMT  
		Size: 2.6 MB (2607903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:003a01bdfd9d9c1fbb770874624a4d6aa48056789e3223ba50219db205fa6856`  
		Last Modified: Sat, 17 Oct 2026 00:40:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4b4e6dee9b070b0d4e7057806c5a6910467ad1c7b6bde0bb1c6c34a1c6ed02df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247187830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4582514eba44bbfdffe84d51f3de1e5dcb57c910af789f2e5b0b4731ec01bb6e`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:39:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f78827806e78b85ba85c7dd8e4a00d3c1b88484d13cfdbe425473c01c7c832`  
		Last Modified: Sat, 17 Oct 2026 00:40:21 GMT  
		Size: 218.2 MB (218248069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:47a675d0f425fd35c0e61cd001e26cd09179cc467178d43eddd25d2a2b1a6aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b68cfe13f0aa291353110349588d9b17b679fb353289ce6eb56c05495cc7a8`

```dockerfile
```

-	Layers:
	-	`sha256:fbfa2169a5b0b010a6bd661583c3aa3fc6cc8a653cdd44874193cf0846032ff0`  
		Last Modified: Sat, 17 Oct 2026 00:40:16 GMT  
		Size: 2.6 MB (2608515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90b0dc90579181a4c1733fc6a62211f24ce3700b79eccf6d0e8c0a8d6b66151a`  
		Last Modified: Sat, 17 Oct 2026 00:40:16 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b1cccd635469eaaebb0b1bb15b79bdbb809dd5331a1d8c3bb556b2f2cf35578a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254392389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6de64c9d1ec556b0a0af6b2367f9addbeb757c653dae30cebfeffdc99c1f240`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 02:42:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:42:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:42:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41a31602b13122ce2a9dc78b9bb7580d0c359e771ac64c2daafc7848d454560`  
		Last Modified: Sat, 17 Oct 2026 02:43:35 GMT  
		Size: 220.0 MB (220014399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2ce23a4500b15043a2d6bd0238fc4632787c65f4e065156585411383fbcaa815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04a8ab6943dcf94185a23da3bf3a0a4f6809cea580797894c9b31c0eb7329bf`

```dockerfile
```

-	Layers:
	-	`sha256:714eed5a432553c37bebe56fc2640f169d2539a7efd2f52c6e58e6ea294b1dd8`  
		Last Modified: Sat, 17 Oct 2026 02:43:31 GMT  
		Size: 2.6 MB (2605503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a4280ead3ba6fb336582c89442e422ded87068ee5c293c656c0662cc182de9`  
		Last Modified: Sat, 17 Oct 2026 02:43:31 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
