## `sapmachine:26-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:cbc8539d447f3010d375c165eab326483557512e506707f8a858d032ecda56f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:386e4f1ff11cc1e7e75faf7af26e832e4046420fb3b803fab028b12554a9302b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171046181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3faf7ccaef64b2f3dd4c916e2892dbb37d4024d1d20aaf055bc0ed8cccbdfd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:40:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f8e09884ef6297d49e0a6d12ef31dcb6fbc102198307a4b6ff6d440c52ee4a`  
		Last Modified: Wed, 09 Sep 2026 02:40:48 GMT  
		Size: 141.3 MB (141282928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c4cb176785e720f47cd94c8ebebbc92c3560a6c13e856ca3108caf7cec2d688e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55808488cd3dedfaeda471af1369c2e244263173426047be1ad7584cc398361`

```dockerfile
```

-	Layers:
	-	`sha256:7fce0f5a4c9aa176f9ae2b109f6f51d691dc73002880740496f363894814a948`  
		Last Modified: Wed, 09 Sep 2026 02:40:45 GMT  
		Size: 2.6 MB (2553366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7c821cfe9fec7adf1d7eb3a1e2509d5c3d35dcc25767a9a3f9dfa295a896432`  
		Last Modified: Wed, 09 Sep 2026 02:40:44 GMT  
		Size: 15.9 KB (15872 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ad505cddb2907ddc27209b53cf67241b51b0797f1374a77b209a1b48929bed99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c326d755c5c6a9e9c17486252c0f9d5b30e525f5c4177f3035d52376122238`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:35:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4583adcbfa8b6c6d5b50f65ec6607618b13e302be77ea9ad6f36287918a47a`  
		Last Modified: Wed, 09 Sep 2026 02:36:10 GMT  
		Size: 140.3 MB (140341954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aadc6271013b913515e858b9c4546718bf10bc93e91bb2f431d4ac49efe6aacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2570287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f301ba51f529ccd87afb5ebb24be839c3124cd885cd570b9a455b8112388b6d6`

```dockerfile
```

-	Layers:
	-	`sha256:deba8991e73f9823cc5e5bd83008e0c8ff8baaee2c3c8893891a6d580e3f4675`  
		Last Modified: Wed, 09 Sep 2026 02:36:07 GMT  
		Size: 2.6 MB (2554071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7491b65f0927aaea8f1264872a37a3c2cdcefd97f9041ee6459af452452f1517`  
		Last Modified: Wed, 09 Sep 2026 02:36:06 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-ubuntu-noble` - linux; ppc64le

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

### `sapmachine:26-ubuntu-noble` - unknown; unknown

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
