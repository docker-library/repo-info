## `sapmachine:27-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:2a140ac24a2a822d0918282ee3dafe11fe5480f8fee4f75edf34a76647fe9a06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4051297b4b1ce1d12160f5ec26d1fde2f416d50dda48243081d54a5496d24d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (89039452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dc9c6452bd1f40931645e99508bc3e9ec32a8423e55737b592732a59094e8f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:39:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:39:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a82cbc44e4d0c9b42c4665f3cd11c0ab81dadc7bbdbb2001b713533da837e1`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 59.0 MB (58969919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e027fa94ea880a47c54977f4c9ad02f1285f0b0676dbbb2d7d70db683d4b0938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:616f1da03595b68339dda80db54dd77fd160f30c9549b7095db8a1fc8430f172`

```dockerfile
```

-	Layers:
	-	`sha256:d99435dfc600b9ba9c1b8e1ac8e4ba1449967b9a8ca77b3ee785de0570a16d89`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 2.3 MB (2300554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:555796f5bb77c9821c7b68ca969a9b07bebef7f5331cc0edd1acfcea5ed30274`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 10.3 KB (10326 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:329cf0f8edc0f8eb63135988f2450c916308b5e54ffcd65a6ca13ae40536d78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (85975018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c85906d679d5ee7a4c70f47f8543d2f988e7645826cf794d0fe10022dbfc104`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:41:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5272c2addda76b344a17e75a982450596ab61cd763b08f803a7f1dbf1db33340`  
		Last Modified: Wed, 11 Nov 2026 23:42:05 GMT  
		Size: 58.0 MB (57973606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:77125b7652ffa66aa6141f837c6a03fb7a1fe6ab3f235eba3dbfc975e714fd68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3462ca61eb690c9f019b21a1562c2244076ec7e526d02bfdec39f88cef3957`

```dockerfile
```

-	Layers:
	-	`sha256:06b9297fefaf7ee998f1ae713963d1d336b2aa488ee54f9b6c1a49e561fb40cc`  
		Last Modified: Wed, 11 Nov 2026 23:42:03 GMT  
		Size: 2.3 MB (2300247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8ed7e996fe966aa082e5a64de560b0c383330dacf59c849416b2acd529b73e0`  
		Last Modified: Wed, 11 Nov 2026 23:42:03 GMT  
		Size: 10.5 KB (10453 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; ppc64le

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

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

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
