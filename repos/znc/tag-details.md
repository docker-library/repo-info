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
$ docker pull znc@sha256:472ffdd9e52f45e0fde51db668c513d594a17679ff4ef59973aee1f60d2450e7
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
$ docker pull znc@sha256:9d605fead6e0ebbfe70dd885d44a7e1d1a915dbf7cf1d17e64a45ee22fe6c788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185956596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05948bbb3943f830beb78986184adede1193988750414c6448039583d637b3b2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:14:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:14:48 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:14:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:14:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:14:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 20:13:43 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 20:13:43 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc773521db51767d405a8c8b79adf6a2ef0f94a22033cab3a1b2208aed1a3e0a`  
		Last Modified: Thu, 05 Nov 2026 19:14:59 GMT  
		Size: 49.1 MB (49090019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa900cb321e485693e4479cf428bcea2b4dfb3824a19f136d992a3c02a5f1b4c`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4427a3377fc128366897d672075719c3c59f60ad8ce90617dcf6cd7bbe0dc182`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c386c86f53189c0437376975190d4b78fea297d7486a9523b0b1390462cf5bf`  
		Last Modified: Thu, 05 Nov 2026 20:14:09 GMT  
		Size: 133.0 MB (133012732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f417b9d8d3f1c970d7566f4afe451ec0b61890064666f99cee1f319622fac30f`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:9ff1681adf88d3355f0ed63fd66c96626e0bfc63980bffe8a605cfdd65edc16c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c6cf1cd70787f7a736df336a2ea90ac5b0bc76199ba2c868aa83411e4f3d69`

```dockerfile
```

-	Layers:
	-	`sha256:9217a30c7f2b3e722fc355df3c588b58628cd518ea82fe876060c813784c1b22`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 7.0 MB (7004329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50c746da4c260d1cd4e2d9e4ce4e5b1631962c37457865e8a73db00e5e5ef113`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10` - linux; arm variant v6

```console
$ docker pull znc@sha256:2cec6a78987321f357317e72829a58456d69693a938d9b69ca099b6b0388703d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157515647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a60ecf55641ef587cfd3e4b37e14fa1dcc92c1404e6c6c4345ce7519ab09943`
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
# Thu, 05 Nov 2026 19:29:31 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 19:29:31 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
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
	-	`sha256:7d57fb337c0ed75b953d2cae55bc829d2f7197f7350cd17b6fa43ec1bf8c43e3`  
		Last Modified: Thu, 05 Nov 2026 19:29:47 GMT  
		Size: 106.6 MB (106603307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bd5e9f32837b123d98dcc7f08cdfd6a97b24c8f5ebca91eb3cc997d56262b2`  
		Last Modified: Thu, 05 Nov 2026 19:29:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:399f764e74d1e90c8d92cc512862661507220c3933341a380ed848322dc4aac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0308656cf14e95bc6597c34d28e3b7a82654eaeda63ab2d269d02d80dbc53113`

```dockerfile
```

-	Layers:
	-	`sha256:75d56a66f57ca4e0d8a2405da348d8aa3164d7791722734570e1e161a2857e93`  
		Last Modified: Thu, 05 Nov 2026 19:29:44 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:762f8c4bd179f0cd743d9bad81d51f1eea6a700229c13bd187dbb46fcf3809c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174192239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936e11b459cfd71e4e7fd244e62ce97c689bcc640abf09f53aab5178fb94c9d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:17 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:11:17 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:11:17 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:11:17 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:11:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:11:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 21:22:42 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 21:22:42 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74697017c375df518adde52a09b05ac62746dd6cb1cb8ec03a9cff686e6a971`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 48.9 MB (48908596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468fa38281bfc13ef63285c408618de35540e46f60e9cb7f876c819e131adc2`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741ff8248243e0b01b8dcaa13442194711cf574e9ce1515389e5ba86d681e212`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b225895d2cfb977da2661944f98a5441af3b8f719ebf1f8189a685c105b13f78`  
		Last Modified: Thu, 05 Nov 2026 21:23:05 GMT  
		Size: 121.1 MB (121092169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a04223274797010fe0fbb9878965e5b781f87d1e04f28e62349933deaaa0d0`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10` - unknown; unknown

```console
$ docker pull znc@sha256:feec34edf58bf3724f34b3b5b43019a34a087e53d0919134a6f386de067adf88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30fec455d6218a988f9e71287bb22c694eb6c3e88c05c4bab3306a0ff6f62b6e`

```dockerfile
```

-	Layers:
	-	`sha256:aa5cb5d20e04570a6b8a7d0f45bb925e0519d7abe2b1c0e5cb8bd93f51ddb41e`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 7.1 MB (7063438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e29f76982b683758806cb24bc29b217913d3e54b39a98a073b15b930e4bdb6bf`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10-slim`

```console
$ docker pull znc@sha256:faf7480de0dc4cd542b23c9c7f383c638cf5772361c38979427c8e30b25d9c39
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
$ docker pull znc@sha256:255292f784ce31572f50ffcbaf9ce4f37231e859b612fd5824e9171b2dd2c295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52943533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7904bf6f87a03524e67cc82b74ad6ded5cc4d0b91838351f325c0f9f879270`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:14:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:14:48 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:14:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:14:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:14:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc773521db51767d405a8c8b79adf6a2ef0f94a22033cab3a1b2208aed1a3e0a`  
		Last Modified: Thu, 05 Nov 2026 19:14:59 GMT  
		Size: 49.1 MB (49090019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa900cb321e485693e4479cf428bcea2b4dfb3824a19f136d992a3c02a5f1b4c`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4427a3377fc128366897d672075719c3c59f60ad8ce90617dcf6cd7bbe0dc182`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:9532fcb54c6cde849989eebc6bcaa4bb1b79438ea98b79eb2575aa3d57522f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af34f4759e61e91263ac4f02bda5724ae26673bb8c39dee23bde5151ea0fcde9`

```dockerfile
```

-	Layers:
	-	`sha256:644efb265a94194ad5d8961174679bd5e799aa44e615a326f1a53c35e653a78e`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 1.7 MB (1733270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18d56a164c4c49ca1123312735a5fa4cbed9a724a381cb3c99dd068580a4b29`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 14.0 KB (13986 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10-slim` - linux; arm variant v6

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

### `znc:1.10-slim` - unknown; unknown

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

### `znc:1.10-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:bdea6751f4d35a558270a077918b6d05eaec3dbc1b1a31673b598aa5a47a77db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53099739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37d54f26458ef2906f6ace0b6a893c0efe7be619bc1a84020307402dd9c9ca2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:17 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:11:17 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:11:17 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:11:17 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:11:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:11:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74697017c375df518adde52a09b05ac62746dd6cb1cb8ec03a9cff686e6a971`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 48.9 MB (48908596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468fa38281bfc13ef63285c408618de35540e46f60e9cb7f876c819e131adc2`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741ff8248243e0b01b8dcaa13442194711cf574e9ce1515389e5ba86d681e212`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10-slim` - unknown; unknown

```console
$ docker pull znc@sha256:d1699544f96796875c68d5756a589d12667e1dfee3fc4b2a3c8fa0db57dae6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1746828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475d749f7d6b40ba0f89e1e04a70a3b172420d9c7b1aa4b76ae2aac213c04e79`

```dockerfile
```

-	Layers:
	-	`sha256:c14e8ca520729a52881e4938c31eda5516efa6aaf119855a9ae3a6aba8e25f49`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 1.7 MB (1732750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a573624ab1a2b4358339e2e4d21a3bbce7bf5eba9b867e127acd156ff6cb72b`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 14.1 KB (14078 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10.3`

```console
$ docker pull znc@sha256:472ffdd9e52f45e0fde51db668c513d594a17679ff4ef59973aee1f60d2450e7
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
$ docker pull znc@sha256:9d605fead6e0ebbfe70dd885d44a7e1d1a915dbf7cf1d17e64a45ee22fe6c788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185956596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05948bbb3943f830beb78986184adede1193988750414c6448039583d637b3b2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:14:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:14:48 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:14:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:14:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:14:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 20:13:43 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 20:13:43 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc773521db51767d405a8c8b79adf6a2ef0f94a22033cab3a1b2208aed1a3e0a`  
		Last Modified: Thu, 05 Nov 2026 19:14:59 GMT  
		Size: 49.1 MB (49090019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa900cb321e485693e4479cf428bcea2b4dfb3824a19f136d992a3c02a5f1b4c`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4427a3377fc128366897d672075719c3c59f60ad8ce90617dcf6cd7bbe0dc182`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c386c86f53189c0437376975190d4b78fea297d7486a9523b0b1390462cf5bf`  
		Last Modified: Thu, 05 Nov 2026 20:14:09 GMT  
		Size: 133.0 MB (133012732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f417b9d8d3f1c970d7566f4afe451ec0b61890064666f99cee1f319622fac30f`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3` - unknown; unknown

```console
$ docker pull znc@sha256:9ff1681adf88d3355f0ed63fd66c96626e0bfc63980bffe8a605cfdd65edc16c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c6cf1cd70787f7a736df336a2ea90ac5b0bc76199ba2c868aa83411e4f3d69`

```dockerfile
```

-	Layers:
	-	`sha256:9217a30c7f2b3e722fc355df3c588b58628cd518ea82fe876060c813784c1b22`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 7.0 MB (7004329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50c746da4c260d1cd4e2d9e4ce4e5b1631962c37457865e8a73db00e5e5ef113`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3` - linux; arm variant v6

```console
$ docker pull znc@sha256:2cec6a78987321f357317e72829a58456d69693a938d9b69ca099b6b0388703d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157515647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a60ecf55641ef587cfd3e4b37e14fa1dcc92c1404e6c6c4345ce7519ab09943`
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
# Thu, 05 Nov 2026 19:29:31 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 19:29:31 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
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
	-	`sha256:7d57fb337c0ed75b953d2cae55bc829d2f7197f7350cd17b6fa43ec1bf8c43e3`  
		Last Modified: Thu, 05 Nov 2026 19:29:47 GMT  
		Size: 106.6 MB (106603307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bd5e9f32837b123d98dcc7f08cdfd6a97b24c8f5ebca91eb3cc997d56262b2`  
		Last Modified: Thu, 05 Nov 2026 19:29:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3` - unknown; unknown

```console
$ docker pull znc@sha256:399f764e74d1e90c8d92cc512862661507220c3933341a380ed848322dc4aac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0308656cf14e95bc6597c34d28e3b7a82654eaeda63ab2d269d02d80dbc53113`

```dockerfile
```

-	Layers:
	-	`sha256:75d56a66f57ca4e0d8a2405da348d8aa3164d7791722734570e1e161a2857e93`  
		Last Modified: Thu, 05 Nov 2026 19:29:44 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:762f8c4bd179f0cd743d9bad81d51f1eea6a700229c13bd187dbb46fcf3809c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174192239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936e11b459cfd71e4e7fd244e62ce97c689bcc640abf09f53aab5178fb94c9d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:17 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:11:17 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:11:17 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:11:17 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:11:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:11:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 21:22:42 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 21:22:42 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74697017c375df518adde52a09b05ac62746dd6cb1cb8ec03a9cff686e6a971`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 48.9 MB (48908596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468fa38281bfc13ef63285c408618de35540e46f60e9cb7f876c819e131adc2`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741ff8248243e0b01b8dcaa13442194711cf574e9ce1515389e5ba86d681e212`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b225895d2cfb977da2661944f98a5441af3b8f719ebf1f8189a685c105b13f78`  
		Last Modified: Thu, 05 Nov 2026 21:23:05 GMT  
		Size: 121.1 MB (121092169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a04223274797010fe0fbb9878965e5b781f87d1e04f28e62349933deaaa0d0`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3` - unknown; unknown

```console
$ docker pull znc@sha256:feec34edf58bf3724f34b3b5b43019a34a087e53d0919134a6f386de067adf88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30fec455d6218a988f9e71287bb22c694eb6c3e88c05c4bab3306a0ff6f62b6e`

```dockerfile
```

-	Layers:
	-	`sha256:aa5cb5d20e04570a6b8a7d0f45bb925e0519d7abe2b1c0e5cb8bd93f51ddb41e`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 7.1 MB (7063438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e29f76982b683758806cb24bc29b217913d3e54b39a98a073b15b930e4bdb6bf`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:1.10.3-slim`

```console
$ docker pull znc@sha256:faf7480de0dc4cd542b23c9c7f383c638cf5772361c38979427c8e30b25d9c39
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
$ docker pull znc@sha256:255292f784ce31572f50ffcbaf9ce4f37231e859b612fd5824e9171b2dd2c295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52943533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7904bf6f87a03524e67cc82b74ad6ded5cc4d0b91838351f325c0f9f879270`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:14:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:14:48 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:14:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:14:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:14:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc773521db51767d405a8c8b79adf6a2ef0f94a22033cab3a1b2208aed1a3e0a`  
		Last Modified: Thu, 05 Nov 2026 19:14:59 GMT  
		Size: 49.1 MB (49090019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa900cb321e485693e4479cf428bcea2b4dfb3824a19f136d992a3c02a5f1b4c`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4427a3377fc128366897d672075719c3c59f60ad8ce90617dcf6cd7bbe0dc182`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3-slim` - unknown; unknown

```console
$ docker pull znc@sha256:9532fcb54c6cde849989eebc6bcaa4bb1b79438ea98b79eb2575aa3d57522f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af34f4759e61e91263ac4f02bda5724ae26673bb8c39dee23bde5151ea0fcde9`

```dockerfile
```

-	Layers:
	-	`sha256:644efb265a94194ad5d8961174679bd5e799aa44e615a326f1a53c35e653a78e`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 1.7 MB (1733270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18d56a164c4c49ca1123312735a5fa4cbed9a724a381cb3c99dd068580a4b29`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 14.0 KB (13986 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:1.10.3-slim` - linux; arm variant v6

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

### `znc:1.10.3-slim` - unknown; unknown

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

### `znc:1.10.3-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:bdea6751f4d35a558270a077918b6d05eaec3dbc1b1a31673b598aa5a47a77db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53099739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37d54f26458ef2906f6ace0b6a893c0efe7be619bc1a84020307402dd9c9ca2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:17 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:11:17 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:11:17 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:11:17 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:11:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:11:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74697017c375df518adde52a09b05ac62746dd6cb1cb8ec03a9cff686e6a971`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 48.9 MB (48908596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468fa38281bfc13ef63285c408618de35540e46f60e9cb7f876c819e131adc2`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741ff8248243e0b01b8dcaa13442194711cf574e9ce1515389e5ba86d681e212`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:1.10.3-slim` - unknown; unknown

```console
$ docker pull znc@sha256:d1699544f96796875c68d5756a589d12667e1dfee3fc4b2a3c8fa0db57dae6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1746828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475d749f7d6b40ba0f89e1e04a70a3b172420d9c7b1aa4b76ae2aac213c04e79`

```dockerfile
```

-	Layers:
	-	`sha256:c14e8ca520729a52881e4938c31eda5516efa6aaf119855a9ae3a6aba8e25f49`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 1.7 MB (1732750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a573624ab1a2b4358339e2e4d21a3bbce7bf5eba9b867e127acd156ff6cb72b`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 14.1 KB (14078 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:latest`

```console
$ docker pull znc@sha256:472ffdd9e52f45e0fde51db668c513d594a17679ff4ef59973aee1f60d2450e7
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
$ docker pull znc@sha256:9d605fead6e0ebbfe70dd885d44a7e1d1a915dbf7cf1d17e64a45ee22fe6c788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185956596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05948bbb3943f830beb78986184adede1193988750414c6448039583d637b3b2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:14:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:14:48 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:14:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:14:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:14:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 20:13:43 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 20:13:43 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc773521db51767d405a8c8b79adf6a2ef0f94a22033cab3a1b2208aed1a3e0a`  
		Last Modified: Thu, 05 Nov 2026 19:14:59 GMT  
		Size: 49.1 MB (49090019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa900cb321e485693e4479cf428bcea2b4dfb3824a19f136d992a3c02a5f1b4c`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4427a3377fc128366897d672075719c3c59f60ad8ce90617dcf6cd7bbe0dc182`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c386c86f53189c0437376975190d4b78fea297d7486a9523b0b1390462cf5bf`  
		Last Modified: Thu, 05 Nov 2026 20:14:09 GMT  
		Size: 133.0 MB (133012732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f417b9d8d3f1c970d7566f4afe451ec0b61890064666f99cee1f319622fac30f`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:9ff1681adf88d3355f0ed63fd66c96626e0bfc63980bffe8a605cfdd65edc16c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c6cf1cd70787f7a736df336a2ea90ac5b0bc76199ba2c868aa83411e4f3d69`

```dockerfile
```

-	Layers:
	-	`sha256:9217a30c7f2b3e722fc355df3c588b58628cd518ea82fe876060c813784c1b22`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 7.0 MB (7004329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50c746da4c260d1cd4e2d9e4ce4e5b1631962c37457865e8a73db00e5e5ef113`  
		Last Modified: Thu, 05 Nov 2026 20:14:06 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:2cec6a78987321f357317e72829a58456d69693a938d9b69ca099b6b0388703d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157515647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a60ecf55641ef587cfd3e4b37e14fa1dcc92c1404e6c6c4345ce7519ab09943`
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
# Thu, 05 Nov 2026 19:29:31 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 19:29:31 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
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
	-	`sha256:7d57fb337c0ed75b953d2cae55bc829d2f7197f7350cd17b6fa43ec1bf8c43e3`  
		Last Modified: Thu, 05 Nov 2026 19:29:47 GMT  
		Size: 106.6 MB (106603307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bd5e9f32837b123d98dcc7f08cdfd6a97b24c8f5ebca91eb3cc997d56262b2`  
		Last Modified: Thu, 05 Nov 2026 19:29:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:399f764e74d1e90c8d92cc512862661507220c3933341a380ed848322dc4aac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0308656cf14e95bc6597c34d28e3b7a82654eaeda63ab2d269d02d80dbc53113`

```dockerfile
```

-	Layers:
	-	`sha256:75d56a66f57ca4e0d8a2405da348d8aa3164d7791722734570e1e161a2857e93`  
		Last Modified: Thu, 05 Nov 2026 19:29:44 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:762f8c4bd179f0cd743d9bad81d51f1eea6a700229c13bd187dbb46fcf3809c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174192239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936e11b459cfd71e4e7fd244e62ce97c689bcc640abf09f53aab5178fb94c9d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:17 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:11:17 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:11:17 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:11:17 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:11:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:11:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 21:22:42 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Thu, 05 Nov 2026 21:22:42 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74697017c375df518adde52a09b05ac62746dd6cb1cb8ec03a9cff686e6a971`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 48.9 MB (48908596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468fa38281bfc13ef63285c408618de35540e46f60e9cb7f876c819e131adc2`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741ff8248243e0b01b8dcaa13442194711cf574e9ce1515389e5ba86d681e212`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b225895d2cfb977da2661944f98a5441af3b8f719ebf1f8189a685c105b13f78`  
		Last Modified: Thu, 05 Nov 2026 21:23:05 GMT  
		Size: 121.1 MB (121092169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a04223274797010fe0fbb9878965e5b781f87d1e04f28e62349933deaaa0d0`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:feec34edf58bf3724f34b3b5b43019a34a087e53d0919134a6f386de067adf88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30fec455d6218a988f9e71287bb22c694eb6c3e88c05c4bab3306a0ff6f62b6e`

```dockerfile
```

-	Layers:
	-	`sha256:aa5cb5d20e04570a6b8a7d0f45bb925e0519d7abe2b1c0e5cb8bd93f51ddb41e`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 7.1 MB (7063438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e29f76982b683758806cb24bc29b217913d3e54b39a98a073b15b930e4bdb6bf`  
		Last Modified: Thu, 05 Nov 2026 21:23:02 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json

## `znc:slim`

```console
$ docker pull znc@sha256:faf7480de0dc4cd542b23c9c7f383c638cf5772361c38979427c8e30b25d9c39
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
$ docker pull znc@sha256:255292f784ce31572f50ffcbaf9ce4f37231e859b612fd5824e9171b2dd2c295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52943533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7904bf6f87a03524e67cc82b74ad6ded5cc4d0b91838351f325c0f9f879270`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:14:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:14:48 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:14:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:14:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:14:48 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:14:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc773521db51767d405a8c8b79adf6a2ef0f94a22033cab3a1b2208aed1a3e0a`  
		Last Modified: Thu, 05 Nov 2026 19:14:59 GMT  
		Size: 49.1 MB (49090019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa900cb321e485693e4479cf428bcea2b4dfb3824a19f136d992a3c02a5f1b4c`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4427a3377fc128366897d672075719c3c59f60ad8ce90617dcf6cd7bbe0dc182`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:9532fcb54c6cde849989eebc6bcaa4bb1b79438ea98b79eb2575aa3d57522f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1747256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af34f4759e61e91263ac4f02bda5724ae26673bb8c39dee23bde5151ea0fcde9`

```dockerfile
```

-	Layers:
	-	`sha256:644efb265a94194ad5d8961174679bd5e799aa44e615a326f1a53c35e653a78e`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 1.7 MB (1733270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18d56a164c4c49ca1123312735a5fa4cbed9a724a381cb3c99dd068580a4b29`  
		Last Modified: Thu, 05 Nov 2026 19:14:58 GMT  
		Size: 14.0 KB (13986 bytes)  
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
$ docker pull znc@sha256:bdea6751f4d35a558270a077918b6d05eaec3dbc1b1a31673b598aa5a47a77db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53099739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37d54f26458ef2906f6ace0b6a893c0efe7be619bc1a84020307402dd9c9ca2`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:17 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 05 Nov 2026 19:11:17 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 05 Nov 2026 19:11:17 GMT
ARG MAKEFLAGS=
# Thu, 05 Nov 2026 19:11:17 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 05 Nov 2026 19:11:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 05 Nov 2026 19:11:17 GMT
VOLUME [/znc-data]
# Thu, 05 Nov 2026 19:11:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74697017c375df518adde52a09b05ac62746dd6cb1cb8ec03a9cff686e6a971`  
		Last Modified: Thu, 05 Nov 2026 19:11:29 GMT  
		Size: 48.9 MB (48908596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468fa38281bfc13ef63285c408618de35540e46f60e9cb7f876c819e131adc2`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741ff8248243e0b01b8dcaa13442194711cf574e9ce1515389e5ba86d681e212`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:d1699544f96796875c68d5756a589d12667e1dfee3fc4b2a3c8fa0db57dae6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1746828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475d749f7d6b40ba0f89e1e04a70a3b172420d9c7b1aa4b76ae2aac213c04e79`

```dockerfile
```

-	Layers:
	-	`sha256:c14e8ca520729a52881e4938c31eda5516efa6aaf119855a9ae3a6aba8e25f49`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 1.7 MB (1732750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a573624ab1a2b4358339e2e4d21a3bbce7bf5eba9b867e127acd156ff6cb72b`  
		Last Modified: Thu, 05 Nov 2026 19:11:27 GMT  
		Size: 14.1 KB (14078 bytes)  
		MIME: application/vnd.in-toto+json
