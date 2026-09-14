<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.10`](#znc110)
-	[`znc:1.10-slim`](#znc110-slim)
-	[`znc:1.10.3`](#znc1103)
-	[`znc:1.10.3-slim`](#znc1103-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.10`

```console
$ docker pull znc@sha256:040a38a8a146e28f9b17182827f3e37c4ca22d9a489e0aea4816bf8aabb405b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:1.10` - linux; amd64

```console
$ docker pull znc@sha256:b88ca9f50cbc08ac73ced150ac7bdcdf989d41d9c0c2adf91b87472647ac2413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182984991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c135801261c2cba14b7b0ce03a5780677fb51501b01c31b7a6a21710e13e13c8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:49:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:49:56 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:49:56 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:49:56 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:49:56 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 08:10:13 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Sun, 28 Jun 2026 08:10:13 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddcebdc4749f0a7b2c3471d989f2bedc63c01e97da6c9734bbaea38bf5a3979`  
		Last Modified: Sun, 28 Jun 2026 07:50:07 GMT  
		Size: 46.1 MB (46122960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f493c752bf74a5824be29ccbc850c8e9a72bca51b11108eb2b3264070fca5`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad35b5dc67bec3f97ea5e199cb448ad4c4f4bf56924c25da7568402ca844b329`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58d31229dcb80c3128664356a1fd8f567be76f722a7cf44f5a88fc1b489669a`  
		Last Modified: Sun, 28 Jun 2026 08:10:37 GMT  
		Size: 133.0 MB (133016361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f133b1673319d290d8db97fe3071b9a5aeb7ac4ed7a4c37c70762182a2258548`  
		Last Modified: Sun, 28 Jun 2026 08:10:34 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:41cc30c293c662f5503629ddd750581cd36cf18dcc5c74688d8f58e1f4abb13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7014526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd818ec1c0dd8b7fab43d8399332709189fda5182473cfc7a8e6d7566752e5fe`

```dockerfile
```

-	Layers:
	-	`sha256:fc768f955910494d08d36cac2c713affaa0833e782c5d0ee01c51eb4af893ec4`  
		Last Modified: Sun, 28 Jun 2026 08:10:34 GMT  
		Size: 7.0 MB (7004966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43fad9c3b99e18183532487ecc0214a4fe6fdd7728a233e46e52e840e37606a`  
		Last Modified: Sun, 28 Jun 2026 08:10:34 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10` - linux; arm variant v6

```console
$ docker pull znc@sha256:a0df300822eecf592e9e30d6a8429b428a905ab5e974374577936f1757c89d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154946552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94f4fbfeefdf59d2ecc59da84c3659cb8d48b68a45e0874b310a5c78c8e7a29`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:10:07 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:10:07 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:10:07 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:10:07 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:10:07 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 08:10:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Sun, 28 Jun 2026 08:10:06 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e924c376684e8be7deffac361742cbbb2b367aaa41f9e38ca53979c17de87`  
		Last Modified: Sun, 28 Jun 2026 07:10:16 GMT  
		Size: 44.8 MB (44791136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db69c3368821c424ac308b3f34806b42a5c66b8d75c95a6fe5f22642e7ba0a`  
		Last Modified: Sun, 28 Jun 2026 07:10:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01eadd5795ba58edf0de21641f21be1aebfdcc90a50bb9674c3a04f2d25a2d7d`  
		Last Modified: Sun, 28 Jun 2026 07:10:15 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f18cb1eca81f6a852dd84b19fbf77228194c6cbaa2f208daa1f5647abfc380`  
		Last Modified: Sun, 28 Jun 2026 08:10:22 GMT  
		Size: 106.6 MB (106601570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a33dc22e60bc159e115d63dffed5f2ad5078555b433ddb24b2b8b07b9013979`  
		Last Modified: Sun, 28 Jun 2026 08:10:20 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:bc135fcf0130ff8508669b822349d843edf191fa70d307699b17f30774ae6867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b332f649d52266a9ae48a903b61ef240c33838b3738717c4064c2f4faa56e805`

```dockerfile
```

-	Layers:
	-	`sha256:2eb026b0a2d49832421bdeebe4256f6757e2c8833e0a5f0bda9ea9bbbbd48b66`  
		Last Modified: Sun, 28 Jun 2026 08:10:20 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:d8cdbad6c10b82e05bbeaebe2893122eeaf1d30aece95ae5074d02ce3067e12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171226617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a3141f2370dd13d308aa1903d90bbcc50930075b2b93f8a27daf511ac86d6e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:55:26 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:55:26 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:55:26 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:55:26 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:55:26 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:55:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 08:10:07 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Sun, 28 Jun 2026 08:10:07 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f184a343cbd6cf95d9ff42c670491aad6613b6891867807484311745e4831b4d`  
		Last Modified: Sun, 28 Jun 2026 07:55:38 GMT  
		Size: 46.0 MB (45962348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecea1ca60db324cf4369ffaa608e7dc21266172afa880c42245e19f8eb5aade`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a5693988ba771425ae78d0aa341b8ca2b62fe78171854fea6cb56862d324a`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3991c23933183ed89d5f74e14b41f0f7c848ba58a736e2be88a621471524f0`  
		Last Modified: Sun, 28 Jun 2026 08:10:31 GMT  
		Size: 121.1 MB (121081159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324ec4296ae66c6d553b0212bc1d37c20554240e7a14f4eb5e937c1b9be37809`  
		Last Modified: Sun, 28 Jun 2026 08:10:27 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:ca2c16a88e33224d56c3b8545092fa7ba3a3b348a352e452f3039d56a0d9dd4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48ae684d05e94dbfd7b940f9d25d99f8180ea38df118a1b144e555e9eff6704`

```dockerfile
```

-	Layers:
	-	`sha256:2c9a0de9e3126dd056f1c2e773b31ccc8726402040cde5c2857b5d3972944b70`  
		Last Modified: Sun, 28 Jun 2026 08:10:27 GMT  
		Size: 7.1 MB (7064075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:755f200c9ed76f726301d8c4612f46f2a92b0ada34dff79217d674324c492224`  
		Last Modified: Sun, 28 Jun 2026 08:10:27 GMT  
		Size: 9.7 KB (9651 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10-slim`

```console
$ docker pull znc@sha256:629b2a4d29724a4f2242384cf964e1afd06117f0ead9703a9353b20211899b3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:1.10-slim` - linux; amd64

```console
$ docker pull znc@sha256:96c1f6162c5e952a2f7b174c140853df39f2323f08bd2e2b1ef276d1e6df34cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49968300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada1451e1c9b62cf36a17f5c926ec3035b042d249935ee0fed977fbc4380a7f7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:49:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:49:56 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:49:56 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:49:56 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:49:56 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddcebdc4749f0a7b2c3471d989f2bedc63c01e97da6c9734bbaea38bf5a3979`  
		Last Modified: Sun, 28 Jun 2026 07:50:07 GMT  
		Size: 46.1 MB (46122960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f493c752bf74a5824be29ccbc850c8e9a72bca51b11108eb2b3264070fca5`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad35b5dc67bec3f97ea5e199cb448ad4c4f4bf56924c25da7568402ca844b329`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:c99c31291200376df6d78b31d514d42f341c58884d088f220adf5fc2d95c81ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eec12dc62ee581c4d4c59312537db71bb35ec636659af222548c5363d882ab`

```dockerfile
```

-	Layers:
	-	`sha256:500259fd3e286bd3b0f58e1e1b05c2afb286481bc830e2d9f8bb62bf33fa7ece`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 1.7 MB (1733910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d25b2f4146df5bcf4b014a8809634d21cc93234c322c6de724737124e349a1f`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:beb58fb0e7539ede17017f44fe126c7e0af6afe4ee4cd2594e6c0e140f6ad879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48344651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9fc2a3164aa172017a7f49ad0c9e5c248f06a2b2cb854cbfed7185b19ef966`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:10:07 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:10:07 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:10:07 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:10:07 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:10:07 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e924c376684e8be7deffac361742cbbb2b367aaa41f9e38ca53979c17de87`  
		Last Modified: Sun, 28 Jun 2026 07:10:16 GMT  
		Size: 44.8 MB (44791136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db69c3368821c424ac308b3f34806b42a5c66b8d75c95a6fe5f22642e7ba0a`  
		Last Modified: Sun, 28 Jun 2026 07:10:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01eadd5795ba58edf0de21641f21be1aebfdcc90a50bb9674c3a04f2d25a2d7d`  
		Last Modified: Sun, 28 Jun 2026 07:10:15 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:0a7f3b9730c0470a6e09ddf3f883d20f1705c5ea94cbc47c475c91acf2e6da68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75ad6bdd0bd3e5f0553041ffb2f1e0eadad6d1b63c3e18480843a2352e584c`

```dockerfile
```

-	Layers:
	-	`sha256:861ce414ba379051c72b0da3c8ab827e7cedaca1017c8a094f5ddd5bb938d7b9`  
		Last Modified: Sun, 28 Jun 2026 07:10:14 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:31dca0347f93557f044433142b8a1083bf592a839cae59a59b22794842fee94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50145128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cea40b803a6827d16049d3d16ff2b4f17b630d4959b615cead71722ddfdad95`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:55:26 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:55:26 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:55:26 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:55:26 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:55:26 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:55:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f184a343cbd6cf95d9ff42c670491aad6613b6891867807484311745e4831b4d`  
		Last Modified: Sun, 28 Jun 2026 07:55:38 GMT  
		Size: 46.0 MB (45962348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecea1ca60db324cf4369ffaa608e7dc21266172afa880c42245e19f8eb5aade`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a5693988ba771425ae78d0aa341b8ca2b62fe78171854fea6cb56862d324a`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:5172e817f09637e0d17ddfd4704a50215ba7bd37cf0b9100eb7c04aa96d1c6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5e52b77829f3ded0836d52ead9634ef4b0145f5b8e34eec9f49041bbf9f3be`

```dockerfile
```

-	Layers:
	-	`sha256:a8373bc4f446c7c8a247045bffeda76e5d69f321c9e02cbab3cf3e7af46a7075`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 1.7 MB (1733390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7662719e148d59545457f677a88fb4b0a97dc2c64214582226f69eabf5047297`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10.3`

**does not exist** (yet?)

## `znc:1.10.3-slim`

**does not exist** (yet?)

## `znc:latest`

```console
$ docker pull znc@sha256:040a38a8a146e28f9b17182827f3e37c4ca22d9a489e0aea4816bf8aabb405b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:b88ca9f50cbc08ac73ced150ac7bdcdf989d41d9c0c2adf91b87472647ac2413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182984991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c135801261c2cba14b7b0ce03a5780677fb51501b01c31b7a6a21710e13e13c8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:49:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:49:56 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:49:56 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:49:56 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:49:56 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 08:10:13 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Sun, 28 Jun 2026 08:10:13 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddcebdc4749f0a7b2c3471d989f2bedc63c01e97da6c9734bbaea38bf5a3979`  
		Last Modified: Sun, 28 Jun 2026 07:50:07 GMT  
		Size: 46.1 MB (46122960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f493c752bf74a5824be29ccbc850c8e9a72bca51b11108eb2b3264070fca5`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad35b5dc67bec3f97ea5e199cb448ad4c4f4bf56924c25da7568402ca844b329`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58d31229dcb80c3128664356a1fd8f567be76f722a7cf44f5a88fc1b489669a`  
		Last Modified: Sun, 28 Jun 2026 08:10:37 GMT  
		Size: 133.0 MB (133016361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f133b1673319d290d8db97fe3071b9a5aeb7ac4ed7a4c37c70762182a2258548`  
		Last Modified: Sun, 28 Jun 2026 08:10:34 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:41cc30c293c662f5503629ddd750581cd36cf18dcc5c74688d8f58e1f4abb13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7014526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd818ec1c0dd8b7fab43d8399332709189fda5182473cfc7a8e6d7566752e5fe`

```dockerfile
```

-	Layers:
	-	`sha256:fc768f955910494d08d36cac2c713affaa0833e782c5d0ee01c51eb4af893ec4`  
		Last Modified: Sun, 28 Jun 2026 08:10:34 GMT  
		Size: 7.0 MB (7004966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43fad9c3b99e18183532487ecc0214a4fe6fdd7728a233e46e52e840e37606a`  
		Last Modified: Sun, 28 Jun 2026 08:10:34 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:a0df300822eecf592e9e30d6a8429b428a905ab5e974374577936f1757c89d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154946552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94f4fbfeefdf59d2ecc59da84c3659cb8d48b68a45e0874b310a5c78c8e7a29`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:10:07 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:10:07 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:10:07 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:10:07 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:10:07 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 08:10:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Sun, 28 Jun 2026 08:10:06 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e924c376684e8be7deffac361742cbbb2b367aaa41f9e38ca53979c17de87`  
		Last Modified: Sun, 28 Jun 2026 07:10:16 GMT  
		Size: 44.8 MB (44791136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db69c3368821c424ac308b3f34806b42a5c66b8d75c95a6fe5f22642e7ba0a`  
		Last Modified: Sun, 28 Jun 2026 07:10:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01eadd5795ba58edf0de21641f21be1aebfdcc90a50bb9674c3a04f2d25a2d7d`  
		Last Modified: Sun, 28 Jun 2026 07:10:15 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f18cb1eca81f6a852dd84b19fbf77228194c6cbaa2f208daa1f5647abfc380`  
		Last Modified: Sun, 28 Jun 2026 08:10:22 GMT  
		Size: 106.6 MB (106601570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a33dc22e60bc159e115d63dffed5f2ad5078555b433ddb24b2b8b07b9013979`  
		Last Modified: Sun, 28 Jun 2026 08:10:20 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:bc135fcf0130ff8508669b822349d843edf191fa70d307699b17f30774ae6867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b332f649d52266a9ae48a903b61ef240c33838b3738717c4064c2f4faa56e805`

```dockerfile
```

-	Layers:
	-	`sha256:2eb026b0a2d49832421bdeebe4256f6757e2c8833e0a5f0bda9ea9bbbbd48b66`  
		Last Modified: Sun, 28 Jun 2026 08:10:20 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:d8cdbad6c10b82e05bbeaebe2893122eeaf1d30aece95ae5074d02ce3067e12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171226617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a3141f2370dd13d308aa1903d90bbcc50930075b2b93f8a27daf511ac86d6e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:55:26 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:55:26 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:55:26 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:55:26 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:55:26 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:55:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 08:10:07 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Sun, 28 Jun 2026 08:10:07 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f184a343cbd6cf95d9ff42c670491aad6613b6891867807484311745e4831b4d`  
		Last Modified: Sun, 28 Jun 2026 07:55:38 GMT  
		Size: 46.0 MB (45962348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecea1ca60db324cf4369ffaa608e7dc21266172afa880c42245e19f8eb5aade`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a5693988ba771425ae78d0aa341b8ca2b62fe78171854fea6cb56862d324a`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3991c23933183ed89d5f74e14b41f0f7c848ba58a736e2be88a621471524f0`  
		Last Modified: Sun, 28 Jun 2026 08:10:31 GMT  
		Size: 121.1 MB (121081159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324ec4296ae66c6d553b0212bc1d37c20554240e7a14f4eb5e937c1b9be37809`  
		Last Modified: Sun, 28 Jun 2026 08:10:27 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:ca2c16a88e33224d56c3b8545092fa7ba3a3b348a352e452f3039d56a0d9dd4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48ae684d05e94dbfd7b940f9d25d99f8180ea38df118a1b144e555e9eff6704`

```dockerfile
```

-	Layers:
	-	`sha256:2c9a0de9e3126dd056f1c2e773b31ccc8726402040cde5c2857b5d3972944b70`  
		Last Modified: Sun, 28 Jun 2026 08:10:27 GMT  
		Size: 7.1 MB (7064075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:755f200c9ed76f726301d8c4612f46f2a92b0ada34dff79217d674324c492224`  
		Last Modified: Sun, 28 Jun 2026 08:10:27 GMT  
		Size: 9.7 KB (9651 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:slim`

```console
$ docker pull znc@sha256:629b2a4d29724a4f2242384cf964e1afd06117f0ead9703a9353b20211899b3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:96c1f6162c5e952a2f7b174c140853df39f2323f08bd2e2b1ef276d1e6df34cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49968300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada1451e1c9b62cf36a17f5c926ec3035b042d249935ee0fed977fbc4380a7f7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:49:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:49:56 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:49:56 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:49:56 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:49:56 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:49:56 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:49:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddcebdc4749f0a7b2c3471d989f2bedc63c01e97da6c9734bbaea38bf5a3979`  
		Last Modified: Sun, 28 Jun 2026 07:50:07 GMT  
		Size: 46.1 MB (46122960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f493c752bf74a5824be29ccbc850c8e9a72bca51b11108eb2b3264070fca5`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad35b5dc67bec3f97ea5e199cb448ad4c4f4bf56924c25da7568402ca844b329`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:c99c31291200376df6d78b31d514d42f341c58884d088f220adf5fc2d95c81ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eec12dc62ee581c4d4c59312537db71bb35ec636659af222548c5363d882ab`

```dockerfile
```

-	Layers:
	-	`sha256:500259fd3e286bd3b0f58e1e1b05c2afb286481bc830e2d9f8bb62bf33fa7ece`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 1.7 MB (1733910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d25b2f4146df5bcf4b014a8809634d21cc93234c322c6de724737124e349a1f`  
		Last Modified: Sun, 28 Jun 2026 07:50:06 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:beb58fb0e7539ede17017f44fe126c7e0af6afe4ee4cd2594e6c0e140f6ad879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48344651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9fc2a3164aa172017a7f49ad0c9e5c248f06a2b2cb854cbfed7185b19ef966`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:10:07 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:10:07 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:10:07 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:10:07 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:10:07 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:10:07 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e924c376684e8be7deffac361742cbbb2b367aaa41f9e38ca53979c17de87`  
		Last Modified: Sun, 28 Jun 2026 07:10:16 GMT  
		Size: 44.8 MB (44791136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db69c3368821c424ac308b3f34806b42a5c66b8d75c95a6fe5f22642e7ba0a`  
		Last Modified: Sun, 28 Jun 2026 07:10:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01eadd5795ba58edf0de21641f21be1aebfdcc90a50bb9674c3a04f2d25a2d7d`  
		Last Modified: Sun, 28 Jun 2026 07:10:15 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:0a7f3b9730c0470a6e09ddf3f883d20f1705c5ea94cbc47c475c91acf2e6da68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75ad6bdd0bd3e5f0553041ffb2f1e0eadad6d1b63c3e18480843a2352e584c`

```dockerfile
```

-	Layers:
	-	`sha256:861ce414ba379051c72b0da3c8ab827e7cedaca1017c8a094f5ddd5bb938d7b9`  
		Last Modified: Sun, 28 Jun 2026 07:10:14 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:31dca0347f93557f044433142b8a1083bf592a839cae59a59b22794842fee94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50145128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cea40b803a6827d16049d3d16ff2b4f17b630d4959b615cead71722ddfdad95`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Sun, 28 Jun 2026 07:55:26 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Sun, 28 Jun 2026 07:55:26 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Sun, 28 Jun 2026 07:55:26 GMT
ARG MAKEFLAGS=
# Sun, 28 Jun 2026 07:55:26 GMT
ENV ZNC_VERSION=1.10.2
# Sun, 28 Jun 2026 07:55:26 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY entrypoint.sh / # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Sun, 28 Jun 2026 07:55:26 GMT
VOLUME [/znc-data]
# Sun, 28 Jun 2026 07:55:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f184a343cbd6cf95d9ff42c670491aad6613b6891867807484311745e4831b4d`  
		Last Modified: Sun, 28 Jun 2026 07:55:38 GMT  
		Size: 46.0 MB (45962348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecea1ca60db324cf4369ffaa608e7dc21266172afa880c42245e19f8eb5aade`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a5693988ba771425ae78d0aa341b8ca2b62fe78171854fea6cb56862d324a`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:5172e817f09637e0d17ddfd4704a50215ba7bd37cf0b9100eb7c04aa96d1c6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5e52b77829f3ded0836d52ead9634ef4b0145f5b8e34eec9f49041bbf9f3be`

```dockerfile
```

-	Layers:
	-	`sha256:a8373bc4f446c7c8a247045bffeda76e5d69f321c9e02cbab3cf3e7af46a7075`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 1.7 MB (1733390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7662719e148d59545457f677a88fb4b0a97dc2c64214582226f69eabf5047297`  
		Last Modified: Sun, 28 Jun 2026 07:55:36 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json
