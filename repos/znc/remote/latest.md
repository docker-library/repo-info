## `znc:latest`

```console
$ docker pull znc@sha256:b6c796599c357db4e934ccef1d45701ea15784d50f605e40248876cb719a0ed6
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
$ docker pull znc@sha256:8d87ee7840146f37b1ce7945cace942c26f0fb977193dddb470a697a6167f2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185952856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2b2557be52f57c09f3ba46f0dd1b7d72b062e210c100224c2f7bf570641816`
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
# Wed, 21 Oct 2026 21:39:44 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Wed, 21 Oct 2026 21:39:44 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
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
	-	`sha256:e01480d4b49a57eef0114bbe687525dd72be877f20b03b60dc87f78fb19188a3`  
		Last Modified: Wed, 21 Oct 2026 21:40:08 GMT  
		Size: 133.0 MB (133014432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d595e7fa29e969ec5ce99455d1b5b1fc8c9463947a24fae684a7c245f5a217b`  
		Last Modified: Wed, 21 Oct 2026 21:40:04 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:cfcd9845e265bcb00d6f1a1c0216561b5542a92ce5e48e8d7696368829d09a2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7013885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e63965d67feabefdf65b820b968b26dfcd1f4422d1bcb8d4c11e1c00c73328`

```dockerfile
```

-	Layers:
	-	`sha256:d38572eb0ac3c56e064329f3227bab6ffd10b2fd991fd7c7081abc3bb331459c`  
		Last Modified: Wed, 21 Oct 2026 21:40:05 GMT  
		Size: 7.0 MB (7004325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b926a0a8400b6fda1ae93844ba764bca0247d9140cb58be8a2d05dbbd053027`  
		Last Modified: Wed, 21 Oct 2026 21:40:04 GMT  
		Size: 9.6 KB (9560 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:18edc3875e84d6136561cddff7a862a9a02c4922b2fcd350b81b2de418e09158
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157518366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bc6f162bd97262eb1e59a54d785244493d495e79092afe023945fea06cdb19`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:31:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 21 Oct 2026 21:31:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Wed, 21 Oct 2026 21:31:27 GMT
ARG MAKEFLAGS=
# Wed, 21 Oct 2026 21:31:27 GMT
ENV ZNC_VERSION=1.10.3
# Wed, 21 Oct 2026 21:31:27 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Wed, 21 Oct 2026 21:31:27 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 21:31:27 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Wed, 21 Oct 2026 21:31:27 GMT
VOLUME [/znc-data]
# Wed, 21 Oct 2026 21:31:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:10:30 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Wed, 21 Oct 2026 22:10:30 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907a609abc7384522cc394cdd1fbcaaa53163e411a0cda8ecd73fb4b0cfd31d8`  
		Last Modified: Wed, 21 Oct 2026 21:31:36 GMT  
		Size: 47.4 MB (47355680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e481d295cdd87ffffab66f5952a596c5db48c696c087dfd6564efd36720495b3`  
		Last Modified: Wed, 21 Oct 2026 21:31:35 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0ce6e7b38ac188ef60b8cd01114aa13c4dc191261733e067fddc163514d8ff`  
		Last Modified: Wed, 21 Oct 2026 21:31:35 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24efb5efe5f75f7abecb4110ed9de9f775076e77507cb9f41e2ce8a99ed568d`  
		Last Modified: Wed, 21 Oct 2026 22:10:46 GMT  
		Size: 106.6 MB (106603243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2818da6f3786c7b33fc82c377f2094bce92c6f6d7353191460010d445667ef78`  
		Last Modified: Wed, 21 Oct 2026 22:10:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:83e96679dfb796b955e090c7f9a2cec2dd45e88367b7b9cf313b6e4252e02891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2385fde82a163d94a15ae32899c5b77bb356dfdf9290c63e42e9a4387e4578`

```dockerfile
```

-	Layers:
	-	`sha256:ec67963175690b1b41caa95c9b2bb440ce99cc3c9ad4bd651990812a5f5f51bc`  
		Last Modified: Wed, 21 Oct 2026 22:10:44 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:94ff4cbdce5b7c1901e48c0c948515b791d6edc0dd3667840e0f49a98b652473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174192176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d44871cd17fe82d7d341fc6d55a6a2e2be92a7bf838e28dae3b6b40ee009a9`
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
# Wed, 21 Oct 2026 22:22:47 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3 # buildkit
# Wed, 21 Oct 2026 22:22:47 GMT
COPY 30-build-modules.sh /startup-sequence/ # buildkit
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
	-	`sha256:2e31e3cddb4cf83e75a953d57210bdc8f71d3ddf61f7ac727de3aefd9c08d409`  
		Last Modified: Wed, 21 Oct 2026 22:23:09 GMT  
		Size: 121.1 MB (121092057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a86a42eef94f31d33163da149bd877e4102cdb9e476faf90338d597b3a05dc`  
		Last Modified: Wed, 21 Oct 2026 22:23:07 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:latest` - unknown; unknown

```console
$ docker pull znc@sha256:c2237430fbb5ad5eacb88151f0f3cd39f97ea5c387be97f86f0f93b2d8bc9ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7adb67ba299b80e3bd43a1bd8f5765f6ef42039c06e61af5930e300e1af4b0a`

```dockerfile
```

-	Layers:
	-	`sha256:88d6fe16af25871937a7422ee12e16993711667c56d10ac786b37f20c19b86c7`  
		Last Modified: Wed, 21 Oct 2026 22:23:07 GMT  
		Size: 7.1 MB (7063434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:831a01be5a868ee08f6b60115203e5cd370a4abf950f1c58d404e27982b88bfa`  
		Last Modified: Wed, 21 Oct 2026 22:23:07 GMT  
		Size: 9.7 KB (9652 bytes)  
		MIME: application/vnd.in-toto+json
