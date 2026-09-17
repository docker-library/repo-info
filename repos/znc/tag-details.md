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
$ docker pull znc@sha256:7b5cdb36dc5a2696311c7241c93d332c45d2a2c91a956af270aaeaa8fc63540c
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
$ docker pull znc@sha256:608d3b6b660b128c3481c6fd5c14fe3643af8e36ce655e566b566d683dd3037d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185483513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faccd72c802140b9c1f66eb2d64d1a8c49b75d1430f9acb155df3f9a5b6d4219`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:19 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:19 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Sep 2026 21:10:21 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Mon, 14 Sep 2026 21:10:22 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5fc833e595efe5cde9490c8dee25eee1c7009ce797448934580107ce4bad5a`  
		Last Modified: Mon, 14 Sep 2026 20:59:32 GMT  
		Size: 48.6 MB (48621917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e19b6774bb9f912665ece131e874170b1363dd489d33939ff9a5dd85140e5`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1852e8c5172d1789ddd376786cb746a8025cab31edc7720e4f0d6638d97049b7`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a8aecda1c88e7805bdcff7d028d47e34e286d3df45e23735be865371066baf`  
		Last Modified: Mon, 14 Sep 2026 21:10:47 GMT  
		Size: 133.0 MB (133015925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2587cafe49fec7f551deeab401cf0c1224489995d0b332678a9a9f16c16d8aa7`  
		Last Modified: Mon, 14 Sep 2026 21:10:44 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:a4f8838871c333ee0893881911832936b3c644e107b0a7beac065aa187ff5822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7014526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df719e888dffe38a8c72c95ed06ecae60def193e52c7b21ee978b3068740723`

```dockerfile
```

-	Layers:
	-	`sha256:3bb55181b90f0729a4c0f7fa746e7a6e23d0a37a573dce6aefe057ce18d7ce17`  
		Last Modified: Mon, 14 Sep 2026 21:10:44 GMT  
		Size: 7.0 MB (7004966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd6057e3c6890f63e6d4bc1f2e88bd9fa7d35912dfdf67eaf758e571f9c513b0`  
		Last Modified: Mon, 14 Sep 2026 21:10:43 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10` - linux; arm variant v6

```console
$ docker pull znc@sha256:9906edf7b827d4c5f7f4a53624ffb1bd0d9def12682ce3503d1cbe916121f729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157490965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affba4f75c975a04ec1c8f85d27fa84c9a6df926a60fb8079e95a0d9835e97b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:35:56 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 17 Sep 2026 22:35:56 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0323a9870b42d4f58a3f182e9136bd703ebdec8359bf0a30f7a5f6bcc6e87bd4`  
		Last Modified: Thu, 17 Sep 2026 22:36:12 GMT  
		Size: 106.6 MB (106600947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a5ae27cf2ed494bd6593077ca0ea6d336814deeb330a29e64873875cbb99a`  
		Last Modified: Thu, 17 Sep 2026 22:36:09 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:7b8859f65d16bb1fc29402cb7f75ae5c13d53dd2b3e7e3f75a0c090e757a0f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38a4dd5b0d036344ba5c10042ae7fe2e3eb9fea8f2101ccfc7bae1c969a60c`

```dockerfile
```

-	Layers:
	-	`sha256:61503c0ce7e11d995427f72e64021f952c7df5bc6c2319d3c9e959e13b39c6fe`  
		Last Modified: Thu, 17 Sep 2026 22:36:09 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:1b2425694531231074e0c917ce7afbb8169f177a8e432fe0f6f56cdf2c3dedc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (174034433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387cc86de8f9d2de1f54866c5581e030d436aaf817597228bae11f4638e0c4f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:30 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:30 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:30 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:30 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:30 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:30 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:30 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Sep 2026 21:10:04 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Mon, 14 Sep 2026 21:10:04 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3910d4e0a1c89bb6c865db91391124f3ebbd98b1a5214b7bc22f0fd8dbb52660`  
		Last Modified: Mon, 14 Sep 2026 20:59:42 GMT  
		Size: 48.8 MB (48769948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f904938f3912d2882bbf41795cf3ea1e25b4afbcbc49e4033a81809f94bd4d`  
		Last Modified: Mon, 14 Sep 2026 20:59:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87416294c09f2f9c9e641d8b41162a950fb46cf0b5c512bc3085b5684c8c62ce`  
		Last Modified: Mon, 14 Sep 2026 20:59:40 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ecf081e0553e43886a67193aedefd4430bfeb75fbd5b4be4ac5cf162d24304`  
		Last Modified: Mon, 14 Sep 2026 21:10:27 GMT  
		Size: 121.1 MB (121081374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27acb315092516a825880ec8336ec3a3ceb766e4ad86bea00d643179f3bbc34`  
		Last Modified: Mon, 14 Sep 2026 21:10:25 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:3c67852151ace520c30270ea9b0fdc2beb6bada0daa97dd260370c16a1184730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4389d2f1d551bab767631555f1bef0de4259b31ac6e02ce5a8b78a7b07a3abe3`

```dockerfile
```

-	Layers:
	-	`sha256:c2ec15ab4546404ac053fb5c21539de5ba84c3d5649c15af39642f2313b288bd`  
		Last Modified: Mon, 14 Sep 2026 21:10:25 GMT  
		Size: 7.1 MB (7064075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4208b600de2f66c9d6790c04813e60e0f55200592418d9ae4e7280565ff4374`  
		Last Modified: Mon, 14 Sep 2026 21:10:25 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10-slim`

```console
$ docker pull znc@sha256:3c7b95361fedffc0858a23c3cbe5e535d77cdd1190a5ca3585769e56bde43ec4
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
$ docker pull znc@sha256:8eb6d8658b79ae8be0b9f7367812efd42d57138793952eb48578ab00f2edeb1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1355c03e24f8fef0bcca65db609deb7761a0eaf99bd7b0a98ba644a72ef705b3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:19 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:19 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5fc833e595efe5cde9490c8dee25eee1c7009ce797448934580107ce4bad5a`  
		Last Modified: Mon, 14 Sep 2026 20:59:32 GMT  
		Size: 48.6 MB (48621917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e19b6774bb9f912665ece131e874170b1363dd489d33939ff9a5dd85140e5`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1852e8c5172d1789ddd376786cb746a8025cab31edc7720e4f0d6638d97049b7`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:b2db07afb2f20b153586c5dc24741204a10a5540e7ba184bf923813d3b7491e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cf7c1e2dcaa30f441b067c14bdb2d309921adbc3a8fb407fdc6798fa0b3ea2`

```dockerfile
```

-	Layers:
	-	`sha256:35f7f393a46cbdde08780b81f2a7d48e0c36877e07e18759125352f480239047`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 1.7 MB (1733910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91f7b7fa9b60b4891aeb08de2d1f80ee47a03b04f4d5b14d6e384898cc1de44b`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:c82891f5baf8265cd89e663f96ed440b42ee90e022f353bca717d1103ea7dfdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03c34a64dd8d4f2942d353a80660edc865e49f5f9197312e3994af74f89f24a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:82034fec0b1e79d44cf912a9d899e6dd43eee6e1125b112e01824d5252ede088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7f3938e490103268911b8dd156fa4df51cee33d6580c1ce7d85c3e12897c95`

```dockerfile
```

-	Layers:
	-	`sha256:26cbeb55621af8be64f7884243e037bea5c483c9c929c1ba98ec39225d32df67`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:ba76d82529a6febeaf699ec9b7422bfe74d08538d0aaa3041ca4fd07927db96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53076018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd47418382cca25cbdbc8d681e8115087dadd2f8231f0c10d59d4355818a5d29`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:38:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:38:48 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:38:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:38:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818a908b0cd6f317968a03501f9f28caaef93d8bf9f675d48a31a4ed1b82a831`  
		Last Modified: Thu, 17 Sep 2026 21:39:00 GMT  
		Size: 48.9 MB (48889041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2488d104266a32c788d27e5bb4c1119818915bb9515bbfc5143590699f2bd3`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c76f6c4ebcc957f90ada18575322c39a5c31d75a8475f2b5c39357164588b0e`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:0c5a926cf9e10d082474b2855d1eec5665e6aa721db8f15bf933ed8051ee2da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1748763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdb9cfdd615ed5350f7730875d802c4ef01afb675820d9d94dfd2dfc25bf807`

```dockerfile
```

-	Layers:
	-	`sha256:06d33a297e88e6f106c85b1baf8215e73403910123a2982c1d2ff2e5393e436b`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 1.7 MB (1734683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15a506eb43a80e0587b51a0f44bfa6496dc938f5b2bbb87573692d601a64f3f9`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10.3`

```console
$ docker pull znc@sha256:ea4df2a9252d4756f0ff194b3714b97b31746bbe6831442945fd08f7e29b62f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:1.10.3` - linux; amd64

```console
$ docker pull znc@sha256:608d3b6b660b128c3481c6fd5c14fe3643af8e36ce655e566b566d683dd3037d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185483513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faccd72c802140b9c1f66eb2d64d1a8c49b75d1430f9acb155df3f9a5b6d4219`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:19 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:19 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Sep 2026 21:10:21 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Mon, 14 Sep 2026 21:10:22 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5fc833e595efe5cde9490c8dee25eee1c7009ce797448934580107ce4bad5a`  
		Last Modified: Mon, 14 Sep 2026 20:59:32 GMT  
		Size: 48.6 MB (48621917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e19b6774bb9f912665ece131e874170b1363dd489d33939ff9a5dd85140e5`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1852e8c5172d1789ddd376786cb746a8025cab31edc7720e4f0d6638d97049b7`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a8aecda1c88e7805bdcff7d028d47e34e286d3df45e23735be865371066baf`  
		Last Modified: Mon, 14 Sep 2026 21:10:47 GMT  
		Size: 133.0 MB (133015925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2587cafe49fec7f551deeab401cf0c1224489995d0b332678a9a9f16c16d8aa7`  
		Last Modified: Mon, 14 Sep 2026 21:10:44 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3` - unknown; unknown

```console
$ docker pull znc@sha256:a4f8838871c333ee0893881911832936b3c644e107b0a7beac065aa187ff5822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7014526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df719e888dffe38a8c72c95ed06ecae60def193e52c7b21ee978b3068740723`

```dockerfile
```

-	Layers:
	-	`sha256:3bb55181b90f0729a4c0f7fa746e7a6e23d0a37a573dce6aefe057ce18d7ce17`  
		Last Modified: Mon, 14 Sep 2026 21:10:44 GMT  
		Size: 7.0 MB (7004966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd6057e3c6890f63e6d4bc1f2e88bd9fa7d35912dfdf67eaf758e571f9c513b0`  
		Last Modified: Mon, 14 Sep 2026 21:10:43 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3` - linux; arm variant v6

```console
$ docker pull znc@sha256:9906edf7b827d4c5f7f4a53624ffb1bd0d9def12682ce3503d1cbe916121f729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157490965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affba4f75c975a04ec1c8f85d27fa84c9a6df926a60fb8079e95a0d9835e97b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:35:56 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 17 Sep 2026 22:35:56 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0323a9870b42d4f58a3f182e9136bd703ebdec8359bf0a30f7a5f6bcc6e87bd4`  
		Last Modified: Thu, 17 Sep 2026 22:36:12 GMT  
		Size: 106.6 MB (106600947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a5ae27cf2ed494bd6593077ca0ea6d336814deeb330a29e64873875cbb99a`  
		Last Modified: Thu, 17 Sep 2026 22:36:09 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3` - unknown; unknown

```console
$ docker pull znc@sha256:7b8859f65d16bb1fc29402cb7f75ae5c13d53dd2b3e7e3f75a0c090e757a0f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38a4dd5b0d036344ba5c10042ae7fe2e3eb9fea8f2101ccfc7bae1c969a60c`

```dockerfile
```

-	Layers:
	-	`sha256:61503c0ce7e11d995427f72e64021f952c7df5bc6c2319d3c9e959e13b39c6fe`  
		Last Modified: Thu, 17 Sep 2026 22:36:09 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:9ba057a0014f818eebe67d8c6b179de261b82f94b85ff78c96c55d8ef4076df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174157861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bc6590334af6f5f7be2fdde5187192eda825732c776b88eb645b76e77465f2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:38:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:38:48 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:38:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:38:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:44:13 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 17 Sep 2026 22:44:13 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818a908b0cd6f317968a03501f9f28caaef93d8bf9f675d48a31a4ed1b82a831`  
		Last Modified: Thu, 17 Sep 2026 21:39:00 GMT  
		Size: 48.9 MB (48889041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2488d104266a32c788d27e5bb4c1119818915bb9515bbfc5143590699f2bd3`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c76f6c4ebcc957f90ada18575322c39a5c31d75a8475f2b5c39357164588b0e`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83da7a056f2487fb7a35a29c045b86c52b613c4c0990c42be5e59043df551334`  
		Last Modified: Thu, 17 Sep 2026 22:44:36 GMT  
		Size: 121.1 MB (121081512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4431219ba69eb9fc151d8244ad253c22f3c51276580f5d4c5564fb4a4b0dc1f5`  
		Last Modified: Thu, 17 Sep 2026 22:44:33 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3` - unknown; unknown

```console
$ docker pull znc@sha256:5d8f2c9b9d4cf06dbb5d288ed1b325c26ceac0761c99de5648bb504661419749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7075020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955027b465a7b26d89c1eb43e496d75841c6eda5cfc5771cda229e05b6e3f59e`

```dockerfile
```

-	Layers:
	-	`sha256:6db5893ffaf675f0c2ca7971a1cdab2c8eb221036d90eb62c62ae848996133b1`  
		Last Modified: Thu, 17 Sep 2026 22:44:33 GMT  
		Size: 7.1 MB (7065368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1431914721562db6f918e7fa25e95dc5485c1d3ee0488ebab75988aeb749f94a`  
		Last Modified: Thu, 17 Sep 2026 22:44:33 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10.3-slim`

```console
$ docker pull znc@sha256:3c7b95361fedffc0858a23c3cbe5e535d77cdd1190a5ca3585769e56bde43ec4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:1.10.3-slim` - linux; amd64

```console
$ docker pull znc@sha256:8eb6d8658b79ae8be0b9f7367812efd42d57138793952eb48578ab00f2edeb1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1355c03e24f8fef0bcca65db609deb7761a0eaf99bd7b0a98ba644a72ef705b3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:19 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:19 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5fc833e595efe5cde9490c8dee25eee1c7009ce797448934580107ce4bad5a`  
		Last Modified: Mon, 14 Sep 2026 20:59:32 GMT  
		Size: 48.6 MB (48621917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e19b6774bb9f912665ece131e874170b1363dd489d33939ff9a5dd85140e5`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1852e8c5172d1789ddd376786cb746a8025cab31edc7720e4f0d6638d97049b7`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3-slim` - unknown; unknown

```console
$ docker pull znc@sha256:b2db07afb2f20b153586c5dc24741204a10a5540e7ba184bf923813d3b7491e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cf7c1e2dcaa30f441b067c14bdb2d309921adbc3a8fb407fdc6798fa0b3ea2`

```dockerfile
```

-	Layers:
	-	`sha256:35f7f393a46cbdde08780b81f2a7d48e0c36877e07e18759125352f480239047`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 1.7 MB (1733910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91f7b7fa9b60b4891aeb08de2d1f80ee47a03b04f4d5b14d6e384898cc1de44b`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:c82891f5baf8265cd89e663f96ed440b42ee90e022f353bca717d1103ea7dfdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03c34a64dd8d4f2942d353a80660edc865e49f5f9197312e3994af74f89f24a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3-slim` - unknown; unknown

```console
$ docker pull znc@sha256:82034fec0b1e79d44cf912a9d899e6dd43eee6e1125b112e01824d5252ede088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7f3938e490103268911b8dd156fa4df51cee33d6580c1ce7d85c3e12897c95`

```dockerfile
```

-	Layers:
	-	`sha256:26cbeb55621af8be64f7884243e037bea5c483c9c929c1ba98ec39225d32df67`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:ba76d82529a6febeaf699ec9b7422bfe74d08538d0aaa3041ca4fd07927db96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53076018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd47418382cca25cbdbc8d681e8115087dadd2f8231f0c10d59d4355818a5d29`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:38:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:38:48 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:38:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:38:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818a908b0cd6f317968a03501f9f28caaef93d8bf9f675d48a31a4ed1b82a831`  
		Last Modified: Thu, 17 Sep 2026 21:39:00 GMT  
		Size: 48.9 MB (48889041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2488d104266a32c788d27e5bb4c1119818915bb9515bbfc5143590699f2bd3`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c76f6c4ebcc957f90ada18575322c39a5c31d75a8475f2b5c39357164588b0e`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3-slim` - unknown; unknown

```console
$ docker pull znc@sha256:0c5a926cf9e10d082474b2855d1eec5665e6aa721db8f15bf933ed8051ee2da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1748763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdb9cfdd615ed5350f7730875d802c4ef01afb675820d9d94dfd2dfc25bf807`

```dockerfile
```

-	Layers:
	-	`sha256:06d33a297e88e6f106c85b1baf8215e73403910123a2982c1d2ff2e5393e436b`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 1.7 MB (1734683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15a506eb43a80e0587b51a0f44bfa6496dc938f5b2bbb87573692d601a64f3f9`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:latest`

```console
$ docker pull znc@sha256:7b5cdb36dc5a2696311c7241c93d332c45d2a2c91a956af270aaeaa8fc63540c
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
$ docker pull znc@sha256:608d3b6b660b128c3481c6fd5c14fe3643af8e36ce655e566b566d683dd3037d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185483513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faccd72c802140b9c1f66eb2d64d1a8c49b75d1430f9acb155df3f9a5b6d4219`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:19 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:19 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Sep 2026 21:10:21 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Mon, 14 Sep 2026 21:10:22 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5fc833e595efe5cde9490c8dee25eee1c7009ce797448934580107ce4bad5a`  
		Last Modified: Mon, 14 Sep 2026 20:59:32 GMT  
		Size: 48.6 MB (48621917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e19b6774bb9f912665ece131e874170b1363dd489d33939ff9a5dd85140e5`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1852e8c5172d1789ddd376786cb746a8025cab31edc7720e4f0d6638d97049b7`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a8aecda1c88e7805bdcff7d028d47e34e286d3df45e23735be865371066baf`  
		Last Modified: Mon, 14 Sep 2026 21:10:47 GMT  
		Size: 133.0 MB (133015925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2587cafe49fec7f551deeab401cf0c1224489995d0b332678a9a9f16c16d8aa7`  
		Last Modified: Mon, 14 Sep 2026 21:10:44 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:a4f8838871c333ee0893881911832936b3c644e107b0a7beac065aa187ff5822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7014526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df719e888dffe38a8c72c95ed06ecae60def193e52c7b21ee978b3068740723`

```dockerfile
```

-	Layers:
	-	`sha256:3bb55181b90f0729a4c0f7fa746e7a6e23d0a37a573dce6aefe057ce18d7ce17`  
		Last Modified: Mon, 14 Sep 2026 21:10:44 GMT  
		Size: 7.0 MB (7004966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd6057e3c6890f63e6d4bc1f2e88bd9fa7d35912dfdf67eaf758e571f9c513b0`  
		Last Modified: Mon, 14 Sep 2026 21:10:43 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:9906edf7b827d4c5f7f4a53624ffb1bd0d9def12682ce3503d1cbe916121f729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157490965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affba4f75c975a04ec1c8f85d27fa84c9a6df926a60fb8079e95a0d9835e97b9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 22:35:56 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 17 Sep 2026 22:35:56 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0323a9870b42d4f58a3f182e9136bd703ebdec8359bf0a30f7a5f6bcc6e87bd4`  
		Last Modified: Thu, 17 Sep 2026 22:36:12 GMT  
		Size: 106.6 MB (106600947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3a5ae27cf2ed494bd6593077ca0ea6d336814deeb330a29e64873875cbb99a`  
		Last Modified: Thu, 17 Sep 2026 22:36:09 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:7b8859f65d16bb1fc29402cb7f75ae5c13d53dd2b3e7e3f75a0c090e757a0f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38a4dd5b0d036344ba5c10042ae7fe2e3eb9fea8f2101ccfc7bae1c969a60c`

```dockerfile
```

-	Layers:
	-	`sha256:61503c0ce7e11d995427f72e64021f952c7df5bc6c2319d3c9e959e13b39c6fe`  
		Last Modified: Thu, 17 Sep 2026 22:36:09 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:1b2425694531231074e0c917ce7afbb8169f177a8e432fe0f6f56cdf2c3dedc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (174034433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387cc86de8f9d2de1f54866c5581e030d436aaf817597228bae11f4638e0c4f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:30 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:30 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:30 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:30 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:30 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:30 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:30 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:30 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Sep 2026 21:10:04 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Mon, 14 Sep 2026 21:10:04 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3910d4e0a1c89bb6c865db91391124f3ebbd98b1a5214b7bc22f0fd8dbb52660`  
		Last Modified: Mon, 14 Sep 2026 20:59:42 GMT  
		Size: 48.8 MB (48769948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f904938f3912d2882bbf41795cf3ea1e25b4afbcbc49e4033a81809f94bd4d`  
		Last Modified: Mon, 14 Sep 2026 20:59:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87416294c09f2f9c9e641d8b41162a950fb46cf0b5c512bc3085b5684c8c62ce`  
		Last Modified: Mon, 14 Sep 2026 20:59:40 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ecf081e0553e43886a67193aedefd4430bfeb75fbd5b4be4ac5cf162d24304`  
		Last Modified: Mon, 14 Sep 2026 21:10:27 GMT  
		Size: 121.1 MB (121081374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27acb315092516a825880ec8336ec3a3ceb766e4ad86bea00d643179f3bbc34`  
		Last Modified: Mon, 14 Sep 2026 21:10:25 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:3c67852151ace520c30270ea9b0fdc2beb6bada0daa97dd260370c16a1184730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4389d2f1d551bab767631555f1bef0de4259b31ac6e02ce5a8b78a7b07a3abe3`

```dockerfile
```

-	Layers:
	-	`sha256:c2ec15ab4546404ac053fb5c21539de5ba84c3d5649c15af39642f2313b288bd`  
		Last Modified: Mon, 14 Sep 2026 21:10:25 GMT  
		Size: 7.1 MB (7064075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4208b600de2f66c9d6790c04813e60e0f55200592418d9ae4e7280565ff4374`  
		Last Modified: Mon, 14 Sep 2026 21:10:25 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:slim`

```console
$ docker pull znc@sha256:3c7b95361fedffc0858a23c3cbe5e535d77cdd1190a5ca3585769e56bde43ec4
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
$ docker pull znc@sha256:8eb6d8658b79ae8be0b9f7367812efd42d57138793952eb48578ab00f2edeb1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1355c03e24f8fef0bcca65db609deb7761a0eaf99bd7b0a98ba644a72ef705b3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 20:59:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 20:59:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 20:59:19 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 20:59:19 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 20:59:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 20:59:19 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 20:59:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5fc833e595efe5cde9490c8dee25eee1c7009ce797448934580107ce4bad5a`  
		Last Modified: Mon, 14 Sep 2026 20:59:32 GMT  
		Size: 48.6 MB (48621917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e19b6774bb9f912665ece131e874170b1363dd489d33939ff9a5dd85140e5`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1852e8c5172d1789ddd376786cb746a8025cab31edc7720e4f0d6638d97049b7`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:b2db07afb2f20b153586c5dc24741204a10a5540e7ba184bf923813d3b7491e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cf7c1e2dcaa30f441b067c14bdb2d309921adbc3a8fb407fdc6798fa0b3ea2`

```dockerfile
```

-	Layers:
	-	`sha256:35f7f393a46cbdde08780b81f2a7d48e0c36877e07e18759125352f480239047`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 1.7 MB (1733910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91f7b7fa9b60b4891aeb08de2d1f80ee47a03b04f4d5b14d6e384898cc1de44b`  
		Last Modified: Mon, 14 Sep 2026 20:59:30 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:c82891f5baf8265cd89e663f96ed440b42ee90e022f353bca717d1103ea7dfdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03c34a64dd8d4f2942d353a80660edc865e49f5f9197312e3994af74f89f24a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:82034fec0b1e79d44cf912a9d899e6dd43eee6e1125b112e01824d5252ede088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7f3938e490103268911b8dd156fa4df51cee33d6580c1ce7d85c3e12897c95`

```dockerfile
```

-	Layers:
	-	`sha256:26cbeb55621af8be64f7884243e037bea5c483c9c929c1ba98ec39225d32df67`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:ba76d82529a6febeaf699ec9b7422bfe74d08538d0aaa3041ca4fd07927db96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53076018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd47418382cca25cbdbc8d681e8115087dadd2f8231f0c10d59d4355818a5d29`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:38:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:38:48 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:38:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:38:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818a908b0cd6f317968a03501f9f28caaef93d8bf9f675d48a31a4ed1b82a831`  
		Last Modified: Thu, 17 Sep 2026 21:39:00 GMT  
		Size: 48.9 MB (48889041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2488d104266a32c788d27e5bb4c1119818915bb9515bbfc5143590699f2bd3`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c76f6c4ebcc957f90ada18575322c39a5c31d75a8475f2b5c39357164588b0e`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:0c5a926cf9e10d082474b2855d1eec5665e6aa721db8f15bf933ed8051ee2da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1748763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdb9cfdd615ed5350f7730875d802c4ef01afb675820d9d94dfd2dfc25bf807`

```dockerfile
```

-	Layers:
	-	`sha256:06d33a297e88e6f106c85b1baf8215e73403910123a2982c1d2ff2e5393e436b`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 1.7 MB (1734683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15a506eb43a80e0587b51a0f44bfa6496dc938f5b2bbb87573692d601a64f3f9`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json
