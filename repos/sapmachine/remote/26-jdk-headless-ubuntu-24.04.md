## `sapmachine:26-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:c990dd20a5534aeec215b557ada6da27ab35ef45ae5d4871e851300259c75f9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:451b7d6f0b195f4d0a468e7e1eec38273ffc5b6b7f5cd59e1804ba0fb714c405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169549328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715ea1e932caad6a33381a16093b45186262c982ed24117b2a2065367cea1801`
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
# Wed, 16 Sep 2026 03:30:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ea4cb4efba13a8c8fad22c963d64d52fba55203fc235acb705ea6f2c3c3df6`  
		Last Modified: Wed, 16 Sep 2026 03:30:24 GMT  
		Size: 139.8 MB (139785212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4c4e8d452e8fda09fab3e85461808254c89ea3a758a65cd63aed4ec9e5c541c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede0b07cfa5ec2871471a9d838484e2562f8c40eb257dba3bf474b654d7f714a`

```dockerfile
```

-	Layers:
	-	`sha256:6513d47b442a3aaa45566c4561e4e19a3e372b21feed8d4ea7320e37f597466e`  
		Last Modified: Wed, 16 Sep 2026 03:30:21 GMT  
		Size: 2.3 MB (2302558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:089cf4b7bccbfb05d9509e63b5a55ef94630fc2bb73d2baed7f070cdfdee73b9`  
		Last Modified: Wed, 16 Sep 2026 03:30:21 GMT  
		Size: 12.3 KB (12315 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:40a66dd80e7093eb732c1f0845907698cdc7178193dd770611d02ea051f00c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167774617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166d031d03cb9dcdb996ca5aab01aa96b8cd8f3379f49a998bfdb4c150f87815`
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
# Wed, 16 Sep 2026 03:30:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 03:30:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2eb1ed53ae00ecfb551a29c20c533080dd9ac5827e9820fd431774ff20a87e4`  
		Last Modified: Wed, 16 Sep 2026 03:30:30 GMT  
		Size: 138.8 MB (138833037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2dea982ea29e30d7d7de5eaa277489c87a26f04f4156c445e5f8429400b4116f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ee016a73339eec997171c781a3ad4b3dffa61622beff3b9f03b5981788c277`

```dockerfile
```

-	Layers:
	-	`sha256:f11ad3fbf8524f23bb124113b64c82de31957df8b93ac21729278bc67dc7636e`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 2.3 MB (2303110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5fcaa03bf2cd61a220a76e02899971dd2144fcf98ae7d0acdf93810505315eb`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 12.5 KB (12515 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:718758e8053eb7453027f1a3788a635c88a8f0d0c9b21ac9faf3085527b8ebed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (173023323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c380b9ec2e4ef8e26a210ef4c2f0e623e30b44eb67b33123fbbb61ad1c635ed0`
-	Default Command: `["jshell"]`

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
# Wed, 16 Sep 2026 08:03:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 08:03:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 16 Sep 2026 08:03:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16143aa65019e6d57ec5a7a3e2027593e7a450f8acce99aa6555224956297790`  
		Last Modified: Wed, 16 Sep 2026 08:04:09 GMT  
		Size: 138.6 MB (138646365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b21276f454142dacfa8918172f3debc88b3700c1a8a2120e7014bea97b556074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fed39b08afa4b0254195ec6f9dc3803d8655f8e2ddede957adef83274bed84`

```dockerfile
```

-	Layers:
	-	`sha256:4ed66a3de64828bfd13af90add1e5df66125d66bd5a21fb47311bd10b0c41fc2`  
		Last Modified: Wed, 16 Sep 2026 08:04:05 GMT  
		Size: 2.3 MB (2301369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7b79e4267efb5f56780f1810205a50fcbb0deed9006bcfc54ba387358d0d674`  
		Last Modified: Wed, 16 Sep 2026 08:04:05 GMT  
		Size: 12.4 KB (12407 bytes)  
		MIME: application/vnd.in-toto+json
