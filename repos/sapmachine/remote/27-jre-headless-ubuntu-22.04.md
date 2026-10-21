## `sapmachine:27-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:116e4e71de778104abc674f5a6a8957803b9d9068edd21aa90ca8624617c7ed2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:42ce73b1824480eabd0ff2bc1b07ae4942044efa0f4835608f72e10f3ad707f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88689443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c87a2efe8f4b9b64f3243f4ba4765d5203fea69e5c252dc80a0c9691d5b9e5`
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
# Wed, 21 Oct 2026 22:11:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658f09b0cf5249522bf4e4e3ebc4d33714c9f2a7869fdd6262a58bd184fbc5db`  
		Last Modified: Wed, 21 Oct 2026 22:12:08 GMT  
		Size: 58.9 MB (58936967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d94b7c305d5ba889905f763df99485b5a3ea949809e67cee6ff38688371cebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd362e63967966640aa8b630d441399655ee6cac7a7c3251cee3e49ef0828b1`

```dockerfile
```

-	Layers:
	-	`sha256:30857dd83d16cc4376af736225059567f86470442b7a48ad3cb92e72d43c93da`  
		Last Modified: Wed, 21 Oct 2026 22:12:06 GMT  
		Size: 2.3 MB (2299902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9fada58269b9bac4a602c2a911a532de966e7439220a8df84eef2f54afd5797`  
		Last Modified: Wed, 21 Oct 2026 22:12:06 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8b6d4856e435566f6aa0589d6809b8145608c0f05fb47de8861e5e46d4165e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85629586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f73ca90e64f335003bfea98f63489c9a964ba2e5f101ee6985ebababcb5ec9`
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
# Wed, 21 Oct 2026 22:45:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:45:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e152d3f9893e2034c957551932ba4b459b23f2c27aa6acd576a92fe0b07dcdeb`  
		Last Modified: Wed, 21 Oct 2026 22:45:18 GMT  
		Size: 57.9 MB (57944863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e5c032b76c30289409da1499cb4eabe311c88ecbed11a4d8501e0a79ccdeb1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fe9dee15ff47d9a1d44573e2df2e6855ca9bc5876dd0bce6d12b163a5c9982`

```dockerfile
```

-	Layers:
	-	`sha256:726ad6bd7790e9c9713cd61ec96d9443fb11cf028f56f954b9870835df40f84b`  
		Last Modified: Wed, 21 Oct 2026 22:45:16 GMT  
		Size: 2.3 MB (2299595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f2390c4aa2fcc0812213a01502dcf44b3ef652fe801018770edd45e4c76569`  
		Last Modified: Wed, 21 Oct 2026 22:45:16 GMT  
		Size: 10.4 KB (10429 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:92f47343b0e6430da3ec54f7b6d41b2c94f3b9cff688adb0726f68f1826936be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92695458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeebb4696fdd218bc113168c5796f24f9494b33c76d7e1b8b54e1963aa6b838f`
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
# Sat, 17 Oct 2026 02:24:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:24:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:24:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e97366d78368934a7236e0d0ac1ef388917e47bd733ed62fe521ef0eeb31575`  
		Last Modified: Sat, 17 Oct 2026 02:25:18 GMT  
		Size: 58.0 MB (57991821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:920225fdd4eb5e7e0079557d6832d3d0433ce609f5388f6b3f90ff1ffa3198af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2307604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fdebe3e57d4b9ff2b670ac2c3d0879f1cb6df68e89fbc9c41e162791afe6ab`

```dockerfile
```

-	Layers:
	-	`sha256:3aab98984a072c7e2d41b9a4cece9c36c638c1d2f375685b77bc20573108965e`  
		Last Modified: Sat, 17 Oct 2026 02:25:16 GMT  
		Size: 2.3 MB (2297982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6390a3737ef52e991b2ad90b158bc860caff334750cad0edf23099bba1396cc3`  
		Last Modified: Sat, 17 Oct 2026 02:25:16 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
