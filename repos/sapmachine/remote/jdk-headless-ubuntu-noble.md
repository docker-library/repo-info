## `sapmachine:jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:6c4d8a139553c55ec32a5774c260b4f9c5ec44fed363ed54b84a38747300f669
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:e79458bb28d5cf98297203a34fd9038c801b2cff40b9e61641b2880db23072da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167943653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5df15fb710b3772408ae88806429f465b0f53957f68846584b507da0758764`
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
# Fri, 23 Oct 2026 16:53:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:53:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:53:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6f037709107b921a355652e246b6ed295d7709a14e87fb75a80c1efeb4efbd`  
		Last Modified: Fri, 23 Oct 2026 16:54:08 GMT  
		Size: 138.2 MB (138177895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2fb7f4ae0eeed607356bb0c2367ef76e382a73a9dab2bb3ed89c9a1d61fc39e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e33407e08c18168c03a1adce64d50318d516131bcbf4b45d5d6acc55fdab50`

```dockerfile
```

-	Layers:
	-	`sha256:ba8e848e3f5d902b3a1a1437bd31b412f9203f559cf666966847d1b956072c54`  
		Last Modified: Fri, 23 Oct 2026 16:54:05 GMT  
		Size: 2.3 MB (2300691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7888d5a2af54e0e49164e14ff066217e2d4598821b1f8ece8093b8f8cc2a250a`  
		Last Modified: Fri, 23 Oct 2026 16:54:05 GMT  
		Size: 12.3 KB (12337 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:90eaa4475e84d05dfb07840737d7c9f3717009bbd35ccf74006ace6034c96c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166202926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbeeaf7bc307b4012beafe834fc5a9eec7e81687d2fca4ea2162c50024a55f7`
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
# Fri, 23 Oct 2026 16:54:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:54:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 16:54:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0cfc47092e977176d9205e8d850f2cf431d6590502280965e0817d34ea504a`  
		Last Modified: Fri, 23 Oct 2026 16:54:25 GMT  
		Size: 137.3 MB (137263165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:016580feee312f97f2094649da0db38baec388405a5fd984a99533a84fc3cead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f4b781bf0b3784364a1d54e9082c0a77deab5875f65df7747e33c319364061`

```dockerfile
```

-	Layers:
	-	`sha256:37fbdd33182fab61328cfb986982bbdfaf2ac9122eda55d267753be53ae0bc56`  
		Last Modified: Fri, 23 Oct 2026 16:54:22 GMT  
		Size: 2.3 MB (2301243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1196c101acf3c2897ff98d18212ea946a842b7226dcbaace9b88547799451c61`  
		Last Modified: Fri, 23 Oct 2026 16:54:21 GMT  
		Size: 12.5 KB (12537 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f11de42d3368429962f88bfd64b8a0199f1a8705baff3cd2b221e7ee3ad55e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171596258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4593058bc10748d952cc6df21e421d57ff755999511940f1a3e95d901c25a47d`
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
# Thu, 22 Oct 2026 09:51:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:51:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:51:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fbfa5393577c28ebf6c3e64c82473d2ecbd1dac1f76c33a3e1da77dda972bb`  
		Last Modified: Thu, 22 Oct 2026 09:52:04 GMT  
		Size: 137.2 MB (137218268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a498433acd6bdb548dacb562d6e3037b63f1c8d5f248d1274bfdbeedc00e0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7545f155f53895c3aa8c8c427d42d7d4dbab40881dba11a70350e6ec87015eca`

```dockerfile
```

-	Layers:
	-	`sha256:af44e6c1fe8834b574d7576cdbe7ef091e941268ce6bd686d6ca7c3f1b3990b9`  
		Last Modified: Thu, 22 Oct 2026 09:52:01 GMT  
		Size: 2.3 MB (2299454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ac4a7d535698a9ee0126dc7a02264cf2597eae867cd85f80bdc73fa39a5b6a`  
		Last Modified: Thu, 22 Oct 2026 09:52:00 GMT  
		Size: 12.4 KB (12389 bytes)  
		MIME: application/vnd.in-toto+json
