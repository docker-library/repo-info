## `sapmachine:lts-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:9ab53b8cee84366609d5af62e828e6f6d2a924b9a245f046e67a5552f86bee9f
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
$ docker pull sapmachine@sha256:5d7a35df57d56bf03274177ed5067349323781a8f7c28df8c9141a4ed33201fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166542718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbd82c615f03482ccb61cbbd56e716e3271c17f8b5f82f336a777e61730cb64`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:13:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf75aa7a0a195242328cb5a78cce5764595ac7ce6b6cd18957dbaaaebfd2a3fe`  
		Last Modified: Wed, 21 Oct 2026 22:13:39 GMT  
		Size: 136.8 MB (136790242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:045b76091c0f33207d6f145d0f4f49d1a19cd37a8842d740d0ab843bec8f06b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c146d9cfced9cbc3e9e16d796a48e5206b756c4a9d16ee6ab1d4fed9bc012c4`

```dockerfile
```

-	Layers:
	-	`sha256:e6acbbea2b67d6b0f93002f3a785787478e162c826778b891c88fd5341772b91`  
		Last Modified: Wed, 21 Oct 2026 22:13:36 GMT  
		Size: 2.3 MB (2324461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aeb6fe046de72896ce37a90b4547ba0ab5eb9bddafc9c1ad140ef042c5dc62f7`  
		Last Modified: Wed, 21 Oct 2026 22:13:35 GMT  
		Size: 10.3 KB (10322 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bc3ea81f38dbadc976b73a04bb92472a793b1c9d7b79c7188b2c3c3180bbee75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163421319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5abd2864d2f5eb6db0817f62aec205917aa19c188c38bd12899f295aebe2c7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:45:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c9c85a9e500577936baf96330f7268a25e11fa4a242d002e2061adb4923e13`  
		Last Modified: Wed, 21 Oct 2026 22:46:17 GMT  
		Size: 135.7 MB (135736596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0b8545c1f02e0a44db5e4fdd29f33004c452ca8aaf5ced728cdbb0985002e791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b99e3be0930aaff4d1800cbc06ae0f2bf1fac44dee5005f56d789030ad956a`

```dockerfile
```

-	Layers:
	-	`sha256:86636a5176333b102cb74527ddd21155dcb2c6407632829fcee475a79cf5c4d5`  
		Last Modified: Wed, 21 Oct 2026 22:46:14 GMT  
		Size: 2.3 MB (2324154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd4dab0eb88fe02f9b54122bb6bc104ee4e018a0a0b5c629983b491e813da79d`  
		Last Modified: Wed, 21 Oct 2026 22:46:14 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5271cfd167683badee227abf25c99689fe6f2da408283c5d48fed8dc2b687d56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255423484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6ccc8f542925cdaa5f115ede6edc19ff5e08e4d2321b27772b6d2fb6e26c9f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:37:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:37:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:37:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2386022522a105b69f20d7ce1bed2520cc6cb7dabe94d6f9f127f12b74c832f8`  
		Last Modified: Sat, 17 Oct 2026 02:38:38 GMT  
		Size: 220.7 MB (220719847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d8773a5cc8a1470ee92216937324887585ee4455d71b9d5fd7b1c74f9521d9d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e3a13e9cfc2da9020ab7017b2aa0d07decff8b9df2d23378263b0212414c76`

```dockerfile
```

-	Layers:
	-	`sha256:7da32eb6a52f0807904725947f6a2aa109be0fca6d11af4c1405ccb20282791f`  
		Last Modified: Sat, 17 Oct 2026 02:38:32 GMT  
		Size: 2.4 MB (2366554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2960c2dcd10bf39d40f59ddf0c9e57409c06da3fe1d8301b3b0b377566f181d`  
		Last Modified: Sat, 17 Oct 2026 02:38:32 GMT  
		Size: 10.4 KB (10389 bytes)  
		MIME: application/vnd.in-toto+json
