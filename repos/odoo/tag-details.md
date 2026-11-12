<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20261112`](#odoo180-20261112)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20261112`](#odoo190-20261112)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20261112`](#odoo200-20261112)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:d0b20aa4ec8a4d97ca096ada36275d77963d571c1cb1cceca69faf6098326c83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18` - linux; amd64

```console
$ docker pull odoo@sha256:ecc67ca4a9b9f232f36edbebe115978122bd2bf21c7cdd230ffe0299a15cab66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.3 MB (678321372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6857f699da7a5b6f9c6870354e2ab321c913f1f6e7657379c97da92047910905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:06:45 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:06:45 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:06:45 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:06:45 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:06:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:06:54 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:54 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 19:07:54 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:54 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:08:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c5f438fc1b5ac78cab98ac9e7fc9943ad08da01916615e7aa451d0903293ca`  
		Last Modified: Thu, 12 Nov 2026 19:10:14 GMT  
		Size: 238.7 MB (238717908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd40cf6b89f3d6a43305ebadb3d2e2c2489d266abe9a66c0b79434b8ef2b220d`  
		Last Modified: Thu, 12 Nov 2026 19:10:06 GMT  
		Size: 16.6 MB (16639363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be53a482f751d96f0e2a9037360a9065627cfaab2a24a72469faf4aaa41bb5e`  
		Last Modified: Thu, 12 Nov 2026 19:10:05 GMT  
		Size: 874.1 KB (874060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084398310ad67b8784a884ea4d1367df9e52878df0f0e9ac94d13d8a98be2c60`  
		Last Modified: Thu, 12 Nov 2026 19:10:17 GMT  
		Size: 392.3 MB (392294022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6a0c8b74905e2e8f290100cca701aa61dee0b96268a612b16b60ea5d3fad38`  
		Last Modified: Thu, 12 Nov 2026 19:10:06 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f606651a179a676a58deb9db0da7d1516a84cb8ab27483a825b60f1c26d4da10`  
		Last Modified: Thu, 12 Nov 2026 19:10:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542aa1a2a5980162af4c2b28202ddf675505a9b9b95978d54fc948a19def55ac`  
		Last Modified: Thu, 12 Nov 2026 19:10:07 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904c60bebc3323bd6f9e5650b13726c9caa0f89af19c1132e70f2419b40cf1ef`  
		Last Modified: Thu, 12 Nov 2026 19:10:09 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:c05f53dbf648d85c954112b209fa9b4ddc6834af5fc9d0c981212ff279492c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44008860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7134e2812728c00ff20de5298f245f7727efb1b688294d8616106abe888526`

```dockerfile
```

-	Layers:
	-	`sha256:e58deef9d4a80afdf47ffcf5180acfd7e625e8f19f549d61f901ba03175c5e5b`  
		Last Modified: Thu, 12 Nov 2026 19:10:08 GMT  
		Size: 44.0 MB (43981663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92a21591ceee089f96468fe9a66852fc0b21f7e66676b52ac63edbc5a3e01988`  
		Last Modified: Thu, 12 Nov 2026 19:10:04 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6c3f65d192918005a1eed3023c2973e20eeeb049d3531b6243b58b1608cfd88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672392068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35599fc4551adf2d252c97444da219bbd6049641832a8398c71125eb62d9364b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:07:11 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:07:11 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:07:11 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:07:11 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:07:11 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:07:17 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:08:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:08:13 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 19:08:13 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:08:13 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:09:11 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:11 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:11 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:11 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb19bc6e64756e43448084b35d4fe60619b507a4de6cfa56f1a9fb3ead61ec4`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 236.2 MB (236191937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca8d654269720de0f607d49a2f5a6b0e8c39fb0bfed7cc8051c7ccf8825d7`  
		Last Modified: Thu, 12 Nov 2026 19:10:39 GMT  
		Size: 14.2 MB (14196461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2f75f0f10f97850e2ab239525c0578fb9c52af794ccbce601761f515e53890`  
		Last Modified: Thu, 12 Nov 2026 19:10:38 GMT  
		Size: 874.0 KB (874016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc018828c06c73c2e3db0ef972e4bbaa20d8b833c40fbc953f20dd27ecc6922`  
		Last Modified: Thu, 12 Nov 2026 19:10:50 GMT  
		Size: 392.2 MB (392161598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6da187922f3f74657793cf92deed77a41fcda143747b8a63676b99b11e1e68`  
		Last Modified: Thu, 12 Nov 2026 19:10:40 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80c140640a281a5d01c7b29d47d387beab3aab0d2c8436655aad0bb69fdc45f`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c375f58a7441bbe2a31a78f66db636fc4596b42e91ee9b3a04d424400a0297`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f05a026ddb7ec1c226402ec6c65092e10c6eb2a8e86da373f3db0bfe2cac40e`  
		Last Modified: Thu, 12 Nov 2026 19:10:42 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:75da537abccdcc66c537203f522bf455e1d9ec36af32694a2d2862a0389604e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44016284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54610a598bb5e26770b05e0bfa4e855fbc7821b8080d3792df629d90402141`

```dockerfile
```

-	Layers:
	-	`sha256:cdc04a2f2db5fa454db73c60b43bdd0c6b2905344ebada8ced09885cdeab6a0b`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 44.0 MB (43988935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d919b98a0b108ca9951aa4b84e07ed198fca77b11475b666b0b9eec4733ac66b`  
		Last Modified: Thu, 12 Nov 2026 19:10:38 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:c87f244c9358fae037be40063c81d54eea1644c578124d6e60d2d9b57a4c7374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 MB (692393166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f300dc1af154408a8aab467297e7e2296622503e28b4f33832019a5b6c86a2da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:18:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:18:10 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:18:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:18:17 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:18:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:18:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:18:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:18:18 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:18:18 GMT
USER odoo
# Thu, 12 Nov 2026 19:18:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:18:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc06e115038aea7c57dca84f75a16cf88f6a0d09316c103dee83676f9ffc061`  
		Last Modified: Thu, 12 Nov 2026 19:22:42 GMT  
		Size: 393.0 MB (392972546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7a5181a837f3775499b85262ef15149ec82e1a215ef51e0162646d7a9d0eeb`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef78eb7e8055535011a0b86c9f6b3dae801a92ba85ad664f82579b175fecede`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52ccbd7fe8a1bbfb995079118382cc2cbf6180eb1ddce550944b4057304fba`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1f4efc273329b31a6bc0d834113b78066822b4857e45b3aebce7c3bf9b32fc`  
		Last Modified: Thu, 12 Nov 2026 19:22:34 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:79c0870f250914b478e766c64974e947cff7ed4cef33826254616ca322768bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44017280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc10b69f56bb09b1160a3268d1f0b59f691e4b8fa86b1d9c9534ae5f00aad84`

```dockerfile
```

-	Layers:
	-	`sha256:092e23ffbc4caa5a457c8bd1be5f3a29dc5b8dff918ce42a3db2c8cb952ab13c`  
		Last Modified: Thu, 12 Nov 2026 19:22:35 GMT  
		Size: 44.0 MB (43990027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a12974e84396edac29519a7545da1234ba3e5024869a682a30f45c35fc2ad3f`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:d0b20aa4ec8a4d97ca096ada36275d77963d571c1cb1cceca69faf6098326c83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0` - linux; amd64

```console
$ docker pull odoo@sha256:ecc67ca4a9b9f232f36edbebe115978122bd2bf21c7cdd230ffe0299a15cab66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.3 MB (678321372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6857f699da7a5b6f9c6870354e2ab321c913f1f6e7657379c97da92047910905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:06:45 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:06:45 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:06:45 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:06:45 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:06:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:06:54 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:54 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 19:07:54 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:54 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:08:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c5f438fc1b5ac78cab98ac9e7fc9943ad08da01916615e7aa451d0903293ca`  
		Last Modified: Thu, 12 Nov 2026 19:10:14 GMT  
		Size: 238.7 MB (238717908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd40cf6b89f3d6a43305ebadb3d2e2c2489d266abe9a66c0b79434b8ef2b220d`  
		Last Modified: Thu, 12 Nov 2026 19:10:06 GMT  
		Size: 16.6 MB (16639363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be53a482f751d96f0e2a9037360a9065627cfaab2a24a72469faf4aaa41bb5e`  
		Last Modified: Thu, 12 Nov 2026 19:10:05 GMT  
		Size: 874.1 KB (874060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084398310ad67b8784a884ea4d1367df9e52878df0f0e9ac94d13d8a98be2c60`  
		Last Modified: Thu, 12 Nov 2026 19:10:17 GMT  
		Size: 392.3 MB (392294022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6a0c8b74905e2e8f290100cca701aa61dee0b96268a612b16b60ea5d3fad38`  
		Last Modified: Thu, 12 Nov 2026 19:10:06 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f606651a179a676a58deb9db0da7d1516a84cb8ab27483a825b60f1c26d4da10`  
		Last Modified: Thu, 12 Nov 2026 19:10:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542aa1a2a5980162af4c2b28202ddf675505a9b9b95978d54fc948a19def55ac`  
		Last Modified: Thu, 12 Nov 2026 19:10:07 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904c60bebc3323bd6f9e5650b13726c9caa0f89af19c1132e70f2419b40cf1ef`  
		Last Modified: Thu, 12 Nov 2026 19:10:09 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:c05f53dbf648d85c954112b209fa9b4ddc6834af5fc9d0c981212ff279492c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44008860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7134e2812728c00ff20de5298f245f7727efb1b688294d8616106abe888526`

```dockerfile
```

-	Layers:
	-	`sha256:e58deef9d4a80afdf47ffcf5180acfd7e625e8f19f549d61f901ba03175c5e5b`  
		Last Modified: Thu, 12 Nov 2026 19:10:08 GMT  
		Size: 44.0 MB (43981663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92a21591ceee089f96468fe9a66852fc0b21f7e66676b52ac63edbc5a3e01988`  
		Last Modified: Thu, 12 Nov 2026 19:10:04 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6c3f65d192918005a1eed3023c2973e20eeeb049d3531b6243b58b1608cfd88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672392068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35599fc4551adf2d252c97444da219bbd6049641832a8398c71125eb62d9364b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:07:11 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:07:11 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:07:11 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:07:11 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:07:11 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:07:17 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:08:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:08:13 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 19:08:13 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:08:13 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:09:11 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:11 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:11 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:11 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb19bc6e64756e43448084b35d4fe60619b507a4de6cfa56f1a9fb3ead61ec4`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 236.2 MB (236191937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca8d654269720de0f607d49a2f5a6b0e8c39fb0bfed7cc8051c7ccf8825d7`  
		Last Modified: Thu, 12 Nov 2026 19:10:39 GMT  
		Size: 14.2 MB (14196461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2f75f0f10f97850e2ab239525c0578fb9c52af794ccbce601761f515e53890`  
		Last Modified: Thu, 12 Nov 2026 19:10:38 GMT  
		Size: 874.0 KB (874016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc018828c06c73c2e3db0ef972e4bbaa20d8b833c40fbc953f20dd27ecc6922`  
		Last Modified: Thu, 12 Nov 2026 19:10:50 GMT  
		Size: 392.2 MB (392161598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6da187922f3f74657793cf92deed77a41fcda143747b8a63676b99b11e1e68`  
		Last Modified: Thu, 12 Nov 2026 19:10:40 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80c140640a281a5d01c7b29d47d387beab3aab0d2c8436655aad0bb69fdc45f`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c375f58a7441bbe2a31a78f66db636fc4596b42e91ee9b3a04d424400a0297`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f05a026ddb7ec1c226402ec6c65092e10c6eb2a8e86da373f3db0bfe2cac40e`  
		Last Modified: Thu, 12 Nov 2026 19:10:42 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:75da537abccdcc66c537203f522bf455e1d9ec36af32694a2d2862a0389604e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44016284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54610a598bb5e26770b05e0bfa4e855fbc7821b8080d3792df629d90402141`

```dockerfile
```

-	Layers:
	-	`sha256:cdc04a2f2db5fa454db73c60b43bdd0c6b2905344ebada8ced09885cdeab6a0b`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 44.0 MB (43988935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d919b98a0b108ca9951aa4b84e07ed198fca77b11475b666b0b9eec4733ac66b`  
		Last Modified: Thu, 12 Nov 2026 19:10:38 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:c87f244c9358fae037be40063c81d54eea1644c578124d6e60d2d9b57a4c7374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 MB (692393166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f300dc1af154408a8aab467297e7e2296622503e28b4f33832019a5b6c86a2da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:18:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:18:10 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:18:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:18:17 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:18:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:18:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:18:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:18:18 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:18:18 GMT
USER odoo
# Thu, 12 Nov 2026 19:18:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:18:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc06e115038aea7c57dca84f75a16cf88f6a0d09316c103dee83676f9ffc061`  
		Last Modified: Thu, 12 Nov 2026 19:22:42 GMT  
		Size: 393.0 MB (392972546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7a5181a837f3775499b85262ef15149ec82e1a215ef51e0162646d7a9d0eeb`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef78eb7e8055535011a0b86c9f6b3dae801a92ba85ad664f82579b175fecede`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52ccbd7fe8a1bbfb995079118382cc2cbf6180eb1ddce550944b4057304fba`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1f4efc273329b31a6bc0d834113b78066822b4857e45b3aebce7c3bf9b32fc`  
		Last Modified: Thu, 12 Nov 2026 19:22:34 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:79c0870f250914b478e766c64974e947cff7ed4cef33826254616ca322768bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44017280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc10b69f56bb09b1160a3268d1f0b59f691e4b8fa86b1d9c9534ae5f00aad84`

```dockerfile
```

-	Layers:
	-	`sha256:092e23ffbc4caa5a457c8bd1be5f3a29dc5b8dff918ce42a3db2c8cb952ab13c`  
		Last Modified: Thu, 12 Nov 2026 19:22:35 GMT  
		Size: 44.0 MB (43990027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a12974e84396edac29519a7545da1234ba3e5024869a682a30f45c35fc2ad3f`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261112`

```console
$ docker pull odoo@sha256:d0b20aa4ec8a4d97ca096ada36275d77963d571c1cb1cceca69faf6098326c83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20261112` - linux; amd64

```console
$ docker pull odoo@sha256:ecc67ca4a9b9f232f36edbebe115978122bd2bf21c7cdd230ffe0299a15cab66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.3 MB (678321372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6857f699da7a5b6f9c6870354e2ab321c913f1f6e7657379c97da92047910905`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:06:45 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:06:45 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:06:45 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:06:45 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:06:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:06:54 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:54 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 19:07:54 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:54 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:08:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:47 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c5f438fc1b5ac78cab98ac9e7fc9943ad08da01916615e7aa451d0903293ca`  
		Last Modified: Thu, 12 Nov 2026 19:10:14 GMT  
		Size: 238.7 MB (238717908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd40cf6b89f3d6a43305ebadb3d2e2c2489d266abe9a66c0b79434b8ef2b220d`  
		Last Modified: Thu, 12 Nov 2026 19:10:06 GMT  
		Size: 16.6 MB (16639363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be53a482f751d96f0e2a9037360a9065627cfaab2a24a72469faf4aaa41bb5e`  
		Last Modified: Thu, 12 Nov 2026 19:10:05 GMT  
		Size: 874.1 KB (874060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084398310ad67b8784a884ea4d1367df9e52878df0f0e9ac94d13d8a98be2c60`  
		Last Modified: Thu, 12 Nov 2026 19:10:17 GMT  
		Size: 392.3 MB (392294022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6a0c8b74905e2e8f290100cca701aa61dee0b96268a612b16b60ea5d3fad38`  
		Last Modified: Thu, 12 Nov 2026 19:10:06 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f606651a179a676a58deb9db0da7d1516a84cb8ab27483a825b60f1c26d4da10`  
		Last Modified: Thu, 12 Nov 2026 19:10:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542aa1a2a5980162af4c2b28202ddf675505a9b9b95978d54fc948a19def55ac`  
		Last Modified: Thu, 12 Nov 2026 19:10:07 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904c60bebc3323bd6f9e5650b13726c9caa0f89af19c1132e70f2419b40cf1ef`  
		Last Modified: Thu, 12 Nov 2026 19:10:09 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:c05f53dbf648d85c954112b209fa9b4ddc6834af5fc9d0c981212ff279492c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44008860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7134e2812728c00ff20de5298f245f7727efb1b688294d8616106abe888526`

```dockerfile
```

-	Layers:
	-	`sha256:e58deef9d4a80afdf47ffcf5180acfd7e625e8f19f549d61f901ba03175c5e5b`  
		Last Modified: Thu, 12 Nov 2026 19:10:08 GMT  
		Size: 44.0 MB (43981663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92a21591ceee089f96468fe9a66852fc0b21f7e66676b52ac63edbc5a3e01988`  
		Last Modified: Thu, 12 Nov 2026 19:10:04 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261112` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6c3f65d192918005a1eed3023c2973e20eeeb049d3531b6243b58b1608cfd88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672392068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35599fc4551adf2d252c97444da219bbd6049641832a8398c71125eb62d9364b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:07:11 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:07:11 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:07:11 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:07:11 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:07:11 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:07:17 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:08:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:08:13 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 19:08:13 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:08:13 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:09:11 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:11 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:11 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:11 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:11 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb19bc6e64756e43448084b35d4fe60619b507a4de6cfa56f1a9fb3ead61ec4`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 236.2 MB (236191937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca8d654269720de0f607d49a2f5a6b0e8c39fb0bfed7cc8051c7ccf8825d7`  
		Last Modified: Thu, 12 Nov 2026 19:10:39 GMT  
		Size: 14.2 MB (14196461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2f75f0f10f97850e2ab239525c0578fb9c52af794ccbce601761f515e53890`  
		Last Modified: Thu, 12 Nov 2026 19:10:38 GMT  
		Size: 874.0 KB (874016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc018828c06c73c2e3db0ef972e4bbaa20d8b833c40fbc953f20dd27ecc6922`  
		Last Modified: Thu, 12 Nov 2026 19:10:50 GMT  
		Size: 392.2 MB (392161598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6da187922f3f74657793cf92deed77a41fcda143747b8a63676b99b11e1e68`  
		Last Modified: Thu, 12 Nov 2026 19:10:40 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80c140640a281a5d01c7b29d47d387beab3aab0d2c8436655aad0bb69fdc45f`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c375f58a7441bbe2a31a78f66db636fc4596b42e91ee9b3a04d424400a0297`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f05a026ddb7ec1c226402ec6c65092e10c6eb2a8e86da373f3db0bfe2cac40e`  
		Last Modified: Thu, 12 Nov 2026 19:10:42 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:75da537abccdcc66c537203f522bf455e1d9ec36af32694a2d2862a0389604e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44016284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d54610a598bb5e26770b05e0bfa4e855fbc7821b8080d3792df629d90402141`

```dockerfile
```

-	Layers:
	-	`sha256:cdc04a2f2db5fa454db73c60b43bdd0c6b2905344ebada8ced09885cdeab6a0b`  
		Last Modified: Thu, 12 Nov 2026 19:10:41 GMT  
		Size: 44.0 MB (43988935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d919b98a0b108ca9951aa4b84e07ed198fca77b11475b666b0b9eec4733ac66b`  
		Last Modified: Thu, 12 Nov 2026 19:10:38 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261112` - linux; ppc64le

```console
$ docker pull odoo@sha256:c87f244c9358fae037be40063c81d54eea1644c578124d6e60d2d9b57a4c7374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 MB (692393166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f300dc1af154408a8aab467297e7e2296622503e28b4f33832019a5b6c86a2da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=18.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Thu, 12 Nov 2026 19:18:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:18:10 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:18:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:18:17 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:18:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:18:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:18:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:18:18 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:18:18 GMT
USER odoo
# Thu, 12 Nov 2026 19:18:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:18:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc06e115038aea7c57dca84f75a16cf88f6a0d09316c103dee83676f9ffc061`  
		Last Modified: Thu, 12 Nov 2026 19:22:42 GMT  
		Size: 393.0 MB (392972546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7a5181a837f3775499b85262ef15149ec82e1a215ef51e0162646d7a9d0eeb`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef78eb7e8055535011a0b86c9f6b3dae801a92ba85ad664f82579b175fecede`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e52ccbd7fe8a1bbfb995079118382cc2cbf6180eb1ddce550944b4057304fba`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1f4efc273329b31a6bc0d834113b78066822b4857e45b3aebce7c3bf9b32fc`  
		Last Modified: Thu, 12 Nov 2026 19:22:34 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:79c0870f250914b478e766c64974e947cff7ed4cef33826254616ca322768bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44017280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc10b69f56bb09b1160a3268d1f0b59f691e4b8fa86b1d9c9534ae5f00aad84`

```dockerfile
```

-	Layers:
	-	`sha256:092e23ffbc4caa5a457c8bd1be5f3a29dc5b8dff918ce42a3db2c8cb952ab13c`  
		Last Modified: Thu, 12 Nov 2026 19:22:35 GMT  
		Size: 44.0 MB (43990027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a12974e84396edac29519a7545da1234ba3e5024869a682a30f45c35fc2ad3f`  
		Last Modified: Thu, 12 Nov 2026 19:22:32 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:49c9d2a9935f07f15e2404ce8649a84c4f0d4e70a880f7209ad27a19ab415f77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19` - linux; amd64

```console
$ docker pull odoo@sha256:512d3a362b896f5e16d9f541011288389101965e435d66d8affbb11fcc314fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.7 MB (702669490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da849cd8cad78806bf7ee43dc590f6f8a8ecdd7e46e7e9ad9439f247ed8ea6f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:06:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:06:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:06:48 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:06:48 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:06:56 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:59 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:59 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 19:07:59 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:59 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:09:03 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:04 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:04 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:04 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:04 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a431a85191c2549e29b3e3a86048a34766ca2604ca4a128d0d74e62c8911709a`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 238.7 MB (238718064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfdd4793ed31a3f5def1fa0be6749d3586e5d27eab627a2c32fa7d419e6e08b`  
		Last Modified: Thu, 12 Nov 2026 19:10:46 GMT  
		Size: 16.6 MB (16639354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d74d23c3152a07394e993ce3f0a197ec282dea358c806a9f04bcb485fa612`  
		Last Modified: Thu, 12 Nov 2026 19:10:45 GMT  
		Size: 874.1 KB (874094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3feba742525e6177079788afa7efb67a4cabbb1d087be28bbbffdbb9d72d6c9`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 416.6 MB (416642009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56692120dccdba9e8966c0b6f23a3504c7728122f9490fd839622c0605705da1`  
		Last Modified: Thu, 12 Nov 2026 19:10:46 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca884f9be91d24662e85805d7d008a82a322f2c6c2f506ec100bf40b0f14df4`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3850e2fcfb04975840effaae6cfd0d50112d4df60250bcfefb9c1a418b89f5a9`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d17f89ceb512afd1e6c95e8121b4d4afba13616602d8cfaebf57c92aae7e98`  
		Last Modified: Thu, 12 Nov 2026 19:10:49 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:7d4439256c19b8207d240a0f5e76c90cb91345f26f45163daf0183c1dbb3e608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52705406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1864f0407784d93c2d6f3427dad8e16c4fba7ea4a8c0ac3c152561415487b54f`

```dockerfile
```

-	Layers:
	-	`sha256:1782bd93f8289bf249f9afa688a39aa82c0e30f63733eee8fa57faf3330dbf5b`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 52.7 MB (52678209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a29c516b55e19331895178190263ef76877e78b30eb1f1f106830d280be1241`  
		Last Modified: Thu, 12 Nov 2026 19:10:45 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4accdd60c1d193b5b6878fa8e03e5512d176e7925d1667e2c1c5c87a73c11483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.7 MB (696747281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7155f38d05195fb83248c8314b2587f3d6433e4c20cae926f05930994eacda2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:44 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:44 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:51 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:30 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 19:07:30 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:30 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:09:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:02 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:02 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bd8018713d6b7fc17bcd0501ffc5165bf64836690487eae0288cb546ea3de7`  
		Last Modified: Thu, 12 Nov 2026 19:11:02 GMT  
		Size: 236.2 MB (236191149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24397d8fb600a1523fd5afce0211a82e691e744afaf4f7cd8dd66ff9bab20751`  
		Last Modified: Thu, 12 Nov 2026 19:10:54 GMT  
		Size: 14.2 MB (14196631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a50ff2d0fd70753729c86fc6135c86acde43da2d6f5779b418964f54ab5bc9d`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 874.0 KB (874011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afadda379472792079730024a05be7b6358babf4e474429a7ed99317360f15a0`  
		Last Modified: Thu, 12 Nov 2026 19:11:05 GMT  
		Size: 416.5 MB (416517484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4bde65a365ee01188e6fdb8c11b4639045f582298fdbf9a54a6d0266818f76`  
		Last Modified: Thu, 12 Nov 2026 19:10:55 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e46387d5f2a2599b282e4950a5a6a0c223dbb785de119eb317cb836c93febc`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc80762569ea65e2c444bcdd16efe07854b7fe6c128a38436edf7f78a1115ad`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ad39b76350ac55425204f9ff60e41509c9dcb377927b90bcd37c964e1c39e`  
		Last Modified: Thu, 12 Nov 2026 19:10:57 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:fbd07754eb74409d986e3731df0d3190ab175c075b46cc9b35ddb1a3dc2483fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52712830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c11112f59d0b23f61c239ff8817afc3aad8fb1243b055f7425e753834296267`

```dockerfile
```

-	Layers:
	-	`sha256:1938f29430b4f122b374723e4c655ac61492f5b3b429abfddc4f04be4ae6cb28`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 52.7 MB (52685481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf0cf3ac12aa285e60a1da484948b8c5b51e5364c99e356687aa82ca5e128375`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:af33c8df26f34f0480eca5e45dd8bcc61f2b8befa5f220f3c63801cd326e3381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.7 MB (716745779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31597443e0c73ac3a3f0995609209fd6cf4c8f34a11465aae4a6b7475bd2ed7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:07:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:00 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:02 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823e6f82bab33083126a57faaca9c160dddc854b954a4230d72baf7a504fb900`  
		Last Modified: Thu, 12 Nov 2026 19:14:00 GMT  
		Size: 417.3 MB (417325198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7355c6e107a9a685d3a36072bd37e02ba3399400151366652962c551f90501e5`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31019fbe9fca1c48fe02e1083e7d1a899d4787fea04ca60d27dc64636d4c58e`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c606ed75ebafdb50961e09a4a03c252252399793f6fbc6dea9e61d2a53779`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ff81666052d6ea04db7d953132f4db30acfa254e4dd9ee93762b918ff327f0`  
		Last Modified: Thu, 12 Nov 2026 19:13:52 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:5636c3de08612988e778c5a714c4d445ed88461f8b11ecce187f3b591183757b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52713826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9cfda8e1dfcec0caf66408b2be7bcccb31dc81412f09fa21248abb7a621fb7`

```dockerfile
```

-	Layers:
	-	`sha256:c590c69934983e24248a1784a3b46cfa04fc1159b2f71cc9d4af85e77e72281f`  
		Last Modified: Thu, 12 Nov 2026 19:13:53 GMT  
		Size: 52.7 MB (52686573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760cbbe9c1f588deaef158e5d4958e12b71348aa3bf02d8e8b6bccb02e75fa93`  
		Last Modified: Thu, 12 Nov 2026 19:13:50 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:49c9d2a9935f07f15e2404ce8649a84c4f0d4e70a880f7209ad27a19ab415f77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0` - linux; amd64

```console
$ docker pull odoo@sha256:512d3a362b896f5e16d9f541011288389101965e435d66d8affbb11fcc314fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.7 MB (702669490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da849cd8cad78806bf7ee43dc590f6f8a8ecdd7e46e7e9ad9439f247ed8ea6f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:06:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:06:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:06:48 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:06:48 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:06:56 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:59 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:59 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 19:07:59 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:59 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:09:03 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:04 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:04 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:04 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:04 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a431a85191c2549e29b3e3a86048a34766ca2604ca4a128d0d74e62c8911709a`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 238.7 MB (238718064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfdd4793ed31a3f5def1fa0be6749d3586e5d27eab627a2c32fa7d419e6e08b`  
		Last Modified: Thu, 12 Nov 2026 19:10:46 GMT  
		Size: 16.6 MB (16639354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d74d23c3152a07394e993ce3f0a197ec282dea358c806a9f04bcb485fa612`  
		Last Modified: Thu, 12 Nov 2026 19:10:45 GMT  
		Size: 874.1 KB (874094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3feba742525e6177079788afa7efb67a4cabbb1d087be28bbbffdbb9d72d6c9`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 416.6 MB (416642009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56692120dccdba9e8966c0b6f23a3504c7728122f9490fd839622c0605705da1`  
		Last Modified: Thu, 12 Nov 2026 19:10:46 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca884f9be91d24662e85805d7d008a82a322f2c6c2f506ec100bf40b0f14df4`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3850e2fcfb04975840effaae6cfd0d50112d4df60250bcfefb9c1a418b89f5a9`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d17f89ceb512afd1e6c95e8121b4d4afba13616602d8cfaebf57c92aae7e98`  
		Last Modified: Thu, 12 Nov 2026 19:10:49 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:7d4439256c19b8207d240a0f5e76c90cb91345f26f45163daf0183c1dbb3e608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52705406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1864f0407784d93c2d6f3427dad8e16c4fba7ea4a8c0ac3c152561415487b54f`

```dockerfile
```

-	Layers:
	-	`sha256:1782bd93f8289bf249f9afa688a39aa82c0e30f63733eee8fa57faf3330dbf5b`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 52.7 MB (52678209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a29c516b55e19331895178190263ef76877e78b30eb1f1f106830d280be1241`  
		Last Modified: Thu, 12 Nov 2026 19:10:45 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4accdd60c1d193b5b6878fa8e03e5512d176e7925d1667e2c1c5c87a73c11483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.7 MB (696747281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7155f38d05195fb83248c8314b2587f3d6433e4c20cae926f05930994eacda2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:44 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:44 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:51 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:30 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 19:07:30 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:30 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:09:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:02 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:02 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bd8018713d6b7fc17bcd0501ffc5165bf64836690487eae0288cb546ea3de7`  
		Last Modified: Thu, 12 Nov 2026 19:11:02 GMT  
		Size: 236.2 MB (236191149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24397d8fb600a1523fd5afce0211a82e691e744afaf4f7cd8dd66ff9bab20751`  
		Last Modified: Thu, 12 Nov 2026 19:10:54 GMT  
		Size: 14.2 MB (14196631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a50ff2d0fd70753729c86fc6135c86acde43da2d6f5779b418964f54ab5bc9d`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 874.0 KB (874011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afadda379472792079730024a05be7b6358babf4e474429a7ed99317360f15a0`  
		Last Modified: Thu, 12 Nov 2026 19:11:05 GMT  
		Size: 416.5 MB (416517484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4bde65a365ee01188e6fdb8c11b4639045f582298fdbf9a54a6d0266818f76`  
		Last Modified: Thu, 12 Nov 2026 19:10:55 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e46387d5f2a2599b282e4950a5a6a0c223dbb785de119eb317cb836c93febc`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc80762569ea65e2c444bcdd16efe07854b7fe6c128a38436edf7f78a1115ad`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ad39b76350ac55425204f9ff60e41509c9dcb377927b90bcd37c964e1c39e`  
		Last Modified: Thu, 12 Nov 2026 19:10:57 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:fbd07754eb74409d986e3731df0d3190ab175c075b46cc9b35ddb1a3dc2483fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52712830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c11112f59d0b23f61c239ff8817afc3aad8fb1243b055f7425e753834296267`

```dockerfile
```

-	Layers:
	-	`sha256:1938f29430b4f122b374723e4c655ac61492f5b3b429abfddc4f04be4ae6cb28`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 52.7 MB (52685481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf0cf3ac12aa285e60a1da484948b8c5b51e5364c99e356687aa82ca5e128375`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:af33c8df26f34f0480eca5e45dd8bcc61f2b8befa5f220f3c63801cd326e3381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.7 MB (716745779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31597443e0c73ac3a3f0995609209fd6cf4c8f34a11465aae4a6b7475bd2ed7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:07:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:00 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:02 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823e6f82bab33083126a57faaca9c160dddc854b954a4230d72baf7a504fb900`  
		Last Modified: Thu, 12 Nov 2026 19:14:00 GMT  
		Size: 417.3 MB (417325198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7355c6e107a9a685d3a36072bd37e02ba3399400151366652962c551f90501e5`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31019fbe9fca1c48fe02e1083e7d1a899d4787fea04ca60d27dc64636d4c58e`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c606ed75ebafdb50961e09a4a03c252252399793f6fbc6dea9e61d2a53779`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ff81666052d6ea04db7d953132f4db30acfa254e4dd9ee93762b918ff327f0`  
		Last Modified: Thu, 12 Nov 2026 19:13:52 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5636c3de08612988e778c5a714c4d445ed88461f8b11ecce187f3b591183757b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52713826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9cfda8e1dfcec0caf66408b2be7bcccb31dc81412f09fa21248abb7a621fb7`

```dockerfile
```

-	Layers:
	-	`sha256:c590c69934983e24248a1784a3b46cfa04fc1159b2f71cc9d4af85e77e72281f`  
		Last Modified: Thu, 12 Nov 2026 19:13:53 GMT  
		Size: 52.7 MB (52686573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760cbbe9c1f588deaef158e5d4958e12b71348aa3bf02d8e8b6bccb02e75fa93`  
		Last Modified: Thu, 12 Nov 2026 19:13:50 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261112`

```console
$ docker pull odoo@sha256:49c9d2a9935f07f15e2404ce8649a84c4f0d4e70a880f7209ad27a19ab415f77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20261112` - linux; amd64

```console
$ docker pull odoo@sha256:512d3a362b896f5e16d9f541011288389101965e435d66d8affbb11fcc314fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.7 MB (702669490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da849cd8cad78806bf7ee43dc590f6f8a8ecdd7e46e7e9ad9439f247ed8ea6f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:06:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:06:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:06:48 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:06:48 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:06:56 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:59 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:59 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 19:07:59 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:59 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:09:03 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:04 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:04 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:04 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:04 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:04 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a431a85191c2549e29b3e3a86048a34766ca2604ca4a128d0d74e62c8911709a`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 238.7 MB (238718064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfdd4793ed31a3f5def1fa0be6749d3586e5d27eab627a2c32fa7d419e6e08b`  
		Last Modified: Thu, 12 Nov 2026 19:10:46 GMT  
		Size: 16.6 MB (16639354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d74d23c3152a07394e993ce3f0a197ec282dea358c806a9f04bcb485fa612`  
		Last Modified: Thu, 12 Nov 2026 19:10:45 GMT  
		Size: 874.1 KB (874094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3feba742525e6177079788afa7efb67a4cabbb1d087be28bbbffdbb9d72d6c9`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 416.6 MB (416642009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56692120dccdba9e8966c0b6f23a3504c7728122f9490fd839622c0605705da1`  
		Last Modified: Thu, 12 Nov 2026 19:10:46 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca884f9be91d24662e85805d7d008a82a322f2c6c2f506ec100bf40b0f14df4`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3850e2fcfb04975840effaae6cfd0d50112d4df60250bcfefb9c1a418b89f5a9`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d17f89ceb512afd1e6c95e8121b4d4afba13616602d8cfaebf57c92aae7e98`  
		Last Modified: Thu, 12 Nov 2026 19:10:49 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:7d4439256c19b8207d240a0f5e76c90cb91345f26f45163daf0183c1dbb3e608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52705406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1864f0407784d93c2d6f3427dad8e16c4fba7ea4a8c0ac3c152561415487b54f`

```dockerfile
```

-	Layers:
	-	`sha256:1782bd93f8289bf249f9afa688a39aa82c0e30f63733eee8fa57faf3330dbf5b`  
		Last Modified: Thu, 12 Nov 2026 19:10:48 GMT  
		Size: 52.7 MB (52678209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a29c516b55e19331895178190263ef76877e78b30eb1f1f106830d280be1241`  
		Last Modified: Thu, 12 Nov 2026 19:10:45 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261112` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4accdd60c1d193b5b6878fa8e03e5512d176e7925d1667e2c1c5c87a73c11483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.7 MB (696747281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7155f38d05195fb83248c8314b2587f3d6433e4c20cae926f05930994eacda2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:44 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:44 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:51 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:30 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 19:07:30 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:30 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:09:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:02 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:02 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:02 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bd8018713d6b7fc17bcd0501ffc5165bf64836690487eae0288cb546ea3de7`  
		Last Modified: Thu, 12 Nov 2026 19:11:02 GMT  
		Size: 236.2 MB (236191149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24397d8fb600a1523fd5afce0211a82e691e744afaf4f7cd8dd66ff9bab20751`  
		Last Modified: Thu, 12 Nov 2026 19:10:54 GMT  
		Size: 14.2 MB (14196631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a50ff2d0fd70753729c86fc6135c86acde43da2d6f5779b418964f54ab5bc9d`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 874.0 KB (874011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afadda379472792079730024a05be7b6358babf4e474429a7ed99317360f15a0`  
		Last Modified: Thu, 12 Nov 2026 19:11:05 GMT  
		Size: 416.5 MB (416517484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4bde65a365ee01188e6fdb8c11b4639045f582298fdbf9a54a6d0266818f76`  
		Last Modified: Thu, 12 Nov 2026 19:10:55 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e46387d5f2a2599b282e4950a5a6a0c223dbb785de119eb317cb836c93febc`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc80762569ea65e2c444bcdd16efe07854b7fe6c128a38436edf7f78a1115ad`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ad39b76350ac55425204f9ff60e41509c9dcb377927b90bcd37c964e1c39e`  
		Last Modified: Thu, 12 Nov 2026 19:10:57 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:fbd07754eb74409d986e3731df0d3190ab175c075b46cc9b35ddb1a3dc2483fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52712830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c11112f59d0b23f61c239ff8817afc3aad8fb1243b055f7425e753834296267`

```dockerfile
```

-	Layers:
	-	`sha256:1938f29430b4f122b374723e4c655ac61492f5b3b429abfddc4f04be4ae6cb28`  
		Last Modified: Thu, 12 Nov 2026 19:10:56 GMT  
		Size: 52.7 MB (52685481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf0cf3ac12aa285e60a1da484948b8c5b51e5364c99e356687aa82ca5e128375`  
		Last Modified: Thu, 12 Nov 2026 19:10:53 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261112` - linux; ppc64le

```console
$ docker pull odoo@sha256:af33c8df26f34f0480eca5e45dd8bcc61f2b8befa5f220f3c63801cd326e3381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.7 MB (716745779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31597443e0c73ac3a3f0995609209fd6cf4c8f34a11465aae4a6b7475bd2ed7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=19.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Thu, 12 Nov 2026 19:07:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:00 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:02 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823e6f82bab33083126a57faaca9c160dddc854b954a4230d72baf7a504fb900`  
		Last Modified: Thu, 12 Nov 2026 19:14:00 GMT  
		Size: 417.3 MB (417325198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7355c6e107a9a685d3a36072bd37e02ba3399400151366652962c551f90501e5`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31019fbe9fca1c48fe02e1083e7d1a899d4787fea04ca60d27dc64636d4c58e`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c606ed75ebafdb50961e09a4a03c252252399793f6fbc6dea9e61d2a53779`  
		Last Modified: Thu, 12 Nov 2026 19:13:51 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ff81666052d6ea04db7d953132f4db30acfa254e4dd9ee93762b918ff327f0`  
		Last Modified: Thu, 12 Nov 2026 19:13:52 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:5636c3de08612988e778c5a714c4d445ed88461f8b11ecce187f3b591183757b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52713826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9cfda8e1dfcec0caf66408b2be7bcccb31dc81412f09fa21248abb7a621fb7`

```dockerfile
```

-	Layers:
	-	`sha256:c590c69934983e24248a1784a3b46cfa04fc1159b2f71cc9d4af85e77e72281f`  
		Last Modified: Thu, 12 Nov 2026 19:13:53 GMT  
		Size: 52.7 MB (52686573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760cbbe9c1f588deaef158e5d4958e12b71348aa3bf02d8e8b6bccb02e75fa93`  
		Last Modified: Thu, 12 Nov 2026 19:13:50 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:8bcae4c1f895683ee851e19dd3e7d999e81e770defe9015bc9dad8bbf10f2b0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20` - linux; amd64

```console
$ docker pull odoo@sha256:90fc2a9a0c92f3f3051372c06c4c8aa1fc4ade21f2af284d4f570cd59d15231d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.0 MB (807971356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fc3761caadd0a0afd20d66e6a007f3b0b22209640639a4e048c8d3e3a08be5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:03:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:03:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:03:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:03:35 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:03:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:03:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:40 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6222b991a33bbe59bb05ea80111b92f282eb6df6c2ff1a937fd8aaf1c03cc1`  
		Last Modified: Thu, 12 Nov 2026 19:10:44 GMT  
		Size: 238.7 MB (238718282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce91c6d06c89f57c3301244caa1692e1a7cbc8c3d6047cd9d17e803fca59f08`  
		Last Modified: Thu, 12 Nov 2026 19:10:27 GMT  
		Size: 16.6 MB (16639124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604eec7d9644059523f8b0960b33827f04b45894cd3280dffa59c5c7ddb3d264`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f647d0955aa9ddc36cd9b7743a731e8e2446eeb930cb342dc597b5f4fa2f2df`  
		Last Modified: Thu, 12 Nov 2026 19:10:51 GMT  
		Size: 521.9 MB (521943898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1606c930b8d8884084bf7ef67097f86cdb518bffee2fa10d954a087a2c796d64`  
		Last Modified: Thu, 12 Nov 2026 19:10:28 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258be72ccc1fe3c945a4c81b9718878d435dd00d12be9440009a1e0fd143e1e3`  
		Last Modified: Thu, 12 Nov 2026 19:10:29 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff19ae18b5d491ec830df654d7c5e4d31ef904a1a57171ae5d0deb2628962b1`  
		Last Modified: Thu, 12 Nov 2026 19:10:30 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd61adc65d3f437d2f71e3a06a7c3926114edb6bb884de2dcf5b06af3d582d3d`  
		Last Modified: Thu, 12 Nov 2026 19:10:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:821640ef3e1fa60f483cffd365fc9b807b71d73c8df333447877180832a043b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55413291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d0fb31c9d5179c9f52cb3a8b33191830faaba59cf9540c36c4429c7d93d4d3`

```dockerfile
```

-	Layers:
	-	`sha256:b492a97526e3a8f343e389f06e73a2e1a7b77f929e7736c251f48d3d09b7c091`  
		Last Modified: Thu, 12 Nov 2026 19:10:32 GMT  
		Size: 55.4 MB (55385800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c694748f02d96ef9750eb4b2e2219061d2f8110cd89d4b79d3592a394e683dad`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fa8d54165b4b06e5639c4953b9d5181d880e841296eb4a0695a3bcddb5d7757a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 MB (802030107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0550719a8a7f91488881b10d5698da6383a5292d7678d6e1f13069b8c8cfb960`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:38 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:09:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90b9a8991cf54289b06a10bc83ec8a9b55aa320e26e448180c43d5c3cd64123`  
		Last Modified: Thu, 12 Nov 2026 19:11:22 GMT  
		Size: 236.2 MB (236192768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a97c0a3ca78f7c76885325c4a32a65d13d5b99631f6413f3cb05b1a9f2a8299`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 14.2 MB (14196646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee817f515e08eb7e3c8582c42a4b92584d35dc071e64af29314488ab292b3af`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc63874e949cf7076c38657569ce52cd7b4f66afd6142f8ff810ac882bd54e43`  
		Last Modified: Thu, 12 Nov 2026 19:11:27 GMT  
		Size: 521.8 MB (521798604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ddcf323f79aceba788449f9081887b403cc444a0ab5975002b057c7599caff`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccec821416a93e6633307a7c840040a602c1e66c53e7258be5cd4efb4e636bf`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fe5fcda2f3ab391c216597abc14e883dccf3554c92ad2c2264a228e1b4fc95`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dee1994455040b0d99acea253efec40a8842cca485afbba63a7a96712f85ece`  
		Last Modified: Thu, 12 Nov 2026 19:11:18 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:c0cde20b1dfbcbecb51d67c470843d2dda89e294e8e229909d0b6261dd87aee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55420739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42d245979c75f73c371d804c99bca02285c35870d5947b92620d8b8dd9697e`

```dockerfile
```

-	Layers:
	-	`sha256:9c0674c6069b73dbb5994a608e14323b76ce22c659a7d461288798487afcd49a`  
		Last Modified: Thu, 12 Nov 2026 19:11:17 GMT  
		Size: 55.4 MB (55393084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdf04a7f65d806c0b46b103a4a04f9b9d81af9be9f7fab56d5d089306b2dd3e9`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:ef3ea454378c0663c97ecec64ce39ee2fd63d1cf81f27e537d99b48e6ba29aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.0 MB (822037322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0606832075a5411836e722a42d937fc30979c9ed3fb5dc5a576f826828f5fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b798ff02c57e7a07b95d68888044784f39ef55f961062cdc9fad13250440c9f`  
		Last Modified: Thu, 12 Nov 2026 19:14:17 GMT  
		Size: 522.6 MB (522616727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be9fbe72d5339aa0551afcecaf74c96c1dfa013f7733d4a986442e3adf609d`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cf9046ea975db034a0be0915cd76d38bc7f5dd22bde55503167108f058158c`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd51c13fee3dd42a0434de8d70935f00418b52583172a8d66a423addf2d412b0`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95175857e5b2a18031b0e61c708fce47a5f218440564244f370378a235d4981`  
		Last Modified: Thu, 12 Nov 2026 19:14:07 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:88159815018fe16206bb68341f585e1aa80fc7fa39d36fd695970c727dd45f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55421723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a56442775b094f0eec73a2ec9298c21f6969d73285176888c5bb3778360c97c`

```dockerfile
```

-	Layers:
	-	`sha256:6958645b76f83abc71662f7ec7564e7e044bbfba1c0b4969c0e5e5620b327718`  
		Last Modified: Thu, 12 Nov 2026 19:14:08 GMT  
		Size: 55.4 MB (55394170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e6227bff67c2143b7d2fe15d22c87a07f4fb80531af62e43a216ea459bf71fe`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:8bcae4c1f895683ee851e19dd3e7d999e81e770defe9015bc9dad8bbf10f2b0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0` - linux; amd64

```console
$ docker pull odoo@sha256:90fc2a9a0c92f3f3051372c06c4c8aa1fc4ade21f2af284d4f570cd59d15231d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.0 MB (807971356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fc3761caadd0a0afd20d66e6a007f3b0b22209640639a4e048c8d3e3a08be5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:03:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:03:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:03:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:03:35 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:03:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:03:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:40 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6222b991a33bbe59bb05ea80111b92f282eb6df6c2ff1a937fd8aaf1c03cc1`  
		Last Modified: Thu, 12 Nov 2026 19:10:44 GMT  
		Size: 238.7 MB (238718282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce91c6d06c89f57c3301244caa1692e1a7cbc8c3d6047cd9d17e803fca59f08`  
		Last Modified: Thu, 12 Nov 2026 19:10:27 GMT  
		Size: 16.6 MB (16639124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604eec7d9644059523f8b0960b33827f04b45894cd3280dffa59c5c7ddb3d264`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f647d0955aa9ddc36cd9b7743a731e8e2446eeb930cb342dc597b5f4fa2f2df`  
		Last Modified: Thu, 12 Nov 2026 19:10:51 GMT  
		Size: 521.9 MB (521943898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1606c930b8d8884084bf7ef67097f86cdb518bffee2fa10d954a087a2c796d64`  
		Last Modified: Thu, 12 Nov 2026 19:10:28 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258be72ccc1fe3c945a4c81b9718878d435dd00d12be9440009a1e0fd143e1e3`  
		Last Modified: Thu, 12 Nov 2026 19:10:29 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff19ae18b5d491ec830df654d7c5e4d31ef904a1a57171ae5d0deb2628962b1`  
		Last Modified: Thu, 12 Nov 2026 19:10:30 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd61adc65d3f437d2f71e3a06a7c3926114edb6bb884de2dcf5b06af3d582d3d`  
		Last Modified: Thu, 12 Nov 2026 19:10:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:821640ef3e1fa60f483cffd365fc9b807b71d73c8df333447877180832a043b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55413291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d0fb31c9d5179c9f52cb3a8b33191830faaba59cf9540c36c4429c7d93d4d3`

```dockerfile
```

-	Layers:
	-	`sha256:b492a97526e3a8f343e389f06e73a2e1a7b77f929e7736c251f48d3d09b7c091`  
		Last Modified: Thu, 12 Nov 2026 19:10:32 GMT  
		Size: 55.4 MB (55385800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c694748f02d96ef9750eb4b2e2219061d2f8110cd89d4b79d3592a394e683dad`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fa8d54165b4b06e5639c4953b9d5181d880e841296eb4a0695a3bcddb5d7757a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 MB (802030107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0550719a8a7f91488881b10d5698da6383a5292d7678d6e1f13069b8c8cfb960`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:38 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:09:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90b9a8991cf54289b06a10bc83ec8a9b55aa320e26e448180c43d5c3cd64123`  
		Last Modified: Thu, 12 Nov 2026 19:11:22 GMT  
		Size: 236.2 MB (236192768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a97c0a3ca78f7c76885325c4a32a65d13d5b99631f6413f3cb05b1a9f2a8299`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 14.2 MB (14196646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee817f515e08eb7e3c8582c42a4b92584d35dc071e64af29314488ab292b3af`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc63874e949cf7076c38657569ce52cd7b4f66afd6142f8ff810ac882bd54e43`  
		Last Modified: Thu, 12 Nov 2026 19:11:27 GMT  
		Size: 521.8 MB (521798604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ddcf323f79aceba788449f9081887b403cc444a0ab5975002b057c7599caff`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccec821416a93e6633307a7c840040a602c1e66c53e7258be5cd4efb4e636bf`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fe5fcda2f3ab391c216597abc14e883dccf3554c92ad2c2264a228e1b4fc95`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dee1994455040b0d99acea253efec40a8842cca485afbba63a7a96712f85ece`  
		Last Modified: Thu, 12 Nov 2026 19:11:18 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:c0cde20b1dfbcbecb51d67c470843d2dda89e294e8e229909d0b6261dd87aee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55420739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42d245979c75f73c371d804c99bca02285c35870d5947b92620d8b8dd9697e`

```dockerfile
```

-	Layers:
	-	`sha256:9c0674c6069b73dbb5994a608e14323b76ce22c659a7d461288798487afcd49a`  
		Last Modified: Thu, 12 Nov 2026 19:11:17 GMT  
		Size: 55.4 MB (55393084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdf04a7f65d806c0b46b103a4a04f9b9d81af9be9f7fab56d5d089306b2dd3e9`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:ef3ea454378c0663c97ecec64ce39ee2fd63d1cf81f27e537d99b48e6ba29aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.0 MB (822037322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0606832075a5411836e722a42d937fc30979c9ed3fb5dc5a576f826828f5fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b798ff02c57e7a07b95d68888044784f39ef55f961062cdc9fad13250440c9f`  
		Last Modified: Thu, 12 Nov 2026 19:14:17 GMT  
		Size: 522.6 MB (522616727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be9fbe72d5339aa0551afcecaf74c96c1dfa013f7733d4a986442e3adf609d`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cf9046ea975db034a0be0915cd76d38bc7f5dd22bde55503167108f058158c`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd51c13fee3dd42a0434de8d70935f00418b52583172a8d66a423addf2d412b0`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95175857e5b2a18031b0e61c708fce47a5f218440564244f370378a235d4981`  
		Last Modified: Thu, 12 Nov 2026 19:14:07 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:88159815018fe16206bb68341f585e1aa80fc7fa39d36fd695970c727dd45f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55421723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a56442775b094f0eec73a2ec9298c21f6969d73285176888c5bb3778360c97c`

```dockerfile
```

-	Layers:
	-	`sha256:6958645b76f83abc71662f7ec7564e7e044bbfba1c0b4969c0e5e5620b327718`  
		Last Modified: Thu, 12 Nov 2026 19:14:08 GMT  
		Size: 55.4 MB (55394170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e6227bff67c2143b7d2fe15d22c87a07f4fb80531af62e43a216ea459bf71fe`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261112`

```console
$ docker pull odoo@sha256:8bcae4c1f895683ee851e19dd3e7d999e81e770defe9015bc9dad8bbf10f2b0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20261112` - linux; amd64

```console
$ docker pull odoo@sha256:90fc2a9a0c92f3f3051372c06c4c8aa1fc4ade21f2af284d4f570cd59d15231d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.0 MB (807971356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fc3761caadd0a0afd20d66e6a007f3b0b22209640639a4e048c8d3e3a08be5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:03:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:03:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:03:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:03:35 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:03:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:03:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:40 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6222b991a33bbe59bb05ea80111b92f282eb6df6c2ff1a937fd8aaf1c03cc1`  
		Last Modified: Thu, 12 Nov 2026 19:10:44 GMT  
		Size: 238.7 MB (238718282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce91c6d06c89f57c3301244caa1692e1a7cbc8c3d6047cd9d17e803fca59f08`  
		Last Modified: Thu, 12 Nov 2026 19:10:27 GMT  
		Size: 16.6 MB (16639124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604eec7d9644059523f8b0960b33827f04b45894cd3280dffa59c5c7ddb3d264`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f647d0955aa9ddc36cd9b7743a731e8e2446eeb930cb342dc597b5f4fa2f2df`  
		Last Modified: Thu, 12 Nov 2026 19:10:51 GMT  
		Size: 521.9 MB (521943898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1606c930b8d8884084bf7ef67097f86cdb518bffee2fa10d954a087a2c796d64`  
		Last Modified: Thu, 12 Nov 2026 19:10:28 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258be72ccc1fe3c945a4c81b9718878d435dd00d12be9440009a1e0fd143e1e3`  
		Last Modified: Thu, 12 Nov 2026 19:10:29 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff19ae18b5d491ec830df654d7c5e4d31ef904a1a57171ae5d0deb2628962b1`  
		Last Modified: Thu, 12 Nov 2026 19:10:30 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd61adc65d3f437d2f71e3a06a7c3926114edb6bb884de2dcf5b06af3d582d3d`  
		Last Modified: Thu, 12 Nov 2026 19:10:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:821640ef3e1fa60f483cffd365fc9b807b71d73c8df333447877180832a043b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55413291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d0fb31c9d5179c9f52cb3a8b33191830faaba59cf9540c36c4429c7d93d4d3`

```dockerfile
```

-	Layers:
	-	`sha256:b492a97526e3a8f343e389f06e73a2e1a7b77f929e7736c251f48d3d09b7c091`  
		Last Modified: Thu, 12 Nov 2026 19:10:32 GMT  
		Size: 55.4 MB (55385800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c694748f02d96ef9750eb4b2e2219061d2f8110cd89d4b79d3592a394e683dad`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261112` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fa8d54165b4b06e5639c4953b9d5181d880e841296eb4a0695a3bcddb5d7757a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 MB (802030107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0550719a8a7f91488881b10d5698da6383a5292d7678d6e1f13069b8c8cfb960`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:38 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:09:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90b9a8991cf54289b06a10bc83ec8a9b55aa320e26e448180c43d5c3cd64123`  
		Last Modified: Thu, 12 Nov 2026 19:11:22 GMT  
		Size: 236.2 MB (236192768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a97c0a3ca78f7c76885325c4a32a65d13d5b99631f6413f3cb05b1a9f2a8299`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 14.2 MB (14196646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee817f515e08eb7e3c8582c42a4b92584d35dc071e64af29314488ab292b3af`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc63874e949cf7076c38657569ce52cd7b4f66afd6142f8ff810ac882bd54e43`  
		Last Modified: Thu, 12 Nov 2026 19:11:27 GMT  
		Size: 521.8 MB (521798604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ddcf323f79aceba788449f9081887b403cc444a0ab5975002b057c7599caff`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccec821416a93e6633307a7c840040a602c1e66c53e7258be5cd4efb4e636bf`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fe5fcda2f3ab391c216597abc14e883dccf3554c92ad2c2264a228e1b4fc95`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dee1994455040b0d99acea253efec40a8842cca485afbba63a7a96712f85ece`  
		Last Modified: Thu, 12 Nov 2026 19:11:18 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:c0cde20b1dfbcbecb51d67c470843d2dda89e294e8e229909d0b6261dd87aee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55420739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42d245979c75f73c371d804c99bca02285c35870d5947b92620d8b8dd9697e`

```dockerfile
```

-	Layers:
	-	`sha256:9c0674c6069b73dbb5994a608e14323b76ce22c659a7d461288798487afcd49a`  
		Last Modified: Thu, 12 Nov 2026 19:11:17 GMT  
		Size: 55.4 MB (55393084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdf04a7f65d806c0b46b103a4a04f9b9d81af9be9f7fab56d5d089306b2dd3e9`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261112` - linux; ppc64le

```console
$ docker pull odoo@sha256:ef3ea454378c0663c97ecec64ce39ee2fd63d1cf81f27e537d99b48e6ba29aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.0 MB (822037322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0606832075a5411836e722a42d937fc30979c9ed3fb5dc5a576f826828f5fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b798ff02c57e7a07b95d68888044784f39ef55f961062cdc9fad13250440c9f`  
		Last Modified: Thu, 12 Nov 2026 19:14:17 GMT  
		Size: 522.6 MB (522616727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be9fbe72d5339aa0551afcecaf74c96c1dfa013f7733d4a986442e3adf609d`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cf9046ea975db034a0be0915cd76d38bc7f5dd22bde55503167108f058158c`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd51c13fee3dd42a0434de8d70935f00418b52583172a8d66a423addf2d412b0`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95175857e5b2a18031b0e61c708fce47a5f218440564244f370378a235d4981`  
		Last Modified: Thu, 12 Nov 2026 19:14:07 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:88159815018fe16206bb68341f585e1aa80fc7fa39d36fd695970c727dd45f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55421723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a56442775b094f0eec73a2ec9298c21f6969d73285176888c5bb3778360c97c`

```dockerfile
```

-	Layers:
	-	`sha256:6958645b76f83abc71662f7ec7564e7e044bbfba1c0b4969c0e5e5620b327718`  
		Last Modified: Thu, 12 Nov 2026 19:14:08 GMT  
		Size: 55.4 MB (55394170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e6227bff67c2143b7d2fe15d22c87a07f4fb80531af62e43a216ea459bf71fe`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:8bcae4c1f895683ee851e19dd3e7d999e81e770defe9015bc9dad8bbf10f2b0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:90fc2a9a0c92f3f3051372c06c4c8aa1fc4ade21f2af284d4f570cd59d15231d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.0 MB (807971356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fc3761caadd0a0afd20d66e6a007f3b0b22209640639a4e048c8d3e3a08be5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:03:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:03:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:03:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:03:35 GMT
ARG TARGETARCH=amd64
# Thu, 12 Nov 2026 19:03:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:03:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:06:48 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:06:48 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:40 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:41 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6222b991a33bbe59bb05ea80111b92f282eb6df6c2ff1a937fd8aaf1c03cc1`  
		Last Modified: Thu, 12 Nov 2026 19:10:44 GMT  
		Size: 238.7 MB (238718282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce91c6d06c89f57c3301244caa1692e1a7cbc8c3d6047cd9d17e803fca59f08`  
		Last Modified: Thu, 12 Nov 2026 19:10:27 GMT  
		Size: 16.6 MB (16639124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604eec7d9644059523f8b0960b33827f04b45894cd3280dffa59c5c7ddb3d264`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f647d0955aa9ddc36cd9b7743a731e8e2446eeb930cb342dc597b5f4fa2f2df`  
		Last Modified: Thu, 12 Nov 2026 19:10:51 GMT  
		Size: 521.9 MB (521943898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1606c930b8d8884084bf7ef67097f86cdb518bffee2fa10d954a087a2c796d64`  
		Last Modified: Thu, 12 Nov 2026 19:10:28 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258be72ccc1fe3c945a4c81b9718878d435dd00d12be9440009a1e0fd143e1e3`  
		Last Modified: Thu, 12 Nov 2026 19:10:29 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff19ae18b5d491ec830df654d7c5e4d31ef904a1a57171ae5d0deb2628962b1`  
		Last Modified: Thu, 12 Nov 2026 19:10:30 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd61adc65d3f437d2f71e3a06a7c3926114edb6bb884de2dcf5b06af3d582d3d`  
		Last Modified: Thu, 12 Nov 2026 19:10:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:821640ef3e1fa60f483cffd365fc9b807b71d73c8df333447877180832a043b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55413291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d0fb31c9d5179c9f52cb3a8b33191830faaba59cf9540c36c4429c7d93d4d3`

```dockerfile
```

-	Layers:
	-	`sha256:b492a97526e3a8f343e389f06e73a2e1a7b77f929e7736c251f48d3d09b7c091`  
		Last Modified: Thu, 12 Nov 2026 19:10:32 GMT  
		Size: 55.4 MB (55385800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c694748f02d96ef9750eb4b2e2219061d2f8110cd89d4b79d3592a394e683dad`  
		Last Modified: Thu, 12 Nov 2026 19:10:26 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fa8d54165b4b06e5639c4953b9d5181d880e841296eb4a0695a3bcddb5d7757a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 MB (802030107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0550719a8a7f91488881b10d5698da6383a5292d7678d6e1f13069b8c8cfb960`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 19:04:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 19:04:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 19:04:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 19:04:38 GMT
ARG TARGETARCH=arm64
# Thu, 12 Nov 2026 19:04:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 19:04:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 19:07:31 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 19:07:31 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:09:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:09:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:09:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:09:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:09:06 GMT
USER odoo
# Thu, 12 Nov 2026 19:09:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:09:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90b9a8991cf54289b06a10bc83ec8a9b55aa320e26e448180c43d5c3cd64123`  
		Last Modified: Thu, 12 Nov 2026 19:11:22 GMT  
		Size: 236.2 MB (236192768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a97c0a3ca78f7c76885325c4a32a65d13d5b99631f6413f3cb05b1a9f2a8299`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 14.2 MB (14196646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee817f515e08eb7e3c8582c42a4b92584d35dc071e64af29314488ab292b3af`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 874.1 KB (874062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc63874e949cf7076c38657569ce52cd7b4f66afd6142f8ff810ac882bd54e43`  
		Last Modified: Thu, 12 Nov 2026 19:11:27 GMT  
		Size: 521.8 MB (521798604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ddcf323f79aceba788449f9081887b403cc444a0ab5975002b057c7599caff`  
		Last Modified: Thu, 12 Nov 2026 19:11:15 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccec821416a93e6633307a7c840040a602c1e66c53e7258be5cd4efb4e636bf`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fe5fcda2f3ab391c216597abc14e883dccf3554c92ad2c2264a228e1b4fc95`  
		Last Modified: Thu, 12 Nov 2026 19:11:16 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dee1994455040b0d99acea253efec40a8842cca485afbba63a7a96712f85ece`  
		Last Modified: Thu, 12 Nov 2026 19:11:18 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:c0cde20b1dfbcbecb51d67c470843d2dda89e294e8e229909d0b6261dd87aee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55420739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42d245979c75f73c371d804c99bca02285c35870d5947b92620d8b8dd9697e`

```dockerfile
```

-	Layers:
	-	`sha256:9c0674c6069b73dbb5994a608e14323b76ce22c659a7d461288798487afcd49a`  
		Last Modified: Thu, 12 Nov 2026 19:11:17 GMT  
		Size: 55.4 MB (55393084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdf04a7f65d806c0b46b103a4a04f9b9d81af9be9f7fab56d5d089306b2dd3e9`  
		Last Modified: Thu, 12 Nov 2026 19:11:14 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:ef3ea454378c0663c97ecec64ce39ee2fd63d1cf81f27e537d99b48e6ba29aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.0 MB (822037322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0606832075a5411836e722a42d937fc30979c9ed3fb5dc5a576f826828f5fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:49:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 12 Nov 2026 03:49:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 12 Nov 2026 03:49:57 GMT
ENV LANG=en_US.UTF-8
# Thu, 12 Nov 2026 03:49:57 GMT
ARG TARGETARCH=ppc64le
# Thu, 12 Nov 2026 03:49:57 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 12 Nov 2026 03:50:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:00:00 GMT
ENV ODOO_VERSION=20.0
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_RELEASE=20261112
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Thu, 12 Nov 2026 19:08:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 19:08:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 19:08:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 19:08:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 19:08:07 GMT
USER odoo
# Thu, 12 Nov 2026 19:08:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 19:08:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb6b021d18e7f1e3b7b9c4ce5e0522529b40db8ad4288cd79b05971c1ee63e3`  
		Last Modified: Thu, 12 Nov 2026 04:14:35 GMT  
		Size: 249.4 MB (249390476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1665a59b91653c20d7e00fd0b369222a2a6122a04ee1fefe06aa611e5b92d354`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 14.7 MB (14744809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c421eec59dfce99f56f105f8adf5889ab7dd0ff8491d7977de82b04247d9d0`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 876.0 KB (876032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b798ff02c57e7a07b95d68888044784f39ef55f961062cdc9fad13250440c9f`  
		Last Modified: Thu, 12 Nov 2026 19:14:17 GMT  
		Size: 522.6 MB (522616727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be9fbe72d5339aa0551afcecaf74c96c1dfa013f7733d4a986442e3adf609d`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cf9046ea975db034a0be0915cd76d38bc7f5dd22bde55503167108f058158c`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd51c13fee3dd42a0434de8d70935f00418b52583172a8d66a423addf2d412b0`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95175857e5b2a18031b0e61c708fce47a5f218440564244f370378a235d4981`  
		Last Modified: Thu, 12 Nov 2026 19:14:07 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:88159815018fe16206bb68341f585e1aa80fc7fa39d36fd695970c727dd45f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55421723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a56442775b094f0eec73a2ec9298c21f6969d73285176888c5bb3778360c97c`

```dockerfile
```

-	Layers:
	-	`sha256:6958645b76f83abc71662f7ec7564e7e044bbfba1c0b4969c0e5e5620b327718`  
		Last Modified: Thu, 12 Nov 2026 19:14:08 GMT  
		Size: 55.4 MB (55394170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e6227bff67c2143b7d2fe15d22c87a07f4fb80531af62e43a216ea459bf71fe`  
		Last Modified: Thu, 12 Nov 2026 19:14:06 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
