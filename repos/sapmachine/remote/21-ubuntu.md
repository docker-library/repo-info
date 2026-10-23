## `sapmachine:21-ubuntu`

```console
$ docker pull sapmachine@sha256:83949f2a9525a424c1553f13f5fe6cbc72244d4076fdb9eba4aa2eb1838818d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:1942767e831841696ebd86ff38bf6afb95a2e6660e0c0624c77d78da3c4664cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250225291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3217ba52aa8eccd48b0db16c88cf972f21c3a6abd92eada725bd08d57e943ab`
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
# Fri, 23 Oct 2026 16:56:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:56:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:56:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67626892c89f1b53b1bdda4722f094df294cffec28c9607cfa190b7d0fa6b01e`  
		Last Modified: Fri, 23 Oct 2026 16:57:17 GMT  
		Size: 220.5 MB (220459533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b24825f8b4e99b796a29ab9bd3a30cf8c0e5b9a3dbc3b20a7e6b045207c76856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b7dd2bf2ab10befca9f08667ad68e3683e06f5d1fb5d2b1b0d8e7a6c078023`

```dockerfile
```

-	Layers:
	-	`sha256:34dbae13f886d7eb75b66da4a90e786aef70c14789041d8428bef43bbb1d978c`  
		Last Modified: Fri, 23 Oct 2026 16:57:13 GMT  
		Size: 2.6 MB (2608595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d5d5e4b1dfab7c7998f8596c8db869866d3b8f819f7eea25fc4e3539530fec`  
		Last Modified: Fri, 23 Oct 2026 16:57:13 GMT  
		Size: 13.4 KB (13412 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:aa3eb50ba13cc2f935c2578bc6267e136959ebc931156d93be94bdbc9caf1d5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247614553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ba60784f251709fcc5a795973038c5a016f81aa0f8c5eccf80c457192da83e`
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
# Fri, 23 Oct 2026 16:56:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:56:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:56:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54f2cb5b5ed48aba4c3c4b7a4ac447a7aec79235962aa52d33ce74fced0e93e`  
		Last Modified: Fri, 23 Oct 2026 16:56:29 GMT  
		Size: 218.7 MB (218674792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1d32ea9080d01f45b99c2da8c298cb65961a9bdbd4f8e57b75da4bd7c9e7da77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ca40c679e1ec39fcb81c3dfa7f395376cc51e690cd6c9f23b5c6fbba4a1f8a`

```dockerfile
```

-	Layers:
	-	`sha256:91609ff87a4e22177cc4033514f67178f6d22b70542e1f11a5440019e3bed7c5`  
		Last Modified: Fri, 23 Oct 2026 16:56:26 GMT  
		Size: 2.6 MB (2609207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e851b494a5e09e5a345eb8059c3f92f6411245e4c22182142988b1898d5fba5`  
		Last Modified: Fri, 23 Oct 2026 16:56:25 GMT  
		Size: 13.7 KB (13661 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:065136b80d4e68c2655f3d2df5feb1a4c6fea7a9255858abccb5025b33a6ccfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254741504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44ef007fe911643ed04bafd00dcc9cc9563789fbcfe0b4ea04767f876f01d66`
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
# Fri, 23 Oct 2026 19:10:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:10:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:10:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e959a33e77561c7218efeb3086f1474d17030435db22c134e328706016cd5422`  
		Last Modified: Fri, 23 Oct 2026 19:11:14 GMT  
		Size: 220.4 MB (220363514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:227458c799f32017dd727100647dccb5043204249409ba50437a52056df1747d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d78f7994e8fee141a65826121491557a2218fadd4237a25b225bf6a3d2d07b1`

```dockerfile
```

-	Layers:
	-	`sha256:456885bdd87707cd6b0d6625959c38d0f7d4b7cd4e7410e6bf1389a77f238a6a`  
		Last Modified: Fri, 23 Oct 2026 19:11:09 GMT  
		Size: 2.6 MB (2606195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07e0558daf1a61c881f6c6596a207d6504a0edfa7319d44231132fec0c7c9dc6`  
		Last Modified: Fri, 23 Oct 2026 19:11:09 GMT  
		Size: 13.5 KB (13529 bytes)  
		MIME: application/vnd.in-toto+json
