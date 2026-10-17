## `sapmachine:25-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5a52136c75c06068a5d49083823b1808b998fcf837ee9bada73a0370b136cafd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:2f09191edfbeb65a54d1a8a27016e74a9b6ddb6248647e8618dfdb1f886dab46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90273586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46eda8d5e25840f500141c5d62e42be0d7da5b3c6876ee0c85e6a6442e69126b`
-	Default Command: `["bash"]`

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
# Sat, 17 Oct 2026 00:39:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef64c6fad98336462249840dcb9ed106f62ee42ccfccaa4fc14f2e2d29d82d9`  
		Last Modified: Sat, 17 Oct 2026 00:39:34 GMT  
		Size: 60.5 MB (60521110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fb30f0b8c645ee8b1aefea375edfd2c6812ed49f1f485e1c49264170841ec469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1414b693e5cbd7fc5c69ecb0a615f2ea9f99d12939c445ee6d2c1192d2d4da8c`

```dockerfile
```

-	Layers:
	-	`sha256:f74a0cca35043077f9dca64be0e3f43d51df1855f6be608472bfa2d4a95f064a`  
		Last Modified: Sat, 17 Oct 2026 00:39:32 GMT  
		Size: 2.6 MB (2553815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b928e845778bae82fcc180b8c9e7d9408ebb3a60f5db003f74e9cc0265964e4`  
		Last Modified: Sat, 17 Oct 2026 00:39:32 GMT  
		Size: 10.2 KB (10185 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:67a0022ee84f215cea6534f5e8594771a4683653be288008916f5f3c686d847c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87125461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067f1d7cbaa778d0a73ddea51c2822a20c9e9349e34febf1815a8ece49314b6c`
-	Default Command: `["bash"]`

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
# Sat, 17 Oct 2026 00:39:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec4e8be9aef0a3c8c17f047c884c2a4f0d589e46dedf79c8a7cd8e125f550d1`  
		Last Modified: Sat, 17 Oct 2026 00:39:21 GMT  
		Size: 59.4 MB (59440738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dc050674283c6ee7e42c796bfc7e773dfd8e235dd3c9f5bf1e4d5848ccedd896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645c60e4dc70233cc07eae049b81485389a8355fb06161c44e40be75d5b191cd`

```dockerfile
```

-	Layers:
	-	`sha256:e417f8c855ac7fe9c5f969818051691faea6523ef3590461d11009e5028c56b6`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 2.6 MB (2553518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9c822a6ee18ac63b79d3a79e028edf8655b3d217a0fc1152039a5fea302483`  
		Last Modified: Sat, 17 Oct 2026 00:39:19 GMT  
		Size: 10.3 KB (10313 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:890d9e98a8592547be4e42a25e307b8ad1c7a274054ec7e8c4da5a065d2fc83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94343767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb3d6f6d21f1148ffff2cba38395f2017008351ef9a3f0e59b3886284715901`
-	Default Command: `["bash"]`

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
# Sat, 17 Oct 2026 02:35:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:35:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:35:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba6af018aafe30bee5fc45b975d45f221945cf683a88ac2f5183310aced7060`  
		Last Modified: Sat, 17 Oct 2026 02:35:47 GMT  
		Size: 59.6 MB (59640130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:890c8b20952773174885fa48159e04ab8eaf3fc963e15cf8dc963774bd76e329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cb337fd8c20ba72cd44605f5607f697d24f108791465b9c8644d5c1bf13ae7`

```dockerfile
```

-	Layers:
	-	`sha256:01fdf8edf3a4b0079dd5e15c44cfd4b9ac73f2f8722e7dd314fde03a73b5e4a4`  
		Last Modified: Sat, 17 Oct 2026 02:35:46 GMT  
		Size: 2.6 MB (2552729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41ef7145ba66309f8b20eb5f85295bf14fe112e852dc84d5f808dea30112836a`  
		Last Modified: Sat, 17 Oct 2026 02:35:45 GMT  
		Size: 10.2 KB (10241 bytes)  
		MIME: application/vnd.in-toto+json
