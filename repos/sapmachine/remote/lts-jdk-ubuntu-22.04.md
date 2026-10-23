## `sapmachine:lts-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:0f7e45191a593e0e17c4fc847765122a8625d06e908db905f4ad9505ba8c6052
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:c745a66499a021c7063522875c4873c5d67b2f70b859c6f6df62ddf71d9b047b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254544750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49bcac7146187a486bdbe2c14a35802e8e0814abd8879fa2221bbda256be7556`
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
# Fri, 23 Oct 2026 16:55:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0d30098262259f2063f859ec58f8a68ae5528692772f31ab02c20cca49fbbe`  
		Last Modified: Fri, 23 Oct 2026 16:56:20 GMT  
		Size: 224.8 MB (224792274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6361c0d6b331cb4b0319fa71a99ee3b0f72612661866c366dc3dadfecef9fe72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c102e960b918190c1c2a8ed4fb05a1ceaefdfac0f3c0b8fd43a7f2097f8fff0a`

```dockerfile
```

-	Layers:
	-	`sha256:66646a42bc995cdcd5a78b4b05373ad2fbf6dd5143b9ce4d2d13eb9b3d6feeaf`  
		Last Modified: Fri, 23 Oct 2026 16:56:15 GMT  
		Size: 2.6 MB (2623686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d432dcae91657c78c5456f50193a2e5de39444293d6b675aade8ab3ab0579ba1`  
		Last Modified: Fri, 23 Oct 2026 16:56:15 GMT  
		Size: 12.2 KB (12179 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0e09cb9cc262e791361c4e9d2c830a6330e0d0d52881186019b91f364e89a177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250203861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2abe9c0520c3a81843ce299ea1a33a72e95492b993d5bc9658698018b23b3d78`
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
# Fri, 23 Oct 2026 16:55:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ef6516440ff487eb7c6289efbb293006d5565ea047cf28acf62d6c84c872e9`  
		Last Modified: Fri, 23 Oct 2026 16:56:05 GMT  
		Size: 222.5 MB (222519138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:648e2f423fac0dca4463352bab896640b0522628603c25353fd2d86f3a7523ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a68e05f27e1546371f5e39ecb1b6278c9bca82763808cecedc5189fc75a921`

```dockerfile
```

-	Layers:
	-	`sha256:f68efd8dcc3a89626f954f358a50ed8caf1cb8579bb2e968ea9d24b19e098adb`  
		Last Modified: Fri, 23 Oct 2026 16:55:55 GMT  
		Size: 2.6 MB (2623461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0827150f04e75b98468c894acb6d709999ecd12a45d1c7fa6a0a1a2519ea0ca8`  
		Last Modified: Fri, 23 Oct 2026 16:55:54 GMT  
		Size: 12.4 KB (12380 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:859bebaaf0d4e47e1b3164b7b1b18a4415b6e3fc729ae985308570a39e363534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256055108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d5b0e1df6fd8a1f428ae3c59bd585868b7eca131839f24a216fb0461f4675e`
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
# Fri, 23 Oct 2026 19:05:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:05:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 19:05:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b395c0c40ef31356bbedae190d8056dd90c065307103a579b2bc67f6e68c17`  
		Last Modified: Fri, 23 Oct 2026 19:06:37 GMT  
		Size: 221.4 MB (221351471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:299fc8cea23ca1b9f2a0e9f33c0fa59bfcd7e05c160204057fedfd62ca3f3e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a6d93ea80ff05e65d7ab8b29cf4581a3fe46e93e26ad68e2f859a39bd73629`

```dockerfile
```

-	Layers:
	-	`sha256:ebf55df643415c7f3cbf08e3ac82f32c7ecfd2ed5e20454c5495c6aee288e0fb`  
		Last Modified: Fri, 23 Oct 2026 19:06:32 GMT  
		Size: 2.6 MB (2620702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b28730c4746ca244661599a8b714e3c1c7548184b47674cd11b9d376f0658c81`  
		Last Modified: Fri, 23 Oct 2026 19:06:32 GMT  
		Size: 12.3 KB (12271 bytes)  
		MIME: application/vnd.in-toto+json
