## `sapmachine:lts-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:33cfd00270b9a812f99b88e52a1789eab5bf5a93eb77f429131dd846dab2f810
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:294b849196d9a384ef1f91b268546a5bc08af65d67cc81b0ea800cf5268a5afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252905694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de1327f8d091cabc0a846a6192447f11794c4789218e7da8c09150c248f01dc`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 23:40:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f34ff74f01ee9cbe0cb7c81dc9ec94ab295c36540b039a9a162626e1f3345c`  
		Last Modified: Wed, 11 Nov 2026 23:41:05 GMT  
		Size: 222.8 MB (222836161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3a4a95e3f8bb75138d084c51f9bcbd87ef453a19b840879d24d366883d53deb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2380023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492c311b31acc610e25bdb0e8acd51c275c98d5bb84f3e913b05bb2121785493`

```dockerfile
```

-	Layers:
	-	`sha256:a7a19048faa881ab614906d47934d67caa6b180d7376a48ec1edc3e7d9e19608`  
		Last Modified: Wed, 11 Nov 2026 23:41:01 GMT  
		Size: 2.4 MB (2369676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dd8c88ef7b453d110f094c786317f76b5c55b69fb3e1756530007e0e53e16b6`  
		Last Modified: Wed, 11 Nov 2026 23:41:01 GMT  
		Size: 10.3 KB (10347 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9f82c1711f0c31ca3f05f1d0bdff420b2250207be2b479027f95b3e95421fe15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248562342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00052f4c809c132fe2d847e9dac4c3cb2c939cd75a29d2914bd0a7712a4f2c3`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 23:43:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:43:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02249990f26d9c26cbc760543bc2cc222f12ae57e06241cbc3fd17ffb7c866e9`  
		Last Modified: Wed, 11 Nov 2026 23:43:47 GMT  
		Size: 220.6 MB (220560930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ce173fc78244fe3c0c654bec168b73d5bf7417c90fda04d2e8018eaee29fd7ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a499e783a73b1aa31a3f561c770b7bc56057ba31fc8e74ac72e9859e925e67ce`

```dockerfile
```

-	Layers:
	-	`sha256:f558ad2e9267322b578c32b9d95f627f98ca4d364e374c57d84d0129ea7a7938`  
		Last Modified: Wed, 11 Nov 2026 23:43:42 GMT  
		Size: 2.4 MB (2369369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becf32a014f0c19b264da33a70e842838430322e0baff3700a04d65d6b1cc2ef`  
		Last Modified: Wed, 11 Nov 2026 23:43:42 GMT  
		Size: 10.5 KB (10475 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e4c321e976fbcaa6ad05a7d50b3a06bef60a373c8688696a6c50922b5a16ec27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254244951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fefe872ff272742f55edd4f37f1d238e8ad517e28602a195e24d1b3029699ee`
-	Default Command: `["jshell"]`

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
# Thu, 12 Nov 2026 05:01:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:01:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 12 Nov 2026 05:01:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321e3d83e1daa6cc6226c815b99c9c760d48489464f8d14282f87e9fec5dbd37`  
		Last Modified: Thu, 12 Nov 2026 05:02:34 GMT  
		Size: 219.2 MB (219226851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a4eea29dc511359122e74a159950955d268d92ed223085f1b5c3efde1a822f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee4a6a6e697b31b1c3b64405879ed47dc4f6172bce599f9e0f8d365a7f21ec1`

```dockerfile
```

-	Layers:
	-	`sha256:3ac3d2fbf73b0f578eb19f7ceaf7752e7946f09d9e0330d61c2e6a4ad72ffed7`  
		Last Modified: Thu, 12 Nov 2026 05:02:28 GMT  
		Size: 2.4 MB (2366566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a3f07fae1cf0c0dc75a98271099ae1f83b610be1c2a958740714d5d1c8d0bc`  
		Last Modified: Thu, 12 Nov 2026 05:02:28 GMT  
		Size: 10.4 KB (10403 bytes)  
		MIME: application/vnd.in-toto+json
