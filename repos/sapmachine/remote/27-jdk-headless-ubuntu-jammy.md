## `sapmachine:27-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:58cff2e0408b3369311b298fea6a51c4b9465f9016eab2b94903793302a2f43c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:a2f1a75669933541162f7cd270e79f73b08df312b5c15164fecdb7575a2f7f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167465163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b6430b3290de1be064c21e66b910c53e6dd4b188f3a75db039e108dd8e4bff`
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
# Wed, 21 Oct 2026 22:11:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fa7e66c230575ed0e7121d2fd53df202507459e50b03d0f1b8f8c43a17c54b`  
		Last Modified: Wed, 21 Oct 2026 22:12:10 GMT  
		Size: 137.7 MB (137712687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8b1b2e95089dfe3036e46d9c23514d261e1626b75868e3417007b7d15d337bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016fb0e8b1e1cef2d5b2bc8eea80f84e3ea63a329344a249513de3cceacd4621`

```dockerfile
```

-	Layers:
	-	`sha256:66de9f34a3d7e4d8d356cc96528da5a21fbdf65333adfb398704ca722c5a4f14`  
		Last Modified: Wed, 21 Oct 2026 22:12:07 GMT  
		Size: 2.3 MB (2321274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d441892fdfef52fe8000b3dfd3a85cbb03fbd03ee8446547323a4fe36283df74`  
		Last Modified: Wed, 21 Oct 2026 22:12:07 GMT  
		Size: 10.3 KB (10307 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:50b1a78010219bd186bb544118a9b7d6674320d44e6da5888b7130485b2514b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164444344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22dbc394ed2fc3ea12db866af5af2c841a721553aa32d87fe4473e5367be65b`
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
# Wed, 21 Oct 2026 22:45:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:45:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff6674af16422a28da634c90274ffff8988c9f652e7eeff4a47dc86bccda6cd`  
		Last Modified: Wed, 21 Oct 2026 22:45:26 GMT  
		Size: 136.8 MB (136759621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fb6c997eb8b36902bd2da06b1a819518249e132f8c67931d9831aa9317cc67e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f4a7370abb152d318e1c9aac267e622ab3a0f59813c2433580f7bb55f30efd`

```dockerfile
```

-	Layers:
	-	`sha256:5c5c25eb1c7f885aa88b06a7c313e524ba4bab727ba4ef44a0a2efc52ceb26d2`  
		Last Modified: Wed, 21 Oct 2026 22:45:24 GMT  
		Size: 2.3 MB (2320967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbfc14e2db78b0477c559162c4891c895621520988fefff07341e2ab3f5f72fe`  
		Last Modified: Wed, 21 Oct 2026 22:45:23 GMT  
		Size: 10.4 KB (10435 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f7dffaad45376e516a7c2c97f5b4a78c11401f5c8f7076fce9a40165e18091b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171426141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5861fb1ab42881924e79826d3351f2699c806e17b9c9b480c754d501608e12b1`
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
# Thu, 22 Oct 2026 09:55:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:55:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:55:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede0d083f4ec8dee74fae27a78cca1105cd501e5e051bf86594dafb62a3a791e`  
		Last Modified: Thu, 22 Oct 2026 09:56:02 GMT  
		Size: 136.7 MB (136722504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ac8cf4699a5371103af4acf638d70cd6afdf5eaf5ea0bc8dee5233bdad033d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0753684c9a369b51320e83aabc801ff0264c615f61366b90ed70138e6b97b02`

```dockerfile
```

-	Layers:
	-	`sha256:f170711787c24f2186bff8316a8370b47a0b621a07d4c0805178506bce15df75`  
		Last Modified: Thu, 22 Oct 2026 09:55:59 GMT  
		Size: 2.3 MB (2320098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d034f49e87746d3ac333ce8af08859c6da7df53c85562102ef245b86f2b8db9`  
		Last Modified: Thu, 22 Oct 2026 09:55:58 GMT  
		Size: 10.4 KB (10363 bytes)  
		MIME: application/vnd.in-toto+json
