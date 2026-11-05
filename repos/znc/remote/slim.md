## `znc:slim`

```console
$ docker pull znc@sha256:a872cfb3fb66d25b68c261cff492fca05bfa644912282473be3663977de3ccd3
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
$ docker pull znc@sha256:5feabfc6dbf5504d3620cd9142e5bd85b338dc7605c4e0bc5c9025e3eab8c9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52938093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16cb82ac93a3f9fb0c50002de431c292be93414dc3cd466f693807bd4856ebde`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 21 Oct 2026 21:17:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Wed, 21 Oct 2026 21:17:27 GMT
ARG MAKEFLAGS=
# Wed, 21 Oct 2026 21:17:27 GMT
ENV ZNC_VERSION=1.10.3
# Wed, 21 Oct 2026 21:17:27 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Wed, 21 Oct 2026 21:17:27 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 21:17:27 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Wed, 21 Oct 2026 21:17:27 GMT
VOLUME [/znc-data]
# Wed, 21 Oct 2026 21:17:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0809cafafa80a2d0d2efd997cb1408c3298f056df99b336eb676f8a7deb6b880`  
		Last Modified: Wed, 21 Oct 2026 21:17:38 GMT  
		Size: 49.1 MB (49084946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1e75d4030b33d26fc3e9ade64c585ec458c4587cbbc3ad7569e490146d6048`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89d10afa342187a84be33df0ac2b08cd57024bcd6f926c9dcfde1a2558cc66a`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 748.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:20e98e1642a6cf584386847c6dfc9a396b8bcc7f9aae8d1a3e74b3de463fc0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2c4486ba8ccfcfaa74e93770fcf74dfd2e3695295fea274ecff88384c126d1`

```dockerfile
```

-	Layers:
	-	`sha256:3cdb21b81da022c8eae41bd6907f8591dc1d645e6e1ad0ba05dca642e9d1adb6`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 1.7 MB (1733266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a54aec1993af9e6ea9a96c029f30cfea8b3abd0f1269c3ed52c5b594e7ca09a0`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:b61fd583d7bcc49a9e41f153afed767c77a5db3fe8a379dd08cd93880ae4142a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50912009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848ae26e72e6b435b538864d371d99c00724713549c9e4d45e44c253822c48e3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:43 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 18:53:43 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 18:53:43 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 18:53:43 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 18:53:43 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 18:53:43 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 18:53:43 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 18:53:43 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 18:53:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d116042bdc3e2c318957abbc249f079cdd5d57615425ff4710d36e69277784`  
		Last Modified: Thu, 05 Nov 2026 18:53:53 GMT  
		Size: 47.4 MB (47352835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925b4cd4137434ffa2ed3fa008af65a4fbb54c41e511f2268f35d5877c9188a1`  
		Last Modified: Thu, 05 Nov 2026 18:53:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8307a3f569bdfbf15aa6478f56af2587b15b24d8249ea856b92b43bebdf2a55`  
		Last Modified: Thu, 05 Nov 2026 18:53:51 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:3d19b7c59897d1fa70feb41938f18025d0f35d24adfaaa829bbc40aa0244cb33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253f85e84f369122a0dd93e40d57dc99d8da15d461a287e29d385ea3aa03b86d`

```dockerfile
```

-	Layers:
	-	`sha256:7f547663839157241bc19d14bd556beb26aea08a3c821b91d361b7b7ed3648bf`  
		Last Modified: Thu, 05 Nov 2026 18:53:51 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:1ca520d0d3989ecead6bfd254bada70e92e991603c056e356f4b80f97bb97df5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53099788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d00b73d189cb6bb4b31aad6e64fa482c31aa1fc6995235d4e63b4893fb17791`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:08 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 21 Oct 2026 21:18:08 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Wed, 21 Oct 2026 21:18:08 GMT
ARG MAKEFLAGS=
# Wed, 21 Oct 2026 21:18:08 GMT
ENV ZNC_VERSION=1.10.3
# Wed, 21 Oct 2026 21:18:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Wed, 21 Oct 2026 21:18:08 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 21:18:08 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Wed, 21 Oct 2026 21:18:08 GMT
VOLUME [/znc-data]
# Wed, 21 Oct 2026 21:18:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bae76200ca13c43521d0fe8c66b7e53b4de951e8aaff76a20bf646d6c1e909`  
		Last Modified: Wed, 21 Oct 2026 21:18:20 GMT  
		Size: 48.9 MB (48909372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e397214240472df6a4843adad24473751f8e63062a313c8794a9488657b4fce5`  
		Last Modified: Wed, 21 Oct 2026 21:18:18 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24801da1ef570aa3fd6f4262dfb18b3d227d4bae16f0303834523bfdfbda663`  
		Last Modified: Wed, 21 Oct 2026 21:18:18 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:e8c5cd5d4627d139aa97a7772b6ddfc5e8c1adfffbba76ed6f2ccf79fe027cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1746826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c50710ca0d9550cabaf0df4d62a3aa52cfddf7520843c4b83404a471e43c81`

```dockerfile
```

-	Layers:
	-	`sha256:0a530aca1587ed9a5ce7af01e1553f919e0c0be1c000ebbfd1720109e9a5a680`  
		Last Modified: Wed, 21 Oct 2026 21:18:18 GMT  
		Size: 1.7 MB (1732746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097e72b9335d0327cf46b0e8e759fbf7c27ae8812b21f468e876356649791e62`  
		Last Modified: Wed, 21 Oct 2026 21:18:18 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json
