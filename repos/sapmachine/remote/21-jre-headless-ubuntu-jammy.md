## `sapmachine:21-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5ecaf8108f6445c622fe722a6f7be3adfc51ae8b11ea2d42a296c587aed5e51a
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
$ docker pull sapmachine@sha256:38d6911abe90845fd01b699dbb786972809a80728f1c68f3508606c2dc4ae128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91572752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46bb455735ee71e670308f0163c75aaa51c3b93277ba26027b8018da693d06f1`
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
# Sat, 17 Oct 2026 00:40:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:40:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07b8775584c99eb8502d53a15ac93467eedee58c099b95b2290bbe3c58d7b95`  
		Last Modified: Sat, 17 Oct 2026 00:40:24 GMT  
		Size: 61.8 MB (61820276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a3a181b165afbe8f86b68a5777cfdcb34ea2e9328bd822b821777f8b3e38685a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a92ff8372390080b5700b65a1062022f35cb00b6c97ded140646bef50adeba1`

```dockerfile
```

-	Layers:
	-	`sha256:1e2fc619cb03047f8a7249117e012f1b22e29e1374ba2b8fad30d9da9ceff107`  
		Last Modified: Sat, 17 Oct 2026 00:40:23 GMT  
		Size: 2.3 MB (2295975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:045beb1437189ffe22420268bd7bd180652719e6075c8e2d74ac7c05853b2205`  
		Last Modified: Sat, 17 Oct 2026 00:40:22 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d8553b3c05c9a581ada0eacdd8e08d0e1360b48231767715f24b89ac1299c136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88668337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcb0c999ab921c1ab734a43742c83a395e554b5181a41e73d6d23a93e5db9de`
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
# Sat, 17 Oct 2026 00:39:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8be0b31eaa913c306eaae5f99c841926d378eb1781b922727d127c975377c3c`  
		Last Modified: Sat, 17 Oct 2026 00:40:06 GMT  
		Size: 61.0 MB (60983614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:25710ff3c4df9b6c0b77c084b83f7059fee25de474e129f710ba5c794bfcba81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f35f12850dd89342560d867c6c540c289a6b2c90536830742928704d4b45dbd`

```dockerfile
```

-	Layers:
	-	`sha256:5056f3134969e05e63f20692afae5b1c8bc0569f62f0bee329c96bfd06e05b1b`  
		Last Modified: Sat, 17 Oct 2026 00:40:04 GMT  
		Size: 2.3 MB (2295647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8783c1b6874e1342f1640a19a9345fd398dece8ec054c163cde089b1171fbc`  
		Last Modified: Sat, 17 Oct 2026 00:40:04 GMT  
		Size: 9.7 KB (9737 bytes)  
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
