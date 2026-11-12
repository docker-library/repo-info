## `sapmachine:21-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:4248cda3ca45e62536d7b5bd5ff0f4529009864d1ccb774925ec8143bbab3fc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f97526ee2e282f9b923dbbcfd26de4ff45633e969f5024f66f05113868ec462f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92042592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a5e6e84d514f0883bcf56ee2093e8e45b60995a21ce0c7b95b1dae203a0bf2`
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
# Wed, 11 Nov 2026 23:41:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:41:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bb754a55c90943085dc1a18e1058cfd9517508c560b275a5a3d32d5668331d`  
		Last Modified: Wed, 11 Nov 2026 23:41:15 GMT  
		Size: 62.0 MB (61973059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:59d1103630781bedcdcf58fcfe3286c5b780a42a3f9c80409684525ff8c758dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53824e13d11f36458b78869453905158e8a36293b759c064ab06573bf4a2e6c8`

```dockerfile
```

-	Layers:
	-	`sha256:02c794c754faccb79731b8de92a6b37e6a33abd1f0a71b7b4e1cbcd6b0d236c3`  
		Last Modified: Wed, 11 Nov 2026 23:41:13 GMT  
		Size: 2.3 MB (2297269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c182924182396cd1585bd26b2dd571b9e0b23a3da0b3f26b5990e7fb04b92449`  
		Last Modified: Wed, 11 Nov 2026 23:41:13 GMT  
		Size: 9.6 KB (9647 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1edb568918b5e8513cdbced371ccb4b0d258468bb02699b41f73b8be859f4281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89139679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062daf23af1a458dbeb48e45273e702c3e73fde88202d40dcc9968afa823d0be`
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
# Wed, 11 Nov 2026 23:43:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:43:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74bab42dbe979b53aaebe3c7a7b01fbb4e23ec764ac2d4e6aa4af83effe13558`  
		Last Modified: Wed, 11 Nov 2026 23:44:01 GMT  
		Size: 61.1 MB (61138267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3a38f8fa0d26a5fb3f887311852727d913ef6c57323d49073dd371fe38a5aef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5aa7b2a0e9c7d4f728c460296a843fb5181d2caf25a9e267e6e6ab3a316983`

```dockerfile
```

-	Layers:
	-	`sha256:93dc11e0befed765948d530c18e41f869489832ef8df163a8e04f7e23796e52d`  
		Last Modified: Wed, 11 Nov 2026 23:44:00 GMT  
		Size: 2.3 MB (2296941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8c9963d3e9ffb3e0b42d83579c379b93fb61e7ff18e9a17edae47bbc9c55c9e`  
		Last Modified: Wed, 11 Nov 2026 23:44:00 GMT  
		Size: 9.8 KB (9751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:23f5a2b41110dc5bf90e50d8abaa13105a3b4fa1f5f5dc94b267cb4053aafd76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96171911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37142c0352b8830ecf48607e02c7492b49b9434cffc75d9c7afd42d9bdf7d9f7`
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
# Tue, 27 Oct 2026 07:41:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:41:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:41:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ac4bdeb702c92af77e19a09386d7f780d9cf29c7b80a0ec43675ea0a6bdfc4`  
		Last Modified: Tue, 27 Oct 2026 07:42:06 GMT  
		Size: 61.5 MB (61467978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:16e6227960022bb683497cdb622a379b82e5c411066d0a0bf011dba2387278ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a8edc522f720e748ffd706d2197cd69b7f8ca6a7d9150af880116956f6b416`

```dockerfile
```

-	Layers:
	-	`sha256:f33269ad567b5b42793fa856e3a6c042dad5ecee1131f216292185307774cca8`  
		Last Modified: Tue, 27 Oct 2026 07:42:04 GMT  
		Size: 2.3 MB (2296103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ec3b120803595f3829724069ea4122ac2f4ae40d401768cc810a5352fc427ae`  
		Last Modified: Tue, 27 Oct 2026 07:42:04 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json
