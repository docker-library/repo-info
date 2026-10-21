## `sapmachine:21-jre`

```console
$ docker pull sapmachine@sha256:aa906ded3b6b30e511bd351575019704ace680fdd6e4430507a7afaa3b50920d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:b97baea5ce16eec68dc4fb0d2c2786d0d134076abe527fd2cab28506beb93d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93703044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23299deb7ca817dba2d000a5cdcd1e25c9db9c73d5769d0ec6089961d28edf1`
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
# Wed, 21 Oct 2026 22:14:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc3ddcce10f4fa1db015097cfac78c4aa504e39e2ff2cbe852ab0adcdff83ac`  
		Last Modified: Wed, 21 Oct 2026 22:14:31 GMT  
		Size: 63.9 MB (63937286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:78e258a6de3528a21eeac3bca64bc5f925b7e9e25d81f0931e7d51b892c18bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e2b5d59c46bd255c534c168394733f5f9a06c47775bebd4167222fa340a7fc`

```dockerfile
```

-	Layers:
	-	`sha256:c54f0819e3f67bccea2e340ecf579a884697d2d2e766c4f4e768eee7420eb507`  
		Last Modified: Wed, 21 Oct 2026 22:14:30 GMT  
		Size: 2.5 MB (2522438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f55bc46ee4c064266fde03ac5d4de4cecfdbc7bb71816dcaaf3015d38b25537`  
		Last Modified: Wed, 21 Oct 2026 22:14:29 GMT  
		Size: 10.8 KB (10780 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b5c0323e6c104125e7595ce78d66afd9e50be25390acfd4bcc5d42a6f0815293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91953116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53faff0f6b7e43edd244b810f3139ad96e6d9ad671df414e7e0a9f81f4d961de`
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
# Sat, 17 Oct 2026 00:39:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bfb2f5e6c4ae3f41aaf26f3e526326607c5055f8d01da370581f0b9113b6d0`  
		Last Modified: Sat, 17 Oct 2026 00:39:49 GMT  
		Size: 63.0 MB (63013355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8843276d970b00ee355fa1dbf5471f7e268b6a0fc855c9b903a8b0792073c0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dba2cdfb5a08b36c6aaf456497de20722c40a6a730d4805bbece276248fc9df`

```dockerfile
```

-	Layers:
	-	`sha256:940e36cb4e41fbb91128e3f83f54ca762807935db45efea94f50cf62c674c9cc`  
		Last Modified: Sat, 17 Oct 2026 00:39:47 GMT  
		Size: 2.5 MB (2522326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:222fdaa63c36dc9b2d4d247ea51e040f2a580d5e89da2ff58c116c470ab45cc5`  
		Last Modified: Sat, 17 Oct 2026 00:39:47 GMT  
		Size: 11.0 KB (10953 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:27f0c092db8d7be6f081de1054b545dd3dc4a86935142baddc2526e7ad984a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98051886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c39210d4c6e708961c3939e9aef5ba4de1ee26ef5ebadd70a04b921dd45143`
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
# Sat, 17 Oct 2026 02:40:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:40:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:40:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef736e1acef66e787409017d953892d68e07239fc191fd463c1dc53e10404c6`  
		Last Modified: Sat, 17 Oct 2026 02:41:07 GMT  
		Size: 63.7 MB (63673896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6462970fd6237ef0a3b26ae1725e38ee38e0642a7b9f94b4e1fdd3daa75badb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51415adcc0a40081bd2277ac286482154ece1fbfa8803db77f24849ea54275f`

```dockerfile
```

-	Layers:
	-	`sha256:af4ef2d6a7255bd2f8901743d567eb9efb7a981ad1ed9fec33332f0eb3cbf09d`  
		Last Modified: Sat, 17 Oct 2026 02:41:05 GMT  
		Size: 2.5 MB (2521308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:184d00a7fd65cf877e635ba4bbea8992ba149b4cde55e15fa4cb565ff5751a1b`  
		Last Modified: Sat, 17 Oct 2026 02:41:05 GMT  
		Size: 10.9 KB (10870 bytes)  
		MIME: application/vnd.in-toto+json
