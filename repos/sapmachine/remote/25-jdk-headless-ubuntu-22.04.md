## `sapmachine:25-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:297956f51c7fbc1f3ca23f941d9c52750b6838523781cb490a087788858ccb10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:ea3bd1a48c1353279d5805214c6fdb9e6bc59a863fc24ddc5724b97b66ebe628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252520815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96965586fffd3d506a889dfd033772093593918bbbe5d3173c066af282b8cd4`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ad8391467b0bb36fc5f32e20fc9cca6b8772be1afa5dbba11aa32848c4cc4a`  
		Last Modified: Fri, 02 Oct 2026 01:39:01 GMT  
		Size: 222.8 MB (222769188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:476b1326141fce14c96669e6213b3dea9908eee1b7654da98e72d0545307f70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee82e74a2879333ac7838505959a3e8f89448c8c8489a847c9c08090a6fad04`

```dockerfile
```

-	Layers:
	-	`sha256:9ba885f6d53b8b12f010efb7850ccc0612d602b7d278745baf0ba8ed76102a2a`  
		Last Modified: Fri, 02 Oct 2026 01:38:56 GMT  
		Size: 2.4 MB (2369664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f86575914f45ef646d4f12b0f6c18afb87fbb1ca4d7b7fe6ca6a698d6f54430b`  
		Last Modified: Fri, 02 Oct 2026 01:38:56 GMT  
		Size: 10.3 KB (10333 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1db7a9fa049d4c33b55f8e61e4a9b16076109872d9a5d03ba7c7aa541c386b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248175428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890a22d0f086bb3ee1bb82ebc6efaca5717cd38f705a9c84769e60c4929674d1`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071e4ecfceae307aba7247a0fd02de2f4f20fb053c2f58324574645e5e396765`  
		Last Modified: Fri, 02 Oct 2026 01:38:46 GMT  
		Size: 220.5 MB (220491292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d9698188689e96d8a218a20bde13c09ea5c33b4af5cc534320680dafd76ccef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc5d84ab047775f5015017e23298f87ce87885bc87e522873f31daa03bd9309`

```dockerfile
```

-	Layers:
	-	`sha256:6a14bc97a861a1620ecb4d994b4af259df41bafccb8c17331c357efcde575709`  
		Last Modified: Fri, 02 Oct 2026 01:38:42 GMT  
		Size: 2.4 MB (2369357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f6550032f94129ec17322bcb4c76e5a279625c5ad919a6c13e1a520ebd9bb5`  
		Last Modified: Fri, 02 Oct 2026 01:38:41 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:23774dd01f23db65bb30aaba8f2f8faad0ee228a851acd03857f48aa607e02e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255420267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f98987cad48fbbc7a676d61e72294db25bc125142fff5763555f04f58c9142`
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
# Wed, 09 Sep 2026 04:07:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:07:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:07:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0711b2dc1da6046755b06fa15df0685cce29630e08ad5d8223ee178aff94b492`  
		Last Modified: Wed, 09 Sep 2026 04:09:31 GMT  
		Size: 220.7 MB (220717588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:79e7a27a80bda5780ffd12e823a56a1c8248fc95980579c3d52dadc44db8aa35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51111c92a879f7911ea7f592a27bac9e41966338387cac285ee1658294eff3f8`

```dockerfile
```

-	Layers:
	-	`sha256:40189de65182f45bdc2ad27f4cedf8d13d235c81dad9034818e24a934b68cf5e`  
		Last Modified: Wed, 09 Sep 2026 04:09:27 GMT  
		Size: 2.4 MB (2366526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c95ba62e554c3bb9c45150482509ea13a4db3d27b245b5db6f3ce8f2143aa4bd`  
		Last Modified: Wed, 09 Sep 2026 04:09:26 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
