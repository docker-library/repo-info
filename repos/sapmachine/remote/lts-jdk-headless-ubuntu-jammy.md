## `sapmachine:lts-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:1b863f20b28574de9fbb2ab70f569895cefc75b587c6cda912f9c378d5b1c32f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; amd64

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

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

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

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:cc5ee10562ac246cec0226487dde5a26859e4e3f1cf142fa8d4c341cb70af234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253930828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1507305257f195e291dfcc03d1265d2772c52569777b9d8589d992aa3610d877`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:35:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:35:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2c7e2a7426003d57cfcc7ae841d6bbd9f47f55a39390f25f21c210a4bea222`  
		Last Modified: Tue, 27 Oct 2026 07:36:34 GMT  
		Size: 219.2 MB (219226895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6cf283e5ce2457c83f90e60173fb670fef3803f2644acd991a54a5451183443a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c627e04b902a16621be0ae8de5b25c09abae44cfc28d3423c850ec8b931e581`

```dockerfile
```

-	Layers:
	-	`sha256:63e2667a94f0ab544e6ff926402255196f622a5468e4460f4d86b168711d309a`  
		Last Modified: Tue, 27 Oct 2026 07:36:29 GMT  
		Size: 2.4 MB (2365958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c26a34dabfe645fc9ebe05c326b1b4f02a32d49f0f66fca473b01885411e11fc`  
		Last Modified: Tue, 27 Oct 2026 07:36:29 GMT  
		Size: 10.4 KB (10403 bytes)  
		MIME: application/vnd.in-toto+json
