## `sapmachine:21-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:35a95bbd77a26c2bbf614ba04be58ea52c90f41cc9335be15b3953b80351ce53
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:b03d08fa5f083c0cb85a9d2502fab2845da6405230412d8dd88db3b6398cb9f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91690727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b67fb8684f3d624a73a7685309baaa80bcd6e2842afb5933d08ab564ecfd45a`
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
# Wed, 21 Oct 2026 22:14:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0497b901b3bf0dadc12337f3aff192b1bab0a1f9b2e6ac702d69321b0c7a0fdb`  
		Last Modified: Wed, 21 Oct 2026 22:14:42 GMT  
		Size: 61.9 MB (61938251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fe37d446becd2a8416e4419c6c6e8d3599ea9df8e93eaa8f2fc2e7105a0bf2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bcd68319e285b93ea2d53e91f68ca8110224acb93e5416b19662876ef91b60`

```dockerfile
```

-	Layers:
	-	`sha256:f11380afcaca0e1ba83e71c0e576214936c479db917320c94de5d5e53cff53e3`  
		Last Modified: Wed, 21 Oct 2026 22:14:40 GMT  
		Size: 2.3 MB (2296617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81c6520c120692e3ca18eac813edb4876b766e64cc8fc46509e1ac2127d853a4`  
		Last Modified: Wed, 21 Oct 2026 22:14:40 GMT  
		Size: 9.6 KB (9618 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e154fcd248d831b75346958bc3e982c2c7a79c65dca664e5e00a4068baa0d4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88781482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f0d6b485bab9de9ba44e909fbfc575c6aa2ddd04c285906bf7e073427b550a`
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
# Wed, 21 Oct 2026 22:46:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:46:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:46:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84c5462b2b4b12afbd334dfd5217f59ba4a63067718a5d827fd621c280dee03`  
		Last Modified: Wed, 21 Oct 2026 22:46:57 GMT  
		Size: 61.1 MB (61096759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b1e68188302890baed93ca6812bb5085b34935a1aeb7074ba094770066aa83c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c4795d46e8b738cb597cfbc66eadabb2409499910934d50678896d29f64999`

```dockerfile
```

-	Layers:
	-	`sha256:e4ff8092d136df883554626b17bb691935751e8de8d885d2fe4fd80f26d73e7a`  
		Last Modified: Wed, 21 Oct 2026 22:46:55 GMT  
		Size: 2.3 MB (2296289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dbe37e8c4821432ef26211ff4853bdb74f9b636e90790b3c9b28c6febfc5408`  
		Last Modified: Wed, 21 Oct 2026 22:46:55 GMT  
		Size: 9.7 KB (9723 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9a04675791d55ecd535c01639c8e79762660877437034c9b5da5e9e4b7de6c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96067725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ca04e7fbc9c2eecd510efaf3eb39b46456d20ff6148c6d3f2c3c8293d0a609`
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
# Sat, 17 Oct 2026 02:45:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:45:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:45:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e5667228afbbf1ccf6881ea92fdc9e6ef6dec07cc6e5d4630e9cbcae12d963`  
		Last Modified: Sat, 17 Oct 2026 02:45:57 GMT  
		Size: 61.4 MB (61364088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e470f94462685d1f01fef786cae4114734daf3f7b54a90cd0a0c26a4853e6a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770d5b463d3e6e2255dbaa5949801c1cbe2b2f1830e17665724cd197f98b8871`

```dockerfile
```

-	Layers:
	-	`sha256:786fdee1c3548434794c488ad5890d80770ee2e068e9e842a060d815d9a2da66`  
		Last Modified: Sat, 17 Oct 2026 02:45:55 GMT  
		Size: 2.3 MB (2295417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d1cad40895bf1b125c59e28caa86ae72ffd2674246ebd5262063a55bb92b10`  
		Last Modified: Sat, 17 Oct 2026 02:45:55 GMT  
		Size: 9.7 KB (9677 bytes)  
		MIME: application/vnd.in-toto+json
