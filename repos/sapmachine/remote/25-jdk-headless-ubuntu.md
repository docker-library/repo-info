## `sapmachine:25-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:f5f008b3a4eac59c4f11bfe4661638e07b80997139e87e71e3a13f436bfea5ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:ed68a6d772ab548b6ab0bf5d5274ff6182bd406f3ef32fcde4fd268f3bcbecef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252940819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4396623db8f5f156fe011eb2ef8fbae7fd559d2330c50e9cf0848b2563aef6b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:40:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:40:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5352415656df8d882af25a96deb8f8f0fad91715bdafdc2d406b30b0361d7adf`  
		Last Modified: Wed, 09 Sep 2026 02:41:20 GMT  
		Size: 223.2 MB (223177566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:56bdba383fa5e10fe1a6d2d712a5581580c49997f47ffdd683adbdb42b624647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e4f4a29890c0f9e6586686733d449183281f14b981aa22f43c7fd16b0e7cfb`

```dockerfile
```

-	Layers:
	-	`sha256:bdbb1e27aaf63c326cead384047c6c0b5a653172ef715b1f4104559ecdd5c8ed`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 2.3 MB (2348725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:307e7d3c6b0a5084304c2265dbc823b3c1f0a187dbe184a13dd98a7d0eec3511`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 12.0 KB (12021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:990a995a04778edfc5888e95c3f6aea550f01b3309cc475c43020c1309714a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249872225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b2a38e60e5bb4db337e292781ce302ee2aa18a0378cf950a06386603b4b51a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:36:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:36:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430649812c6690223f7473cc6b5e05fa5e6b0387da826994ba1b28e99dae333f`  
		Last Modified: Wed, 09 Sep 2026 02:36:30 GMT  
		Size: 220.9 MB (220932210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f4559939565b19876ddbd323d0f79aae293163edba127b564ffb94ec26383436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0e16633083925a35d067dc1319f04f4d1967371c37b0e3e1efa1f62b4eb3c`

```dockerfile
```

-	Layers:
	-	`sha256:8546875075ba90166706a5a7b84700ea6d995b485d6a6c3207ec23d953f51f12`  
		Last Modified: Wed, 09 Sep 2026 02:36:25 GMT  
		Size: 2.3 MB (2349265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a416b84c1c073b06e707626b479831e98f7466f093dc6ec70a6e8af63f1a7d28`  
		Last Modified: Wed, 09 Sep 2026 02:36:25 GMT  
		Size: 12.2 KB (12209 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6e7a1eb5961c39e5aab1fc4f8b84eefba8376f8bef81b18e95de0fa3c23408e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255582708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e6794a725785cec72717479a7459e4fc81acc4a4c8ed2fda1f6824a6eb07e6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:01:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:01:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:01:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de230613c8e1bc35f10377002b62a3f17b44d4c473cb4d2a0971ba99f6e2b047`  
		Last Modified: Wed, 09 Sep 2026 04:03:01 GMT  
		Size: 221.2 MB (221205829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:48cde2c18ac84ea8f05e8e05f32cbf3d6b20125f0e62150df1a8849070f993a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1dfcd0c0deda0ca5afea6b8f1e7eb9c940842c9105dd56469c6e231b244e438`

```dockerfile
```

-	Layers:
	-	`sha256:a6a81b284d5f1e7ed05b94a0bc5e1113a715067092464361d47e077190762605`  
		Last Modified: Wed, 09 Sep 2026 04:02:56 GMT  
		Size: 2.3 MB (2345596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4343b7fd4b3d47758497cda58ee624292e5e145ae81c93c0d5ed2347632ac4`  
		Last Modified: Wed, 09 Sep 2026 04:02:55 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
