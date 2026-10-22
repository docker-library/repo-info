## `sapmachine:25-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:db9a4d0d394f003bc88a940a645b1b7446a7a8d69994283e91d2efdc987888d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:cbfe7a8d6450b166751da3c8b46f5fad1f9a0bbe1286a5fc2d0d75aa231979ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90302691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c4127b834fe6f9d7062b69de99c035f256b13f24a3380b5783a396834ef666`
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
# Wed, 21 Oct 2026 22:13:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9568f2bdcc85bd48b165c81bec127173ff3e956ada971fb4589732fd97563e83`  
		Last Modified: Wed, 21 Oct 2026 22:13:38 GMT  
		Size: 60.6 MB (60550215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f24f53eb33003fa6003ff3df700ce45d8d2bb64181147766993f8ba059811e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db973ccef41dcfe063c846a56f61796bb94695cb201c9e090a03a80a28fe322a`

```dockerfile
```

-	Layers:
	-	`sha256:8f0fedbf9ac6a64f51d2622c9f4eeb98192f0be9bd5ecb2f7046d5abe439b7e3`  
		Last Modified: Wed, 21 Oct 2026 22:13:37 GMT  
		Size: 2.6 MB (2553835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba42ca95d643967029e761971178719fb6d8059fd160eea87d4e89cae218687a`  
		Last Modified: Wed, 21 Oct 2026 22:13:37 GMT  
		Size: 10.2 KB (10171 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1bbf649b801af2028625a81b3aa91e108219f61bdabcdec5fb52d17ad459d435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87153094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b48d1d25ecc1e81611dc65b4fa31254c25c5ccb2ff9ad2b0a602ddc44f81e1`
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
# Wed, 21 Oct 2026 22:45:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894af51663d10f4211480c20f12ef8215468f86718732e8b5a784de2cb5fe72d`  
		Last Modified: Wed, 21 Oct 2026 22:46:13 GMT  
		Size: 59.5 MB (59468371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f9f1667283aaab7f5ddb85f545786a6338b0a3e21d31e177c2a09d0f823c6450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a765bafce3ac2288490542631fd0b537f47ec5c2fd4f944af784a6859533d93f`

```dockerfile
```

-	Layers:
	-	`sha256:79a60072d76a01be7ff3e58287b5027366ea3923c9fd45097b929ec2bba1b8e1`  
		Last Modified: Wed, 21 Oct 2026 22:46:12 GMT  
		Size: 2.6 MB (2553538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e885967643070c2430912c35e9bc9f6be7808a4f28cde1c0eee92c4509d37dfd`  
		Last Modified: Wed, 21 Oct 2026 22:46:11 GMT  
		Size: 10.3 KB (10299 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-22.04` - linux; ppc64le

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

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

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
