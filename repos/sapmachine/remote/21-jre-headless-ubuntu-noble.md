## `sapmachine:21-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:e0f139bf09ccd818ecb2901819020cf358488fda849b545c9666ec409860ed92
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:86ba5f6ba517e20c2945cf9915e8eaf86263d8d563bd566dcafa5babc7eb681d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92002908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70271268126d7e2be86826e0339707726105631bf38d909ba38287ce9737c633`
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
# Wed, 16 Sep 2026 03:31:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e70efa98d66fa06f1760b9ba7a2875b1ba8a3f2bceb12faccb71591e575ab8c`  
		Last Modified: Wed, 16 Sep 2026 03:31:43 GMT  
		Size: 62.2 MB (62238792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e70bf4453b7d6dac2ba17c3358fd0e3876a3b5762593789e612389c09d40c2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4edd6bedb71663b9163f3ef3abb159fcf4947c55d7211c286e3c995029796c`

```dockerfile
```

-	Layers:
	-	`sha256:b01bb0ca145b88a9c353641ef28a25f1b29edf1cb92736f915b16252abab5dd7`  
		Last Modified: Wed, 16 Sep 2026 03:31:42 GMT  
		Size: 2.3 MB (2274700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90cfa5240dc45efdf6bdfa78b41d9d2f6f0113d1a04552800f948c7f7d2f19b2`  
		Last Modified: Wed, 16 Sep 2026 03:31:41 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3369daaf9fc5a64d42c35f8265e8ba1e16940a3fda9e3bd2eabca97277960c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90355562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddde522aeaa30137128038ec64c1859e445fb74692d5798e7c30c8bb29c0d7a`
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
# Wed, 16 Sep 2026 03:31:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026da143cb661f0bf4b0bec6718f022e41cb52898b0b1863eca7c4ccb025d70e`  
		Last Modified: Wed, 16 Sep 2026 03:31:14 GMT  
		Size: 61.4 MB (61413982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f2cf67cb928a10de69bc7bdaa4b106433451d401c4f024b1fa49468c9d21c569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42575aacbd6fda80a2d93fb8857803f773580662395c373d6e549099b7d115f`

```dockerfile
```

-	Layers:
	-	`sha256:9ea010fb894e7714ee28b6531e0951b8bb7ced019cd078e60e4553e02e4b5e30`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 2.3 MB (2275207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1953cbd408c3c20b41e69499669f9d174c4ad9488df05bc05d588fec5df9977`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9fd31491e04d0e526362358c0dc5d433ee07555b8954bf76b3422f227b9e9208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96223132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc9c9104b0e532e14c6a050d51bb90e65a985042a172a682d25848f9ab49a2b`
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
# Wed, 09 Sep 2026 04:12:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:12:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:12:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9a1ca6ca7af4fb6416907cb0c0f288ca148bb99cb55aefbb57a99b98668cb7`  
		Last Modified: Wed, 09 Sep 2026 04:13:39 GMT  
		Size: 61.8 MB (61846253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a3b9bbb360b3808293cb4d4f2950733da82cf8621fb04295039cde9b873fb581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0424ff92bfcb2781834210a719326762b1bde421c44157746109ca028975f4f5`

```dockerfile
```

-	Layers:
	-	`sha256:0d3405525b756cebc44aa57f10e507f70cd775e9910ccf0caeb0cb170069b7ce`  
		Last Modified: Wed, 09 Sep 2026 04:13:37 GMT  
		Size: 2.3 MB (2274117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92105305749837c147e433fe8ce1539ba2d9cfbb9bc662885e12e3a56df0cd5a`  
		Last Modified: Wed, 09 Sep 2026 04:13:37 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
