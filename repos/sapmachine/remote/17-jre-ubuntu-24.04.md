## `sapmachine:17-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:2b48a6eb9be8b332a2dfdfc36f6ab2c68b1e422ddce191059aab6e28aaf6a65c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:acd97af7167fe20f9e1f4a3543c05b81e7e78fa33959af223a07c60c17a08dbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87794228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19adf41d91c3cb4274d7156194ba9bd77759f523e875f9d5883c09a71810145d`
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
# Wed, 16 Sep 2026 03:31:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3211d51317df7d107ea724ea49f20fce68a3ab8965ef95067ce88d45f333923e`  
		Last Modified: Wed, 16 Sep 2026 03:32:05 GMT  
		Size: 58.0 MB (58030112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8b5e77f7d4d407f4f104ee252062f802a4de62f3f8f0151fa31ce19053438ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2c1724714a08d450289340235d60105d1dc2262625499b7d8a2665ddf4387f`

```dockerfile
```

-	Layers:
	-	`sha256:1def344d65781d4734531a3da5154f0a4d41cf69097b069c23bfd3498ac69883`  
		Last Modified: Wed, 16 Sep 2026 03:32:03 GMT  
		Size: 2.5 MB (2520780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d78516f3e53520b94875199866ddfc5dbad0835812500cf5c20d8e42128c8a99`  
		Last Modified: Wed, 16 Sep 2026 03:32:03 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a3338732d97b528e73312d3f81714f265157bc5986a038a52da8126384198336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86438454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad29799d2d7ccfb62dcfa72b558512def1b49c4cb8e5a2e3ad371b15964d7867`
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
# Wed, 16 Sep 2026 03:31:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be19b8572a42025c708eb14dc42411de693350dc079c30b8406b782d8b446d3`  
		Last Modified: Wed, 16 Sep 2026 03:31:52 GMT  
		Size: 57.5 MB (57496874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:894ee5d0e2dada14a23bfaa17902e15bbe66841893434aeec44c86a180bd5c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e89ac5ad1eadfae0f647212d0ffaa0165a17b2c1f3835b9c3602affba351a0`

```dockerfile
```

-	Layers:
	-	`sha256:a8894326bd8aaee2f7106d425147041061655326ad51179b501e6149c00489cc`  
		Last Modified: Wed, 16 Sep 2026 03:31:51 GMT  
		Size: 2.5 MB (2521296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f8f1c39e73cba544887bfc53a797470be007c024f53316a982d041881ad4c1e`  
		Last Modified: Wed, 16 Sep 2026 03:31:50 GMT  
		Size: 11.0 KB (10954 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6ed87176a8e3a572c052b624b21a9420da46f7ed360cc8d91c9a513e7ce4a386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91901944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e86c464235457d7cd666c3cb94907feefbbaba14bb8751ad333b5a9e57237f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:12:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:12:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 08:12:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edafd09d2433ea2ebb4daaba383d5c9eacbda855c0c33f61e53c6c064681af9`  
		Last Modified: Wed, 16 Sep 2026 08:13:30 GMT  
		Size: 57.5 MB (57524986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fe6c49798b3616c2eaeb80b8af1e425aca9607ac2f2d70fc204dec4f303d5ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31bfd7a54c970bb4c200d34fb468bdbb902ccf7da5e473cf11b4a284db14be5`

```dockerfile
```

-	Layers:
	-	`sha256:f169c91e559f5019f91aa67a14042bc1d0b94f74e66ce5b98bb7a3d710e27ee9`  
		Last Modified: Wed, 16 Sep 2026 08:13:28 GMT  
		Size: 2.5 MB (2520278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a3a727aaa6c33f5099bbc531fb4ec6ec2e7ab9a97ec56b5a479d12f7aff2b23`  
		Last Modified: Wed, 16 Sep 2026 08:13:28 GMT  
		Size: 10.9 KB (10870 bytes)  
		MIME: application/vnd.in-toto+json
