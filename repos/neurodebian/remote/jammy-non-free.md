## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:04bd862a108259c731f590a0281b6bee74fd0d0abc1e5cb7ddc690bf8ed2c853
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4c3d9ba4255b0c83961ff001609b6de99256f83b17c4b91380bb01a53a24fda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33808878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13f71e9c7cf89cf9372b51f77940388d503fa6db24de68bfc2e98f3f3654626`
-	Default Command: `["\/bin\/bash"]`

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
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97243f9bb3ed70bbb336e77336a06c0a43223345476672dfa0bfea340e83efc`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 3.6 MB (3625126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85168820ad8c9c73444a19c5b51ea70e8c25f642a5a0f496335aa8fbbf2924ce`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d9ae678c01254c66f62f89270520b7764e5a31fc816f558414604bebe9ecc1`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e87e05ea693664d7024beafff64c3d0e36d2340dde45b550e45ff5999e8bb5`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 111.8 KB (111757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521bdfb321ed71b1c347ddbacda16d57c612d7defeed35a12bd966a5e855c6d9`  
		Last Modified: Wed, 11 Nov 2026 23:31:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0c71055a4f6090d0b1e4a74ad3f6f609918da8fac405434ef2959f24043bd441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de32f33b20065a6aaf9e13abfc9199b86affd16f4a3bff3fd0830e13a5634415`

```dockerfile
```

-	Layers:
	-	`sha256:b481ff5cba1502262f5afa4eda596ba198b6fe7d035cc0e0b463e3180f645bd7`  
		Last Modified: Wed, 11 Nov 2026 23:31:17 GMT  
		Size: 2.2 MB (2199048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5302f4ac624b27f2368c99361ef243dacbb2e402d562008212479a61ac49b5f3`  
		Last Modified: Wed, 11 Nov 2026 23:31:16 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a8e781087ae19d3f20dc92288cbc250271f4bceec0657bfbff985ffa047594fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31725004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f61d5528f49212fe3d58dc27a88b23b587faeca5c2da5242355f1858e8ae6a`
-	Default Command: `["\/bin\/bash"]`

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
# Wed, 11 Nov 2026 23:34:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:34:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:34:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29ab94fbfa8a90c048420f7647bcc9d236e934887841920fed0c43c8c4571bb`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 3.6 MB (3609329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6291b32a36825cbc56c8fc9ed25063e6b1c083612c309968b088ac864211d8a6`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b281e8f894a157be0535f2cb49c6545ba80c2c54049da975f476c726e304d5b9`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3379f26cf704b44d56beb3b4f502e5ff5db1b62be36430f4c024a0943edf8a3`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 111.8 KB (111804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf4a967e16e19413344e3bb09318dc5ee7525a2c6092613def74b94f8dc049e`  
		Last Modified: Wed, 11 Nov 2026 23:35:10 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd95d6bcee5056c5012b1e1693639c2520b8df01058af763566c286af9b27079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739387f8cf4f8e078d124678f102dffd34bb0a1edadbf2dfa02ad51814078958`

```dockerfile
```

-	Layers:
	-	`sha256:2f599c3682f90797d561523af55590b49203ccbb7ed8c576233018e64af73af4`  
		Last Modified: Wed, 11 Nov 2026 23:35:09 GMT  
		Size: 2.2 MB (2199308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28b010f1f1722750e610152ec4c9125570d4c78d01e4ebf49bb879976febf6af`  
		Last Modified: Wed, 11 Nov 2026 23:35:08 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
