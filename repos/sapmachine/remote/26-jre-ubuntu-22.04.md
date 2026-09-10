## `sapmachine:26-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:e36418ccb99467a9743e109c35007a778293251250495cf0a744869008848072
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:2e939803a552d3c3abfa3f60248faf0ca62337724b750522736d1ad9fa58160a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91204752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:014895ebe33c7d9a7d377331117f7741d9535a680e8ebc8fb73622b073a93339`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 02:40:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c83097ccd7e740568d07e917b5f072892716020d8159486b16ba8a81bb72847`  
		Last Modified: Wed, 09 Sep 2026 02:40:42 GMT  
		Size: 61.5 MB (61454501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f9bcc6b57333a2705dd762dd6403a581ab6710b0185cc67bade4344e1414e712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637562e94654566a17a8f2bf3103af24f299bd8f08cfb9013800742a2f6ead94`

```dockerfile
```

-	Layers:
	-	`sha256:b9472ebaef319216c06619b1883cdecd5ee926d7edfa7ab6fc28bd6fe0b25f25`  
		Last Modified: Wed, 09 Sep 2026 02:40:41 GMT  
		Size: 2.6 MB (2551873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52548adb78f16768992cd84b6865dd95a8f8283c4ea632b445ed28c2dd1eae36`  
		Last Modified: Wed, 09 Sep 2026 02:40:40 GMT  
		Size: 10.2 KB (10168 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e2b8ee5bdf1df3d807eaaebe93e1105539e0eabf90efaacbb926bf7188705c0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.1 MB (88105378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbafa8f1f889d932c387248cbc1633ec5e6f4d2af71d20113038c2de33399188`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 01:45:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:45:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 01:45:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b386891ce1805cfb03864f3f16036053f1792efcf33f9679a2b8d080f3d90ea`  
		Last Modified: Wed, 09 Sep 2026 01:45:50 GMT  
		Size: 60.4 MB (60422631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2f5e558628bdf820863d6421a1d29a2e9b9645b26211625ebe8fc2534ccabb5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f14c15f7a6cedcb2b07005a3fac5d1b155ea559ad3a99cb70ddddd3ca91375f4`

```dockerfile
```

-	Layers:
	-	`sha256:e8ee5de0e9b0d2a22a8700eec31eb3ea90d184b444e9cea5f8bfac6ff33f000d`  
		Last Modified: Wed, 09 Sep 2026 01:45:49 GMT  
		Size: 2.6 MB (2551576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccbf7ffeefdcd5480855b71afbadc469623167f989de8f4da32e8f147dcf44bb`  
		Last Modified: Wed, 09 Sep 2026 01:45:48 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f656a463d5aae6c8b7ee58c3688e5b353d9fd8e8deb86ec96e55378406437a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95656210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7279e96455caa8612f6419d161d5574278c02565de058dc61de1cc542ed8d31`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 03:49:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:49:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:49:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd17df01cb58fee8da8ab1c1fdd2b506e0aae5db69112a30b41978701a2e4a33`  
		Last Modified: Wed, 09 Sep 2026 03:49:48 GMT  
		Size: 61.0 MB (60953531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4a6b26744f157a47f33163ac66e72c4b897a6e0ed6df10711d2e61fbd4e54488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f9b5616de5aa423458c36ed35103e42a3c8fd45ed41662910647aa1819fe5e`

```dockerfile
```

-	Layers:
	-	`sha256:6c5246cafb8155525f3e39f8d1effb9dd3ef7fc6b17d8b3602696be355e5e315`  
		Last Modified: Wed, 09 Sep 2026 03:49:46 GMT  
		Size: 2.6 MB (2550787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ebc59be36a242bbf6df85788305d52d0c09df95057c08411567a15c7c684fd2`  
		Last Modified: Wed, 09 Sep 2026 03:49:46 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json
