## `sapmachine:25-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:b6e00b645b9c126cbbd63ad7e8a05ede9e91b49278104551187c5f5cc1065a92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:d5066fe2d2f092679a7738528ab78c9928bc7f3db46ca09781a81d923f4c53be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167057467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32eb087c019ffe07f03cb2acf21af287c9f95d42f74924e6b2326f6b48b5ae8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:32:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:32:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e758c8e25038f82533dba080112c902386e8cdedf11d14c7f0c6bf3a29ab28ba`  
		Last Modified: Fri, 20 Nov 2026 03:32:37 GMT  
		Size: 137.3 MB (137264170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aa2048a91ec24bbf5485096b8943c941a8d45cc420d0307ea029a6d9edcccd5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2316180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cd1104e51b635243aaf95bf64b40b14c4b5c79d885a9473ca319fe3ecc8ff0`

```dockerfile
```

-	Layers:
	-	`sha256:c47be52ea50076aca84bf2ea43939bd3b643b02236dcfa7b853849b23e691229`  
		Last Modified: Fri, 20 Nov 2026 03:32:34 GMT  
		Size: 2.3 MB (2304160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4d7154b92e637a0b9f37c509cbae879f12a1375fd28f550c2c59a5313623e2a`  
		Last Modified: Fri, 20 Nov 2026 03:32:34 GMT  
		Size: 12.0 KB (12020 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:52c37b5fcbe5700a6c6f0c16dfb6b690899e5a55de7cfbb35935e9d94fd66572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165194965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4225cf48f74c1e9f30035ddae264e767cea13f919259dcd468c6c2cd4dad3464`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:34:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:34:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cc9158d5a129812f0fce1be8281e4632c2532447031980c67b3705097912a5`  
		Last Modified: Fri, 20 Nov 2026 03:34:45 GMT  
		Size: 136.2 MB (136229647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a2d99ec7e1c4a6ce3a09041da21357a801e3da9211b5d6ea773b58e308a601b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2316909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c492c1fa209b3b720ab57ba7978890a518dc0e9bbfda095ad99a6a99a0371a`

```dockerfile
```

-	Layers:
	-	`sha256:f155ca9aff1c2553c78884f1f301bf57a9f6a37ba2014a00339d93dc50399a2c`  
		Last Modified: Fri, 20 Nov 2026 03:34:43 GMT  
		Size: 2.3 MB (2304700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b41be740c807db69dc7c233ad63ae2805e6663bf95610bc9611342d51f498596`  
		Last Modified: Fri, 20 Nov 2026 03:34:42 GMT  
		Size: 12.2 KB (12209 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7346983f07a5a8b7ea27ff5d46b3cc3e9e18f8e007fe27853aaf5647ecfd0fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169359338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4e56173554bb6b05be1e935abb40ff62d2306e3f5ffaeb8f991a3cc3dcf940`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:22:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 04:22:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11414309712262cc1e51a362781c36a6744f5238f4aaea67a147152ca1e862d1`  
		Last Modified: Fri, 20 Nov 2026 04:23:06 GMT  
		Size: 135.0 MB (134953099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f4d0bd50283a9e957d500e76dfdaf11039e220a823f98f54120092d469398c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314efb0bc8c56dffce6b30336bca9ffe91548a54d444338e48e77cf0203d1799`

```dockerfile
```

-	Layers:
	-	`sha256:ccf1ae339ad077bce0a059f57a77ea9523cb12aaf680d457f16e6b663712f5ae`  
		Last Modified: Fri, 20 Nov 2026 04:23:02 GMT  
		Size: 2.3 MB (2302965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4a71fa26248e5238c5aba9f8e2c62e8624db76fb2da2d9830627f47e7f69d25`  
		Last Modified: Fri, 20 Nov 2026 04:23:02 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
