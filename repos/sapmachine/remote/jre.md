## `sapmachine:jre`

```console
$ docker pull sapmachine@sha256:0ecf62b59e7d7caef9681c10c85d2a48d98dba9a4155667056247bc2d8e18119
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:50348d2e25f43f42a272f829df5d7b4b09fc3316adb52074c749aa891ed2d1f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90691364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e1f50d6441fa6c13486028dd3d9f19323ea0cd2a1e77f8cd9442526721731`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:37:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:37:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:37:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512e8e22e72876b5f1cbf472a5e9b736d82097e2924e869381e56871620dfe1`  
		Last Modified: Wed, 18 Nov 2026 16:37:45 GMT  
		Size: 60.9 MB (60898141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:040f9b69c1b6ad3cba6f51f4ac61356b0bd2115a68ff2ad999a6142243e1ec00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0238512266f16ce59c92a612e3ad456f4d0abca16243b570731db82a89fe96`

```dockerfile
```

-	Layers:
	-	`sha256:3e864be3cda0bdd13a698ccf11df7ca524d314a976fff6bf5ab3194d2dacc611`  
		Last Modified: Wed, 18 Nov 2026 16:37:44 GMT  
		Size: 2.5 MB (2526937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e81ce88ef923c012acad21ac8c1c6d7e442bb44537defb51096ae70afc73106`  
		Last Modified: Wed, 18 Nov 2026 16:37:44 GMT  
		Size: 12.1 KB (12057 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3aa412ae990a17cc3b039564636ed835706e827c53a90ecb69e7accb9a7b7ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88901786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4829a9eec5e35dde54686ae7336df5df96049b5e33ea20723e74168b2be764a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:37:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:37:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:37:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792f04d97e346be47776b6e52d62ef1100129774e846b3acbee3b81131e75c4`  
		Last Modified: Wed, 18 Nov 2026 16:37:20 GMT  
		Size: 59.9 MB (59936528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d941fad68152d19561a40c3915866dc6129a352d5ddc01bcc554615277cf007e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a255ff837bc2ec36c6b4b4d47e7b14ccecedab4a327ffeebfa73278cb6ddaf7`

```dockerfile
```

-	Layers:
	-	`sha256:83bcef56ac02a9b29fc7d626a18e37fdc3c95df76977bb819b5d201d46b0abd7`  
		Last Modified: Wed, 18 Nov 2026 16:37:18 GMT  
		Size: 2.5 MB (2527498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1612cd65b5c05cca9fca9eaea8ee6a93c287db8dffec78c2bed25c3469b76a`  
		Last Modified: Wed, 18 Nov 2026 16:37:18 GMT  
		Size: 12.3 KB (12258 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7c6a25d1bdb3d6eaf9b6486b3eb7304af0b432e563dd113b0a049d80e4cfc66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94649503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08674c7587a3b0c8c171ac127d3ce027598c31a91fcc95db1d7cff739b775521`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:51:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:51:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 18 Nov 2026 16:51:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae723fb9809ea4defa1b2eba7baca7d420c9193f1eccbfbf340511623d0ddee`  
		Last Modified: Wed, 18 Nov 2026 16:51:57 GMT  
		Size: 60.2 MB (60242992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5cd380840f035c31698e4d2777fb2a1007712b03dd07d137e690978697a7302e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702d482af29ef9de007afed59c5d2520770e2d766a9229f001a88d18659cf69b`

```dockerfile
```

-	Layers:
	-	`sha256:9f7e478ea7e9fe882cc6e91ca34c7b0efb00221f2f0938117eac234271bdb1a5`  
		Last Modified: Wed, 18 Nov 2026 16:51:55 GMT  
		Size: 2.5 MB (2525829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e652cdc32755ab4769cbe41ef210bb45f96865bccbe7c372b5f3a04d28f220b`  
		Last Modified: Wed, 18 Nov 2026 16:51:55 GMT  
		Size: 12.2 KB (12151 bytes)  
		MIME: application/vnd.in-toto+json
