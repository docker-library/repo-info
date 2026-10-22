## `sapmachine:21-jdk`

```console
$ docker pull sapmachine@sha256:e240c604e4a74de9b8c54c1a3503c8c492180442e95ef5bf5182e395745180b3
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
$ docker pull sapmachine@sha256:700604b02188aaf5c4c081c9700f0a26cf50a2aacbb39e9acebe833d2e30e9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250183943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3564bbbfebd4cca00c70c660d03e128f7f7467e115cefc78bcf9b7e77fa1cd2e`
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
# Wed, 21 Oct 2026 22:14:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e022eb2b2cacf5eb82e2727091add37295f21daa9b33aea0099656e807c928`  
		Last Modified: Wed, 21 Oct 2026 22:14:49 GMT  
		Size: 220.4 MB (220418185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1ac1a78e7aab8d614181e51c09e193063b98c494196690a706787e6fe084a56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd983a0211f8a3b75e6080e12ba7f51ad90bd8c717044086538edd10e89bb6`

```dockerfile
```

-	Layers:
	-	`sha256:706989a6f697b9fe7accf72ecf58a285aa52438714d638280d5d6eaf317d119b`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 2.6 MB (2608515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a62fd23ee8574b433e0645605f078231fe959dcff93eed17d3db67a14cbddc`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:30253e8cecde5e4b43a7e2c7c731471a633e9bf30725e7b3327f9f95ad1d3638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247566533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a998347e24197a47498280d9e143eb9e3159b9e14bea3e1b7cceedeedf457279`
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
# Wed, 21 Oct 2026 22:46:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:46:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:46:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738175439a0e646d917d0bc2f6ebc3876d0366f103d7644dd13511bb012102a3`  
		Last Modified: Wed, 21 Oct 2026 22:47:23 GMT  
		Size: 218.6 MB (218626772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc71bbf4904cfa9f9c87aa022a0670501d27e46495606ab195ca049f2a5cd1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd52a06e100e81e9163f38cf7df611e7b701357ad02697477048c02678a4ca49`

```dockerfile
```

-	Layers:
	-	`sha256:855eb9bbfae96f542b29ef3dd423b7b91911e4cace71898632056782112fc904`  
		Last Modified: Wed, 21 Oct 2026 22:47:19 GMT  
		Size: 2.6 MB (2609127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d1f0cea20608a08bbc465c441ea8ee386938c9c15d957186fea2ab23b3ce1e`  
		Last Modified: Wed, 21 Oct 2026 22:47:19 GMT  
		Size: 13.6 KB (13589 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:78dcdbdbf7b1ce012d0c999c9f62b948b17842a16118011f3b17671ca4fb718c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254727458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb3d246101740aac2239b5e58d00fe80020d7b7849010de17277e487310f1ea`
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
# Thu, 22 Oct 2026 10:06:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:06:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:06:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa599e2b5607d6c0d116f8b967244b45c47e703baaededa81d4c866ab33f82f3`  
		Last Modified: Thu, 22 Oct 2026 10:07:44 GMT  
		Size: 220.3 MB (220349468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:38b5a319ff0a413378403aee51d741de560474fdc046524c9db0d700a6338560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d336023e250ebaffb267bb4dd79e0f4a2e18b1b5117aa9c8881204e68c9b097f`

```dockerfile
```

-	Layers:
	-	`sha256:759a8f50b331a1a7a97ae4bc31875aab3aa4177d32010dd89f448179a7c06753`  
		Last Modified: Thu, 22 Oct 2026 10:07:40 GMT  
		Size: 2.6 MB (2606115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:163f571040337b1c002c6a5bb57f9e565760a19efb06a6d8c36450d8d5c8d9a3`  
		Last Modified: Thu, 22 Oct 2026 10:07:39 GMT  
		Size: 13.5 KB (13457 bytes)  
		MIME: application/vnd.in-toto+json
