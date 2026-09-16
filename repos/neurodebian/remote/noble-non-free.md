## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:701ad84cc7a2d6028eb55a604056d4a04cff6a7b783bf04920ddd24215d4ac23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:e3c40938ddc0c506be4f5871043d4a9ad85b04d2da486df38d8a08e17c45275f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33438067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab75ae100831d74d6d246dfc73bd6954dca68ec0a7b6882d77b36e8e5c0265f4`
-	Default Command: `["\/bin\/bash"]`

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
# Wed, 16 Sep 2026 03:26:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a27d9e0487a92860ae82b9aa8d3ed1785f3ba2cadbec20d1bd32da05983f35`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 3.6 MB (3565571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3555b4e752da60bc5b6cebf1563dcef4b61820ff68e2dcccd0f03ba10142b29`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5a60d028de043838fb7dc4762834436b5b9783ad9085e2497118b43789d79c`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1638425659dceea5acac4b3cea883c638e1484fb2e3c61a61f765a4656d46b0a`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 105.0 KB (105036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cd3c67a4ed4b2db196e9c4bff6762c1b51be8b0602c9fc33a37f12ba343b06`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7b450f7f9d9933fbd6667275f8e0c47ca4d9c6db827cc682cddb49641755469b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767a8889042e5a055542b2cdf687e66bef97ec71dd43f6a4c40c8ec9a3ba8f1a`

```dockerfile
```

-	Layers:
	-	`sha256:dbcf6b7070419655497b8b607f0446f976a41703f43a972acbf4deba59d3be4c`  
		Last Modified: Wed, 16 Sep 2026 03:26:44 GMT  
		Size: 2.1 MB (2120993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4081f2909099fceb9421c028841a6d5a4c84f956f208949b0a3fa00537e9b7`  
		Last Modified: Wed, 16 Sep 2026 03:26:43 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:309dca038676e4a84375cecfc6aa8622006c2bb1c22e8fddda690380c800b6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32613506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebad1da9179ebbc07bf66f0814e4ab58313ac9c4e80405e2312d06c420dce12`
-	Default Command: `["\/bin\/bash"]`

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
# Wed, 16 Sep 2026 03:26:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec1e193682700888a7f72ff8947afbe21aa5c4fb367b64929ef7085f35f265f`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 3.6 MB (3562784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab8bdcac7cfb353988aac4698a054c5b487b3577bff299ca160e0a38ece40bd`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e33acc1043793245d14ef7b90e978fcffded57fd9c6bce0bbd10ccdc20bd62`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9a69acb2eb1e9d4c5f4a79e39f972711c69dcb02e158c4dd616efb7ed55249`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 105.8 KB (105801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79855906c15be91997ba6c0029975b50095f78633608ed63e81e0280b135c0f`  
		Last Modified: Wed, 16 Sep 2026 03:26:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:019c7004af36d5911e9f277fc7ce1ac4cc06d37a7aee9bc7da80e69b0a75eb16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c8c1dead0c2e8502129eb128c5a67b16658ae72cb67f406049631e36ebfb37`

```dockerfile
```

-	Layers:
	-	`sha256:e7a9ae54a49cc691f916e9ecf1b1fcedaac23e01da533c845dffb95efcea169b`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.1 MB (2122038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44174789e7a1c67f7b18fd6516a3ce2f225e0f977560a5e2e56381f2b1563fd6`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
