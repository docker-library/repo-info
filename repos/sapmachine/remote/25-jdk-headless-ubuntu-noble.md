## `sapmachine:25-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:7aac328bd655538e4742dec1682993375b475d459f757048cb5dde8171a5192f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:4cb3dca38fa49b7480fb42e0838bd8b151241ca9deb653a23541f1d2ad429a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167057442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb9ab882983adf48764f7dee59c5d07d143aeda3001e8777615ba0357bc7801`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:41:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:41:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8187a7a835cf05c26706bb5d9427601660a0f60a6d6c0b7793b6425789842492`  
		Last Modified: Wed, 18 Nov 2026 16:41:30 GMT  
		Size: 137.3 MB (137264219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b787546f1fb5c3ca8092f384fc0aae432ec1d09bb8c33cc84a79b2eb435bf4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2316180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c707ca33d41482dda178e590b7d4f6075cd284a8a935ddc386a51ceb492073c1`

```dockerfile
```

-	Layers:
	-	`sha256:1a291b36527f904ad90a5c12bbdde10963cd00d1df50021fec27826d933bc15f`  
		Last Modified: Wed, 18 Nov 2026 16:41:27 GMT  
		Size: 2.3 MB (2304160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:667f3e8a0503551d65763070ed89c43b2274b85fec5f3a08e39dcee1585e73e3`  
		Last Modified: Wed, 18 Nov 2026 16:41:27 GMT  
		Size: 12.0 KB (12020 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5f7c5b4383434af2b4c78c6d23baeceebd40c0d4611cfc6b6a5556d442544adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165195003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401cfb88510d35e4c49b5f13c656d2f0014a1ef66945326c4edae186dc12bba1`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:38:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:38:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:38:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c10686b9a6e72f7807b6dd52c9835c95b132f5396b2dab21aae157eee35f59`  
		Last Modified: Wed, 18 Nov 2026 16:39:17 GMT  
		Size: 136.2 MB (136229745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:045d17cc082a7b989364f45ff1d9bcc6b4240b83ddef7d67ea872f1efc42d1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2316909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41060c707a910d57e622fd69a5d01088c6042940b9e77b10784f3285ee6763e2`

```dockerfile
```

-	Layers:
	-	`sha256:44cafeab25d99aa53d2449a9478baabe6c3d3c2b97f04f04525e6b64c1d9b222`  
		Last Modified: Wed, 18 Nov 2026 16:39:14 GMT  
		Size: 2.3 MB (2304700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48b8e4501408c49167fc49dbfbfb3b5c3e5eccd493c9d8c85d4ef0589a45f8f6`  
		Last Modified: Wed, 18 Nov 2026 16:39:14 GMT  
		Size: 12.2 KB (12209 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ed3c00fbb44cb5a7ef71805c70440cd42095403420e36056747738de2d282369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169359974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6463fbd02cb1f41b68bcb0d9599df0ec9893cacf7682492889b86b9e16122d15`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 17:00:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:00:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 17:00:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6024c9eb873853d96c994c5e3d0a780a07594dda679a02023d453b884a6a1c`  
		Last Modified: Wed, 18 Nov 2026 17:01:31 GMT  
		Size: 135.0 MB (134953463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:194a450f9523e2c09b5db188ec4af87e38603736e780562f97d92e55b19c8938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7738f1581c59c0ae2f6bd193c5de34fe3e9c9dd1fd3f59988c712480d59235aa`

```dockerfile
```

-	Layers:
	-	`sha256:2b6d1996c7c3ae8d357ab0a38ca0c08ef72aad1ba9b0fe4af098f0d1a4a96316`  
		Last Modified: Wed, 18 Nov 2026 17:01:28 GMT  
		Size: 2.3 MB (2302965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2a8a3ef78f754e2abf31f9d60039ae62b178803a4279b9a201304e4f2c4871e`  
		Last Modified: Wed, 18 Nov 2026 17:01:28 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
