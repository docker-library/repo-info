## `sapmachine:lts-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:e0b93787a275de186107110b7a1cb914a3ae341af7700a77e362225dbdd8271b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:14e8caa9c6b88bfeed150f04eec110572fe283ed164f975a8eed334e737def80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90652876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45d05e4e01cc750ce28246fb2f24350aabe718cb579747e8fc1694e1a6da42`
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
# Wed, 11 Nov 2026 23:40:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb5c88b0b04cdf121f5e089fd67cbb5d9eeeb17db27fff6089d2e5a307d06a2`  
		Last Modified: Wed, 11 Nov 2026 23:40:47 GMT  
		Size: 60.6 MB (60583343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:82cb54d0a925b968f4d00fbb4edd8aba075684537aa57c054bd8845e52166746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bee14bff78a98b1ce6083d69544dac1a79b620db6c74404119516756a5ec8f3`

```dockerfile
```

-	Layers:
	-	`sha256:39a197bb4e1062d215bab0ed53dbaa6098fc303cc202c1a69c1363d9dba393fc`  
		Last Modified: Wed, 11 Nov 2026 23:40:46 GMT  
		Size: 2.6 MB (2554487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9398bdefda6f7d0f273283c19d569bfed1b5d823505c227324ff57c0f9a6ad33`  
		Last Modified: Wed, 11 Nov 2026 23:40:45 GMT  
		Size: 10.2 KB (10195 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:96173c2204a6794b9626d26bf82ac0e73c4bb033cff2c96c3e8fcecae3f27e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87494907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d00a0db32c0bec760b7bf6b8d7f87c8908d53c8306fcdb1b33c32bde07fbf2c`
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
# Wed, 11 Nov 2026 23:43:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:43:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcba3050767211cb916ef3e0dc83765d0401d73099616df74c0fb621ddc795c`  
		Last Modified: Wed, 11 Nov 2026 23:43:18 GMT  
		Size: 59.5 MB (59493495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ddfe0e4b918332c45c1a885836c113b6dec0a43763025779987c3b321c097ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da858df7791c138402396ca58377e23aafe0a52afd5f340f3d7756c655969d9e`

```dockerfile
```

-	Layers:
	-	`sha256:e73bb32cafda25e857461d2cb48f72efe1d4cad0098f1dc94706be6288a4ddec`  
		Last Modified: Wed, 11 Nov 2026 23:43:16 GMT  
		Size: 2.6 MB (2554190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdf7a4c1d79b6ebe5c692efaee37eb9e942204b3bff92cfedd125458ac4f9a2c`  
		Last Modified: Wed, 11 Nov 2026 23:43:16 GMT  
		Size: 10.3 KB (10323 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1401551b43a9fde338107d7c2c543fa49989a6ea8ae4797a505bfd599a32fbf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93576809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948341593c16f929f52198390eddbf59d3aa07e0b74fffeba388c9b4f11bbd6c`
-	Default Command: `["bash"]`

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
# Tue, 27 Oct 2026 07:34:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:34:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:34:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3012dcc98ce920309488b8e644dd31e38b8475ebbae2b850a18e349543cacab9`  
		Last Modified: Tue, 27 Oct 2026 07:34:48 GMT  
		Size: 58.9 MB (58872876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cdd388c23c2c216e759414746c9c9ceaeb6f3ea47bd19a1a4f6ada6fab5d6135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fefc0ba2e3b65895956b6251e575a8db4521acd6dafd9caba541961983a9e8f9`

```dockerfile
```

-	Layers:
	-	`sha256:1b38a21f15b5d724e7ae3707239fbbe8271aff7332e69e673934ce103f9d0f16`  
		Last Modified: Tue, 27 Oct 2026 07:34:47 GMT  
		Size: 2.6 MB (2552793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab9dcd6d386393b1b8f9b3e284a8231fad3c7fb5f5ac382c56f42838b9690c4`  
		Last Modified: Tue, 27 Oct 2026 07:34:47 GMT  
		Size: 10.3 KB (10251 bytes)  
		MIME: application/vnd.in-toto+json
