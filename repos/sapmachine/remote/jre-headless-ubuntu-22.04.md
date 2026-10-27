## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:d93067796e36ea5b02e44ac5d5007597018c0b2546d2fe85c2d5b3576811a757
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:9535c3ed17a8a101130c6e7d9f4c8aee25d8950a836542ac093137ec7df70160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88722275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51a5dbc48afcb0d181befce0add0b4c3f6f7dbef10d4fd80c996db72ff06d62`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84a7a7bbf06678c5e01f90c8bbb308629360950b0259cc7cb844dc9c294a73e`  
		Last Modified: Mon, 26 Oct 2026 23:38:28 GMT  
		Size: 59.0 MB (58969787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3035aae5e64cc5a93d04026411c651354a5f17cf60491231420ced1ea9c60bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae1e0580fff76f462a8e5d25ca8823fec4942c7a0157f95775aaaa3cd67d4ac`

```dockerfile
```

-	Layers:
	-	`sha256:bf459e0ed1c370310ea694e13218d115ea24a147f20daea4d1623af9d335ab95`  
		Last Modified: Mon, 26 Oct 2026 23:38:26 GMT  
		Size: 2.3 MB (2299946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2feb458a25b0e272a8d487c02349e283fafa1c99ae86e8192d8375e1c4aab48`  
		Last Modified: Mon, 26 Oct 2026 23:38:26 GMT  
		Size: 10.3 KB (10326 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:23628db133cd42f97a2caf540ee2b40e216f84b93ca9639baed0da0dd0c7a6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85658068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e164688f2f84a90cf418d3cca00571c0c09631919cd186b2d4b396bae187830`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:43:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd56567244c445baf1f970639273fa7f23b1850c24dd351c8e26f2c827b822dc`  
		Last Modified: Mon, 26 Oct 2026 23:43:30 GMT  
		Size: 58.0 MB (57973461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d15e4cc16f14d11b05ba62dde03a2595fbf7100a3aece61f95f7edc8391a774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5aba0f68f657d6b25647782d3ab51dd5907de760ee21c07f730ca77e587a2b0`

```dockerfile
```

-	Layers:
	-	`sha256:ff8f087a1f37bfe27f50cbb7d889fe5ce291f0d30a9f45057f1c86aa4574939f`  
		Last Modified: Mon, 26 Oct 2026 23:43:28 GMT  
		Size: 2.3 MB (2299639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b18a480432523005ba0a70d75a0545949ad37abfa5cd45f2fdd358150311689`  
		Last Modified: Mon, 26 Oct 2026 23:43:28 GMT  
		Size: 10.5 KB (10454 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3ad9be3bd0886589ae287b7c40442c05cbfac5ab861b80bc621d6093398d1bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92716091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca2530ea4477677e024dce4be761ab393dc372765e6293876f6a34587745776`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:27:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:27:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:27:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4c532a678e47a9947019223f77cfa88bed3e9dc538c106085c8d003bb1f3dd`  
		Last Modified: Tue, 27 Oct 2026 07:27:36 GMT  
		Size: 58.0 MB (58012158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ca27fc6a4d863f4aa3bdfdd8b4912e325209cca2745cde9134623879ead76e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69133f3a1e28ac3d7841bc3713aabc4d984df98084e6bf128e056c5f5dcd0e8`

```dockerfile
```

-	Layers:
	-	`sha256:6de8cd27edbe5bb9ddb1e4c90615eed8b29ed12dad06389417412dd47617625c`  
		Last Modified: Tue, 27 Oct 2026 07:27:34 GMT  
		Size: 2.3 MB (2298770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f49b574036a8d23be3b818d53fd86cf73513ff42e3debfac9b65dbb242e650a`  
		Last Modified: Tue, 27 Oct 2026 07:27:34 GMT  
		Size: 10.4 KB (10382 bytes)  
		MIME: application/vnd.in-toto+json
