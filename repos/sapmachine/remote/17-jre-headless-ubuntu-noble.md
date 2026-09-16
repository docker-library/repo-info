## `sapmachine:17-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:f7bc7466a637f258fe5dfd8ba3506821198826cf301bfc591b620d5ccd6c6ee5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:a896777226e06722a6ee73c072b0c6744777fd317313b46c14fceda4daae443e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86180399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9839d884e2175cc7e15501c4363dd6f6ccd35ac575fb3df7fccace9b6b6d997`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc846484477e14993fc5933fbb8b0cbb1de0f96faeff305a87a62c903acc26e`  
		Last Modified: Wed, 16 Sep 2026 03:31:56 GMT  
		Size: 56.4 MB (56416283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a72981bbc7bb42aa5e91fa8abb73c1591a2b848dade12d94f73fb0d76801942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7209f909ff0b3b861b0139eed693b780e723883954f59478ae722053266d4483`

```dockerfile
```

-	Layers:
	-	`sha256:6332f8bf168fed98ea2b14b300f082a6e9d792ebf00538d61e80d473d3faaf77`  
		Last Modified: Wed, 16 Sep 2026 03:31:54 GMT  
		Size: 2.3 MB (2273694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fc09fe78ed230d825aa06b8afcf7aec10f2846ca795f0473d1d4abe913494eb`  
		Last Modified: Wed, 16 Sep 2026 03:31:54 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b14d585389a726c4e37e59e361cac00c15510012753b1f64625b09d509705235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84830238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062afc6ea3d6bcfce50aec8c4327c7839e81f662f2e89b9cd6268c8166618637`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44161cad729369a4be5d020cafb0b659f362cb2b667736fd8cbe1b86ac1f7e70`  
		Last Modified: Wed, 16 Sep 2026 03:31:53 GMT  
		Size: 55.9 MB (55888658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:236adc7286117d20895a47623ad44dd96e24c62def1569bf964e6a7c2dcb9c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a6315b93a6160895245e9c04830575715d51f7ecd7cb4745f86f9c24a23c02`

```dockerfile
```

-	Layers:
	-	`sha256:c8c0f7f29aecdb52dfde9d7a769508d1cea4177545c69777fd343a5f3fb3b6a0`  
		Last Modified: Wed, 16 Sep 2026 03:31:51 GMT  
		Size: 2.3 MB (2274201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:172ca65c742dbb458e6676552a1d0d4e5cacf2bbd64bc85ea3dab7454e1cfeba`  
		Last Modified: Wed, 16 Sep 2026 03:31:51 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:11bbd2897ae62aeedfbd17014498648bd73264f06c455bd3ae4488671411d7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (90030948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7a4e7f5629a99ad1764b4a6ff65ae7c277926c8e0057879dbc447ec32f00ae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:37:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:37:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 04:37:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830d9b8069bcabf43557bcfcf52bf6a8df7d1508e14bd39de243b33176d6d6e6`  
		Last Modified: Wed, 09 Sep 2026 04:38:43 GMT  
		Size: 55.7 MB (55654069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b5f6516d6ac6b3a453ba6fabbcb0cde57e99089317523b49876aa3619a0591d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9a19d353fbb003c3d3c1013d3923ceb2b14d7bc124e1e1ec4445f060d217ef`

```dockerfile
```

-	Layers:
	-	`sha256:ff2cb132ed38182c41d0d3a089fa09394d1fabae86e467d3cd8e4b7c9fc28268`  
		Last Modified: Wed, 09 Sep 2026 04:38:42 GMT  
		Size: 2.3 MB (2273111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f7ab7a7d35798facd8f1636c40d515de3261b82311f6a3245331592e8716013`  
		Last Modified: Wed, 09 Sep 2026 04:38:41 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
