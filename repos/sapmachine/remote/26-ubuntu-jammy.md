## `sapmachine:26-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:5afd4a260332f40b28a9dce12d378e6b220bbdc26ef2cf227c67723cd6d9c40e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:ac1f9523dd9261fd6fc339a91184f8a74b6ad6beb6a198ca893fe4f40f883fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170646989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f6ad348dffe69832587f0151d7288772bc2a775857bfff9ee736e50ad2cb81`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:40:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798fa386d4620c9f5998dcc03674270e10e6a41ecaed2f6c7d7a77a49525df46`  
		Last Modified: Wed, 09 Sep 2026 02:40:53 GMT  
		Size: 140.9 MB (140896738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:df8a1fdd44326992963c3372de51a9188183a82866014108fcc2f57d4e6986f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ef93d19565bc08ea6e7327fb2a8b7cc2845ee93fd6405872fc6c866fcc657e`

```dockerfile
```

-	Layers:
	-	`sha256:9079bf0d07c7bd4de5865757c82cd213fe741215b638c26039979dfe2f6795fb`  
		Last Modified: Wed, 09 Sep 2026 02:40:50 GMT  
		Size: 2.6 MB (2577105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b5e72fb47600329f62de716918a3149371e3b3b0c120d3d5dd504d2ea40f282`  
		Last Modified: Wed, 09 Sep 2026 02:40:50 GMT  
		Size: 12.1 KB (12126 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d8a87891cab6168a86eaf7741c434bbf1c5f418216bd2a3792db98b5a2ed78ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167591677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ee3b5c410370949429117354b90e08c5f2ef266ff73feb91802f6c89eef691`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:45:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:45:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 01:45:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed12a5263bfa0c07f5adbd212cb2507abb676bf14f2d3dd00624cca7d1a15f22`  
		Last Modified: Wed, 09 Sep 2026 01:45:58 GMT  
		Size: 139.9 MB (139908930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d6ec7bc1867d931290cbcb60bc6d1e63c5f213d56e9aebe49a26126d8f92b6f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2589206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54876dc3b8bcbab21cd7e50da8adafa49411e35cc1ee492295718310a97f322`

```dockerfile
```

-	Layers:
	-	`sha256:1dd0c151f70b93dd7457977c9dc8ac4308dd811ae8d557a03d44dd4e24ce75ab`  
		Last Modified: Wed, 09 Sep 2026 01:45:54 GMT  
		Size: 2.6 MB (2576880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86b13b199c434b13c3adfbcc0801af1fb5f218f846db5e28a39ec9447521cb12`  
		Last Modified: Wed, 09 Sep 2026 01:45:54 GMT  
		Size: 12.3 KB (12326 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d73b05ab3a231e01d6207e362dea33254e151c21149c9779ec46d2436077e28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174611892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b847a6642b050f7bc960c149927adce993358ff07aea21c62eabb8e085bad6a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:52:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:52:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:52:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7567be6a8396d4ef71b60dbffd609bce3e7d187e4445e02b735ac27e3da3c528`  
		Last Modified: Wed, 09 Sep 2026 03:53:52 GMT  
		Size: 139.9 MB (139909213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b40b44a5a33dec71c76546a935766f2ebe22ce56a271ac921518087a78a246bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba0a9d05cdb03e4b7611ff6e284afa57237e7610fe70d8643d88a5bde6a1fe0`

```dockerfile
```

-	Layers:
	-	`sha256:c2d7aef2e75bfc6cea2f0f64a214938dc8c9c7241e4b08108e3b3cbe739a3af6`  
		Last Modified: Wed, 09 Sep 2026 03:53:48 GMT  
		Size: 2.6 MB (2576055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7f7a4a3d84508f689b852e41a510d4caf5bdfcf24ef1c7b381e23ffb10b7e88`  
		Last Modified: Wed, 09 Sep 2026 03:53:48 GMT  
		Size: 12.2 KB (12218 bytes)  
		MIME: application/vnd.in-toto+json
