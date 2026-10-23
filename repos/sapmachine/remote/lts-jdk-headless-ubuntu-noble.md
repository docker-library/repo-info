## `sapmachine:lts-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:32641a93d3d282cb0dbc2e8cfd519cf683f8de8ae648b0bf40fc017cff2d3185
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:ce93390357f9f890e3de878fd47289690bb4dc1c535ea3e2c08c5031a74111ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253036680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7b429fd14f56d07f181086838d57bd5852469609ef5cfbbd420f72800c08d7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:55:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b529d61b6710235927b07d30785700f243420d5a64bf8bd01f59bcf1502db3`  
		Last Modified: Fri, 23 Oct 2026 16:55:54 GMT  
		Size: 223.3 MB (223270922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d8250ef7a726fc70fb10a326ef1269b126cb89bdbc1756404700fc7eb506ddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cbbff1aa580c7398e6dad37098af8aa3a5f3ddb8156fc7464285859e3167e6`

```dockerfile
```

-	Layers:
	-	`sha256:684dc390ecfda42c45af9b202e3085efffc1c4c31da04d84ad588619c909941c`  
		Last Modified: Fri, 23 Oct 2026 16:55:50 GMT  
		Size: 2.3 MB (2348131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eafde1bb3af9d82a1f8c88587b5e38e9a30c7ef4e218bede3ff06f2995e82b94`  
		Last Modified: Fri, 23 Oct 2026 16:55:50 GMT  
		Size: 12.0 KB (12043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:99b189e1f8a13a6964ff8b7c91098b5de0cdab1717b181cc260f1b90155bbd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249972472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db7dc2e1f6f520d844876e8ac9c40e16c141929a842c5123800033134cb2acd`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:55:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2908d423cd1c9fd43f1ca1a6192d000bd11597de5682f255f0c6dd1a1c33c14`  
		Last Modified: Fri, 23 Oct 2026 16:55:34 GMT  
		Size: 221.0 MB (221032711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:190cb58d07c499903a1704d73ac43ee4ad8350f7f9dbecc6aedcf27ca0708cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5002597b6392758392c4a3571cf45e28434fd01b15ce852b0fe6e953f520589a`

```dockerfile
```

-	Layers:
	-	`sha256:d9f4c04c170d0cac9c44b22c3d35890dfd9c9d7f2ab0baf959e0623208f3be9e`  
		Last Modified: Fri, 23 Oct 2026 16:55:28 GMT  
		Size: 2.3 MB (2348671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35c0fa36da00228a8ca8885762071ded9de28aa5f23810f6469e184e2c7092f0`  
		Last Modified: Fri, 23 Oct 2026 16:55:28 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7fdb8722c1418e6b2475fb67e125c3157d7fb7876a4010e08eafb8d24bf2600b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254108275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a719a855049c702aedcaebf727ef874f987b562448b22c4a622b73b814be363`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:58:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:58:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 18:58:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8524a11c5c1c0be515cebc4c37472d18ac74044ce4aa9aeb744b9eed42c06d75`  
		Last Modified: Fri, 23 Oct 2026 18:59:27 GMT  
		Size: 219.7 MB (219730285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:20cd112864ad91dd9cfe18ebae85a5e69dda9f76c189fb511d26c3e42cbd3dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a1b8765b3ebba65d5442a5399459cbd66736d21ec8b8e137ebf9edd8a5ff80`

```dockerfile
```

-	Layers:
	-	`sha256:6f975dc5ee7bd38a58c08fa6e131ada35c560dfbfd7f7f66c2501e261a5f5248`  
		Last Modified: Fri, 23 Oct 2026 18:59:23 GMT  
		Size: 2.3 MB (2345002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b221661851b315b2bb854dd0a55c88ebb4207befbdf54ac3c6db09302910057b`  
		Last Modified: Fri, 23 Oct 2026 18:59:22 GMT  
		Size: 12.1 KB (12129 bytes)  
		MIME: application/vnd.in-toto+json
