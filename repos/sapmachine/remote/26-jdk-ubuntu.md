## `sapmachine:26-jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:ec88d30472b9b70147e45e3b0bc36dddc4b9c6ad786ceabfb7bdb4f13985f7f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:7ebed57aab3acdb0962f2562f57ca90dd987c2e75eea7c2ed25ad95b483aae1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171047121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2fdc29678addf1d6379acd0b378b129d726dbae4fa90cff453ae825631cb21`
-	Default Command: `["jshell"]`

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
# Wed, 16 Sep 2026 03:30:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7766cb973167a8acc2cff9f838e6a66643b3cae073abeb76111362f06b0ee5`  
		Last Modified: Wed, 16 Sep 2026 03:31:04 GMT  
		Size: 141.3 MB (141283005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5af93bfae2b6e3a5b5dbd39f3bb883c53ec13a105133def90a402ac43627cef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81f107daae4462e7305d65822af955daf1a317d459379da74f4cd8de82d5a8e`

```dockerfile
```

-	Layers:
	-	`sha256:20757a531f0800c02e56b5339ce3817e91cc9b6b40f34ef6f52722cb8354664a`  
		Last Modified: Wed, 16 Sep 2026 03:31:01 GMT  
		Size: 2.6 MB (2553366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bcf84ce9a3ddb2bad0832959b4c01f73c790502f9eea1fc15d53f39c743707f`  
		Last Modified: Wed, 16 Sep 2026 03:31:01 GMT  
		Size: 15.9 KB (15872 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c1ee0b6b9d12a07b19ecd02bf22cedcfc1eaf12758777c70a07595c8d4757c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169283396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc5a00d3568cf129428907b04c3d2440f6c5063d6c30ad4fe5ffd3fa753ebeb`
-	Default Command: `["jshell"]`

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
# Wed, 16 Sep 2026 03:30:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750938fac7fad919b31567edc77288e8e169f95b2bf3f5fd28dbe6d5918ac26e`  
		Last Modified: Wed, 16 Sep 2026 03:30:48 GMT  
		Size: 140.3 MB (140341816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:802c7f2472497864c68354ff428c9b0955e2c7baee49dce60e686d290b4ecc9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2570287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbb48ef40e8a358808dc4e081c2bc045b2fec425d767c40fd8e3814848a2188`

```dockerfile
```

-	Layers:
	-	`sha256:2dabd18aa29414b9b4c44ca09d982bd341eb0a6826d2e2ba96b8457126c1b05c`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 2.6 MB (2554071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24838322b9482e9516ccaf1098ce53d70ab98db62b3806587a147d12e01251aa`  
		Last Modified: Wed, 16 Sep 2026 03:30:45 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:897bccb4b97bb2f89ab6320b1bfcfdfd8dbe044318b0f99527038e3f4c5c37a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174756400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f3fa684d5251c6a63f721ed82efcd0744008e153d4dbefaef455d225b6c029`
-	Default Command: `["jshell"]`

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
# Wed, 09 Sep 2026 03:45:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:45:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:45:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18dc0242fedcb250177444872b031fb68334048a5cad184032a713cdab3c7bd3`  
		Last Modified: Wed, 09 Sep 2026 03:46:23 GMT  
		Size: 140.4 MB (140379521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0bcba091d02d870696d684abee5638356cfee2024a4f61419ebe19538d4b96db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50042eb3c490c5de0e84534d3c9474c51effbadc40f01a092f436d3ef64fa96a`

```dockerfile
```

-	Layers:
	-	`sha256:64ecda7ecc612ac70076b93a6face1ac38a22ed7461aa8d18a166d08c1e2c5c3`  
		Last Modified: Wed, 09 Sep 2026 03:46:19 GMT  
		Size: 2.6 MB (2552330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:143e8257021ea27650e36137a3ac0d7ad2a59dc6260819d9b94022a487b0b72c`  
		Last Modified: Wed, 09 Sep 2026 03:46:19 GMT  
		Size: 16.0 KB (16036 bytes)  
		MIME: application/vnd.in-toto+json
