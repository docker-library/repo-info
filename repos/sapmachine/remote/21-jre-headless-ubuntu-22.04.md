## `sapmachine:21-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:55b30f889dce5f44db23b34c00f50897f119522728f9946fb072996be07651fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4926716b2b6f7ddb9cd98f4db796ba050dbed97116a17442a77dbdf61ee429c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92046394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36eb3d9c186aede3c52560f61e213310579d17a16f580d71cdda4e0800e9db0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:42:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:42:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9c5d32d2f53a0986f923cc43fc2c2f217632aaea70faf4e68563895a4813f3`  
		Last Modified: Wed, 18 Nov 2026 16:42:14 GMT  
		Size: 62.0 MB (61976861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:125a5bca1db2c7ef6a5c56ae0a6d92355357e2895206ab08d37e9ce3c3bb11e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b62ec9325a7d4f93937100f6ec7d52a09f28a6eeddcdd3c0d85d1bd6ad32fef`

```dockerfile
```

-	Layers:
	-	`sha256:8f5e78421cb3d1136cc6f82c28e581ac9d6cf7332f3aacdda4936b09745799c9`  
		Last Modified: Wed, 18 Nov 2026 16:42:13 GMT  
		Size: 2.3 MB (2297253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c378e888bd89654e86f5071b261701e0809fcce7f88acf19aa7554a2a7962e62`  
		Last Modified: Wed, 18 Nov 2026 16:42:13 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b4e1a24855fe1398cae0addb808d9304e02429c35b04b2d1d1ff359c6d5f773c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89141271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191ed544274b10b2c02e560b7794c131bc086a86e4c2542a68b3bce9cbffd614`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:40:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:40:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:40:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ccc8c31d58fe87dc9c71078ff027794209319111ba370d1b393ff2941d97bb`  
		Last Modified: Wed, 18 Nov 2026 16:41:02 GMT  
		Size: 61.1 MB (61139859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:16108fd78f2b18b1aa24f098cc607475ee4ca84f50f1dd1c7eaaebf0b4da0cd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a05c15eca31a74e69913e8a97a8ab9acdd4ebdf014e7bc62a2b4eb8c72bed5`

```dockerfile
```

-	Layers:
	-	`sha256:7354247c407c45689adba4cfaf56818228b96398e02c88edc12cc693ea0adf9d`  
		Last Modified: Wed, 18 Nov 2026 16:41:01 GMT  
		Size: 2.3 MB (2296925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd343fec32b58507a98ec315351c68b0fc7c146f18643c312efc66b0b77430c6`  
		Last Modified: Wed, 18 Nov 2026 16:41:01 GMT  
		Size: 9.7 KB (9737 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c91bcf93e4b9822c9f058c4ba6a4d47705c33fed2e1001a4345ceb2507b14560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96486133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592231cfbcc7f01b90fe9a270dc8552e47b17b305b6deedd2931c39382dfd84c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 05:08:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:08:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 12 Nov 2026 05:08:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a389d537f036c6303665294d74c336ec3e06a55a2b47425405b2885d462a046`  
		Last Modified: Thu, 12 Nov 2026 05:09:09 GMT  
		Size: 61.5 MB (61468033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e1edc278a93a8fcb8f4bd660876532024a8a1892db6c2c5130287ff6c571cbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e4c459cadc49b2feaa05b55e0d53e7bd05232bb522dee6521d6f66602f7568`

```dockerfile
```

-	Layers:
	-	`sha256:b7116d5f448ba166a236c702a68e68f21a96ec5ef663a53299a0888008c70c14`  
		Last Modified: Thu, 12 Nov 2026 05:09:07 GMT  
		Size: 2.3 MB (2296711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38e69a22d38fa780f3ba09a439a6a3aebc9a890b220dc9e6e6affdb0eab3c998`  
		Last Modified: Thu, 12 Nov 2026 05:09:06 GMT  
		Size: 9.7 KB (9690 bytes)  
		MIME: application/vnd.in-toto+json
