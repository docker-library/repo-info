## `sapmachine:jre-headless`

```console
$ docker pull sapmachine@sha256:e007b0e5fec93fb3df1e9cd622306387cad3d1c4e842f29123b43422585f3326
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:00fd59f175b53f295055064f28cefecd1aa0f456ef990e6eee3b0d900e13cbbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89098300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4703c9de778550fb32e143b1131718ec9f2380fbf0d018b78255fb91b3304f51`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:35:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4a8dfd453bcd7a15515f4915d34b938bd6bc9fefe3dc56495df8d89d64bf9b`  
		Last Modified: Wed, 16 Sep 2026 16:36:10 GMT  
		Size: 59.3 MB (59334184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:083fa9e2fb22e671baec10899ad7d7eba7abdc269c897df7b6f2898c23ad4151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2288745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a0c2e9bb8da33389475b8d6af6450dd99d762ccae82149d21fdfa2cc00a3c4`

```dockerfile
```

-	Layers:
	-	`sha256:a356c518b7ff5a54120c54e241aead55714b4509a0b35e5c575fe8e85e948b54`  
		Last Modified: Wed, 16 Sep 2026 16:36:08 GMT  
		Size: 2.3 MB (2277855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f97c69538f17206d32b40a74637511b098a6c592674bf928e89eb36ebc7eac27`  
		Last Modified: Wed, 16 Sep 2026 16:36:08 GMT  
		Size: 10.9 KB (10890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c7548cae02832266e4ed4de820de95418960a221474d75035b5b47bd03bee0e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87308099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7beca5c87a29865caeae7dfd1bbf8ba89b272dcd39965e5388a63d2ad610c4f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:35:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcd5885c2501f88e078658aeddabdb55c3a25365f95b0f24b1a4bfe71cf6364`  
		Last Modified: Wed, 16 Sep 2026 16:36:04 GMT  
		Size: 58.4 MB (58366519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c99b5a3efd219c38a54ce3cf903653705e0abdc6c94017310e4a98c79fcde6b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1e1ff86a899f40811a1d8297b713022e4858583c53b2ec382ec64a993b1157`

```dockerfile
```

-	Layers:
	-	`sha256:d116dc4bed008aef80e6f58887cafc57cad41d68f9ea0bf67564341ff2c7d4be`  
		Last Modified: Wed, 16 Sep 2026 16:36:03 GMT  
		Size: 2.3 MB (2278359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56e03344678468047e52e4c313671e7f7f723d4fb30585a48677370349c0be60`  
		Last Modified: Wed, 16 Sep 2026 16:36:03 GMT  
		Size: 11.0 KB (11042 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:37ffb16f597881eac148c7ea44f28eacf0a3fc417fd657f81e87314a7a17a67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92849145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92a932792667f9885d93fd01a99502978fad0e720674db5be740620725027f1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450ed0b7303328749616e11ce45bebb67547909b80a8d12710596125090955c1`  
		Last Modified: Wed, 16 Sep 2026 16:37:01 GMT  
		Size: 58.5 MB (58472187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f9e1e777b7cf4f68ebdf946be0b0fc3a0f1e72fd5caafdf3360aaab1ebcf2a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2995392779b56503f71f57c97eb1581b11dd36dd7e3815315c4cea20c8a050cf`

```dockerfile
```

-	Layers:
	-	`sha256:496202eb3a4be4ea6bfc8762893b02e4ad2653fef78a79ded027daa27e383103`  
		Last Modified: Wed, 16 Sep 2026 16:37:00 GMT  
		Size: 2.3 MB (2276642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c130cdfd53e2fb2838cb00e4c8106afae2adff0e7e0b08d4fc24e0d3cb50d712`  
		Last Modified: Wed, 16 Sep 2026 16:36:59 GMT  
		Size: 11.0 KB (10958 bytes)  
		MIME: application/vnd.in-toto+json
