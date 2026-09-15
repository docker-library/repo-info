## `znc:slim`

```console
$ docker pull znc@sha256:764dfcb3624ad45c03e6fa3be1030060023b0d8e81ee1498b0075fafaf358d52
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
$ docker pull znc@sha256:855dadb8a09a1e0ae650af10b744e2ba3e20418089b3c25ab0defd811d250caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50480372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0551eaafe6d10fde01a10cb02e75636d9481178868a46e88ca232afa3b7680dc`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 14 Sep 2026 21:00:29 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 14 Sep 2026 21:00:29 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Mon, 14 Sep 2026 21:00:29 GMT
ARG MAKEFLAGS=
# Mon, 14 Sep 2026 21:00:29 GMT
ENV ZNC_VERSION=1.10.3
# Mon, 14 Sep 2026 21:00:29 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Mon, 14 Sep 2026 21:00:30 GMT
COPY entrypoint.sh / # buildkit
# Mon, 14 Sep 2026 21:00:30 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Mon, 14 Sep 2026 21:00:30 GMT
VOLUME [/znc-data]
# Mon, 14 Sep 2026 21:00:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b6492bc3b7db0e19b71f5eb637d12753b64f8d00a26b23b394fdf36141454f`  
		Last Modified: Mon, 14 Sep 2026 21:00:39 GMT  
		Size: 46.9 MB (46926856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c518102c853419c42217f89a69dfd99b40b952dda5026d45a4517bb2ac4cf4`  
		Last Modified: Mon, 14 Sep 2026 21:00:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78351850e343935a3a7cc1f1430e1c46415f418ddb3c06c09b14e323ed90004b`  
		Last Modified: Mon, 14 Sep 2026 21:00:39 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:8ec3713374ce5a78ffeaff3ae8457f15b0c8c9d8c866cb688b9c51d0cbd0c349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a1f6b7da6e9e2be0c42227b1349bd80d5cfdb8a1e6c87f8798ff232116e7dc`

```dockerfile
```

-	Layers:
	-	`sha256:bdce35ebcc1345292550405c0d18ad2370207b8b1742939174219c0cb2412789`  
		Last Modified: Mon, 14 Sep 2026 21:00:38 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:63cb6e094785abd8b56b97556540ed9fcedadba33bc0e10b1e8088a23663b594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52952728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65657aa67675c4414ef781a3ec9d636f3c406ee4e8761e07903e70bb992deb7d`
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

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:98ea124d93b0527d51d891808fab04f700d1f7e0935bedfb4cc615b349cfaa6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8fac064938990281b76a382896def8a272ea68568aa89c70b627220ffd66de`

```dockerfile
```

-	Layers:
	-	`sha256:b5441c55731aaa5c2884eb7161ae427a7cc4f66cc015d5f32898d4324c8fb23e`  
		Last Modified: Mon, 14 Sep 2026 20:59:40 GMT  
		Size: 1.7 MB (1733390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17ce9dabe757e1d45ae372e3fc2b3c9e0d556ad426a5e7cfde6e3f4f1d37fa70`  
		Last Modified: Mon, 14 Sep 2026 20:59:40 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json
